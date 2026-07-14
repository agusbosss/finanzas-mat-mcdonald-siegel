# Formato extraído de "6.slutsky copy.pdf" (Micro I, Giolito)

Especificación medida al píxel del original (PowerPoint 4:3, Calibri + Cambria Math),
implementada en `tema-slutsky.sty`. Referencia para escribir contenido.
(El PDF original de micro ya fue borrado de la carpeta; esta spec es la fuente de verdad.)

## Paleta (muestreada del PDF)

| Color | Hex | Uso |
|---|---|---|
| `navy` | `#002060` | barras sup/inf, títulos, texto del pie |
| `gristitulo` | `#E7E6E6` | banda del título (y banda de portada) |
| `grispie` | `#D0CECE` | mitad derecha de barras sup/inf |
| `rojo` | `#EA0000` | mat.: **V** + el resultado de la slide (X, C\*, ε…); prosa: punchline. Ver §Color |
| `azul` | `#0634B6` | mat.: **F**, parámetros y expresiones (el default). Ver §Color |
| `azulclaro` | `#0070C0` | borde de cajas, énfasis azul brillante, "Caso n" |
| `celeste` | `#E0F7FF` | relleno de cajas clave |
| `magenta` | `#F21AD8` | énfasis rosa (raro; para contrastar 2 conceptos) |

## Color y resaltado (convención afinada — la regla que seguimos)

**Matemática — qué va en rojo y qué en azul:**
- **Azul (`\az`) es el default** de toda la matemática: F, los parámetros
  (α, σ, δ, ρ, λ, μ, r, k, b…) y las expresiones / lados derechos completos.
- **Rojo (`\rj`) marca solo dos cosas** (las que el público debe seguir):
  1. **V** — el activo/variable central (y su diferencial `dV/V`).
  2. **El resultado de la slide** — la incógnita que se despeja: X, C\*, ε
     (y μ cuando es el lado izquierdo que se deriva).
- **Comparar dos cosas → dos colores, cada hilo entero.** Si la slide compara
  dos objetos paralelos (típico: los MBG de V y de F), se colorea **toda** la
  ecuación de cada uno con su color, operadores incluidos:
  `\rj{\frac{dV}{V} = \alpha_v\,dt + \sigma_v\,dz_v}` (rojo) y
  `\az{\frac{dF}{F} = \alpha_f\,dt + \sigma_f\,dz_f}` (azul). Así se sigue el
  hilo de cada variable.
- **Operadores relacionales en negro.** `=`, `<`, `>`, `≥` y conectores
  (`⟹`, `→`) van en **negro**, entre operandos coloreados, para que una
  derivación no quede con signos `=` de tres colores. (Única excepción: dentro
  de un hilo V/F comparado, el operador va del color del hilo.) Los `+`/`−`
  binarios dentro de una expresión de un solo color se quedan de ese color.
  - **Gotcha de espaciado:** para operador negro Y espaciado correcto, escribir
    la condición como **un solo grupo math** con el color adentro:
    `$\rj{\varepsilon} > 1$` ✔  —  `\rj{$\varepsilon$}$>1$` ✘ (esto último pega
    el operador y se ve "ε>1").
- Asignaciones atómicas de parámetros (`σf = 0`, `β = 2/3`, `T = ∞`) se dejan
  como una unidad de un color (no son derivaciones).

**Resaltado en prosa — poco y con criterio:**
- **`\concepto`** (azul claro, negrita itálica): un **término técnico, la
  primera vez** que aparece. **Máximo 1–2 por slide.** Nunca resaltar todos
  los ítems de una lista.
- **`\resultado`** (rojo, negrita itálica): solo un **punchline / conclusión de
  verdad**. El énfasis blando ("vale más", "métodos numéricos", "versátil") va
  en `\emph` o plano.
- **Rótulos de lista → `\textbf`** (negrita negra, sin color): cuando cada ítem
  arranca con un término (lista tipo glosario / definiciones), poner el rótulo
  en negrita en vez de colorear toda la lista.
- **`\emph`** (itálica) para énfasis suave.
- **Dosis pareja entre expositores** (que uno no tenga 18 resaltados y otro 0).
  Regla de pulgar: **≤2 resaltados de color por slide**.
- Definidos en el tema pero que en la práctica **no** usamos: `\conceptonavy`,
  `\conceptomg`, `\mg`, `\nv`, `\caso` y el color magenta.

## Geometría (fracciones de la slide 4:3)

- **Franja superior** (0–2.9% de alto): navy en la mitad izquierda, `grispie` en la derecha.
- **Banda de título** (2.9%–13%): `gristitulo` a todo el ancho; título navy ~40pt PPT
  (19pt beamer), regular (no bold), alineado a la izquierda.
- **Pie** (96.4%–100%): mitad izquierda navy con texto blanco centrado (nuestro caso:
  nombre del paper, vía `\renewcommand{\pieizquierdo}{...}`); mitad derecha `grispie`
  con la materia en navy centrado. Número de página chiquito arriba del pie, a la derecha.
- **Portada** (adaptada a trabajo final, minimalista): sin banda de título arriba;
  encabezado "Universidad del CEMA / Finanzas Matemáticas — Trabajo Final"; banda gris
  con **solo el nombre del paper en inglés** y una línea chica "McDonald y Siegel (1986)";
  abajo dos columnas: Integrantes (izq) y Profesora + Fecha de presentación (der).
  Campos en `main.tex`: `\title`, `\subtitle` (autores y año), `\integrantes{...\\...}`,
  `\profesora{}`, `\date{}`.

## Tipografía

- Original: Calibri (todo) + Cambria Math (ecuaciones).
- Réplica: **Carlito** (clon métrico de Calibri) + **STIX Two Math** (muy cercana a
  Cambria Math). Texto alineado a la izquierda (sin justificar), negro.
- Tamaños: la equivalencia literal del PPT quedaba grande; se usa una escala ~1.5pt
  menor y **no se vuelve a subir**: título de frame 17.5pt, cuerpo 11pt, sub-bullets
  10pt, display `ec` 13.5pt (`ecmed` 11.5), cajas 13.5pt, pie 6.5pt.

## Patrones de contenido del original

- **2–4 bullets por slide**, wordy (2–3 líneas c/u), con mucha separación vertical.
  Bullets negros redondos "•" en ambos niveles.
- **Matemática coloreada semánticamente** (nuestra regla afinada está en §"Color y
  resaltado"): el default es azul; el rojo marca **V** y el **resultado** de la slide;
  los operadores relacionales van en negro. Inline math también coloreada.
- **Ecuaciones display**: centradas, notablemente más grandes que el texto, sin numerar.
- **Énfasis en prosa**: *negrita itálica coloreada* — azul brillante para el concepto
  que se está definiendo, rojo para nombres/resultados clave ("Ecuación de Slutsky"),
  magenta para el concepto "gemelo" (función de gasto), navy oscuro variante.
- **Cajas clave**: ecuación o takeaway enmarcado, fondo celeste, borde azul, centrada.
- **"Caso n:"**: etiqueta azul subrayada.
- **Derivaciones repartidas**: un paso conceptual por slide, repitiendo el mismo
  título de frame en slides consecutivas ("Ejemplo: ..." ×N).
- **Figuras**: centradas, con anotaciones de ecuaciones coloreadas al costado;
  curvas en colores vivos (azul/verde/magenta).
- **Sumario**: lista numerada 1..4, sin sección de "outline" automática.
- **Cierre**: slide "Bibliografía:" (subrayado) + una línea de referencias.
- **Tablas** (agregado nuestro, el original casi no usa): 8pt/10.5, `arraystretch` 1.35,
  header con `\rowcolor{gristitulo}` y celdas `\multicolumn{1}{l}` en navy bold (las
  celdas `l` evitan desalineación vertical con columnas `p`), filas separadas con
  `\hline` en color `grispie`, columna 1 en navy bold. Ver slide "Supuestos del modelo".
- **Tablas del paper** (reglas de la parte de Agustín, aplican a todas): título de la
  slide sin "Tabla N:" (dice qué muestra la tabla); esquina de la cabecera con cada
  dimensión apilada en su línea como el paper (`δv` / `ρvf` / variable de fila), sin
  barras "X \\ Y"; cada bloque/tabla lleva su propio `\pietabla{}` ("*Nota.* ...") con
  qué mide + parámetros fijos + método; nunca describir en el pie lo que se ve
  (negritas, colores) — eso lo comenta el orador.
- **Slides como apoyo visual**: frases sueltas (bullets solo para enumerar), sin
  frases de relleno (si solo presenta el tema, va al título), y el guion oral del
  orador vive en el archivo de notas, no en la slide.

## Macros disponibles (tema-slutsky.sty)

```latex
\rj{...}  \az{...}  \mg{...}  \nv{...}     % color en math o texto
\concepto{...}      % azul brillante bold italic (concepto que se define)
\conceptonavy{...}  % variante navy
\resultado{...}     % rojo bold italic (nombre/resultado clave)
\conceptomg{...}    % magenta bold italic
\caso{Caso 1:}      % azul subrayado

\begin{ec} ... \end{ec}       % ecuación display grande (como el original)
\begin{ecmed} ... \end{ecmed} % display más chica para pasos intermedios
\cajaec{V^* = \az{...}}       % ecuación clave en caja celeste (ya en modo math)
\begin{cajatexto} ... \end{cajatexto}  % caja celeste de texto ancho completo
```

## Reglas de redacción

- **Los títulos de frame nunca dicen "Sección N"** — la referencia a la sección del
  paper va en un comentario LaTeX arriba del frame, como guía interna.
- **Nunca escribir de dónde sale el paper** (journal, volumen, páginas): ni en la
  portada ni en ninguna slide. Para referenciarlo: autores y año, nada más.
- **Títulos que describen el contenido, no etiquetas internas.** El título dice qué
  ve el público, no la sección/jerga del paper. (Ej.: "La sección: qué se deriva" ✘ →
  "El desarrollo en tres pasos" ✔.)
- **Consistencia numérica.** Los números en slides de cierre/resumen tienen que
  coincidir con los de las tablas mostradas antes (ej.: C\* = 1.86 del caso base, no un
  1.81 sacado de otras notas). Verificar contra las tablas propias.
- **Sumario / índice**: mapea el arco completo, ~un punto por bloque de orador.
- **Slide de conclusiones — de lo conceptual a lo punchy, terminando fuerte:**
  (1) la tesis en una línea; (2) el aporte / la regla técnica que conecta con lo
  mostrado; (3) la cifra o cita como **clímax** (no como apertura); (4) el "para
  llevar" en una sola frase, y que sea **lo último**.

## Estructura por integrante

El deck está dividido en 4 partes con slides divisorias `\divisoria{Nombre}`
(**temporales**, se borran en la versión final):

1. **Felipe Velarde** — presentación del paper y supuestos a fondo (el CAPM se
   explica acá, no en la parte de tasa de descuento).
2. **Elias Hwang** — desarrollo hasta el modelo general y comentarios.
3. **Mariano Sanchez** — tasa de descuento y saltos en Vt; después, papers posteriores.
4. **Agustín Bossart** — ejemplos con parámetros, ejemplo con monopolio, conclusiones.

## Coordinación entre partes (deck grupal)

- **Solapamientos e inconsistencias.** Con el deck repartido entre varias personas
  aparecen temas cubiertos dos veces y símbolos con dos nombres/formas (ej.: un mismo
  parámetro con sombrero en una parte y barra en otra). Se llevan anotados en
  `NOTAS-CONFLICTOS.md` (raíz del repo) como "puntos a revisar", para charlarlos con el
  equipo antes de cerrar; se sacan los que se resuelven. Se puede exportar a PDF con
  tectonic para compartir el resumen.
- **Notación única.** Un mismo objeto → un solo símbolo y un solo nombre en todo el
  deck. Si el paper usa dos formas equivalentes, dejar explícito que son la misma.

## Estructura de archivos

- `presentacion/main.tex` — esqueleto: preámbulo, portada y cuatro `\input{partes/...}`.
  Casi nunca se toca.
- `presentacion/partes/1-felipe.tex … 4-agustin.tex` — el contenido de cada integrante.
  **Editar acá.** Cada parte es independiente; cambiar una no afecta a las demás.
- `presentacion/tema-slutsky.sty` — el tema (colores, layout, macros).

## Workflow

```bash
./compilar.sh        # recompila la versión vigente: "Presentación McDonald-Siegel vN.pdf"
./compilar.sh bump   # sube a vN+1, compila y borra el PDF anterior (un solo PDF siempre)
./presentacion/ver.sh 15 18   # renderiza páginas 15–18 a PNG (revisión visual)
```
El número de versión vive en `presentacion/VERSION` y aparece en el nombre del
archivo para que el equipo sepa si tiene una versión vieja. Motor: tectonic
(`~/.local/bin/tectonic`), sin instalación de TeX completa.

`compilar.sh` reporta automáticamente los **desbordes verticales** (contenido que
se pasa del pie de la slide) con su línea, leyendo el log del compilador — así no
hace falta renderizar todo a ojo para detectar problemas de layout. Solo se
renderiza a PNG lo que el reporte marca o lo que cambió estructuralmente.
