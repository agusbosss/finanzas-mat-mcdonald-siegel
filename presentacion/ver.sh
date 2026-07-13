#!/bin/zsh
# Renderiza páginas del PDF vigente a PNG para revisión visual.
#   ./presentacion/ver.sh 15 18      -> páginas 15 a 18
#   ./presentacion/ver.sh 15         -> solo la página 15
# Salida: scratchpad de la sesión (ruta fija abajo).
set -e
DIR="$(cd "$(dirname "$0")/.." && pwd)"
VFILE="$DIR/presentacion/VERSION"
V="$(<"$VFILE")"
PDF="$DIR/Presentación McDonald-Siegel v${V}.pdf"
OUTDIR="/private/tmp/claude-501/-Users-agustinbossart-UCEMA-Finanzas-matem-ticas/3b537fda-13e6-4e10-881b-fe55acf215b1/scratchpad/view"
SWIFT="/private/tmp/claude-501/-Users-agustinbossart-UCEMA-Finanzas-matem-ticas/3b537fda-13e6-4e10-881b-fe55acf215b1/scratchpad/pdf2png.swift"
FIRST="${1:?uso: ver.sh <primera> [ultima]}"
LAST="${2:-$FIRST}"
swift "$SWIFT" "$PDF" "$OUTDIR" "$FIRST" "$LAST" 2.8 | tail -1
echo "→ $OUTDIR/page-$(printf '%03d' "$FIRST").png"
