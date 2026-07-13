#!/bin/zsh
# Compila la presentación en un único PDF versionado en la raíz:
#   "Presentación McDonald-Siegel vN.pdf"
#
#   ./compilar.sh        recompila la versión actual (sobreescribe el vN vigente)
#   ./compilar.sh bump    sube a la versión N+1, compila y borra el PDF vN anterior
#
# Además reporta los desbordes de layout (contenido que se pasa del borde)
# con archivo y línea, para no tener que revisarlos a ojo.
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
SRC="$DIR/presentacion/main.tex"
VFILE="$DIR/presentacion/VERSION"
LOG="$DIR/presentacion/.build.log"
[[ -f "$VFILE" ]] || echo 1 > "$VFILE"
V="$(<"$VFILE")"

OLD=""
if [[ "$1" == "bump" ]]; then
  OLD="$V"
  V=$((V + 1))
  echo "$V" > "$VFILE"
fi

OUT="$DIR/Presentación McDonald-Siegel v${V}.pdf"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

# compila capturando el log completo (no aborta si hay warnings)
set +e
"$HOME/.local/bin/tectonic" --outdir "$TMP" "$SRC" >"$LOG" 2>&1
STATUS=$?
set -e

if [[ $STATUS -ne 0 ]]; then
  echo "✗ ERROR de compilación:"
  grep -E "^error:" "$LOG" | head -10
  exit 1
fi

mv -f "$TMP/main.pdf" "$OUT"
[[ -n "$OLD" ]] && rm -f "$DIR/Presentación McDonald-Siegel v${OLD}.pdf"
echo "OK → $OUT"

# Reporte de desbordes verticales (contenido que se pasa del pie de la slide).
# Solo se reporta vbox: es el que rompe el diseño. Los hbox de tablas centradas
# y texto ragged-right son benignos (se reparten en el margen), no se reportan.
OVER="$(grep -E "Overfull \\\\vbox" "$LOG" | grep -oE "at line [0-9]+.*too high|:[0-9]+.*too high" | sort -u)"
if [[ -n "$OVER" ]]; then
  echo "⚠ DESBORDE: contenido pasa el pie de la slide (revisar y renderizar):"
  echo "$OVER" | sed 's/^/   /'
fi
exit 0
