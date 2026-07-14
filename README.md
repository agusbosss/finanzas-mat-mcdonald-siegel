# The Value of Waiting to Invest — McDonald y Siegel (1986)

Trabajo final de **Finanzas Matemáticas** (UCEMA): presentación y estudio del paper
*"The Value of Waiting to Invest"* de Robert McDonald y Daniel Siegel (1986), sobre el
valor de la opción de esperar antes de hacer una inversión irreversible.

- **Integrantes:** Felipe Velarde · Elias Hwang · Agustín Bossart · Mariano Sanchez
- **Profesora:** Corina Averbuj

Este repositorio no guarda solo la entrega final: también dejamos las notas de estudio
y la visualización interactiva para que se vea el proceso con el que armamos y
entendimos el paper.

## Entrega principal

- **[`Presentación McDonald-Siegel - Grupo 2.pdf`](Presentación%20McDonald-Siegel%20-%20Grupo%202.pdf)** —
  la presentación completa, lista para leer o proyectar. Queda suelta en la raíz para
  acceso directo.
- **Visualización interactiva** — pieza de cierre que ilustra el resultado del paper
  (el umbral de inversión `C*` y el valor de esperar) moviendo los parámetros en vivo:
  [`visualizacion/cierre-mcdonald-siegel.html`](visualizacion/cierre-mcdonald-siegel.html).
  Publicada en GitHub Pages: <https://agusbosss.github.io/finanzas-mat-mcdonald-siegel/>

## Qué hay en cada carpeta

| Carpeta / archivo | Contenido |
|---|---|
| `presentacion/` | Fuente **LaTeX** (beamer) de la presentación: `main.tex` es el esqueleto y cada integrante escribe su parte en `partes/*.tex`. El formato vive en `tema-slutsky.sty` (documentado en `FORMATO.md`). |
| `visualizacion/` | La visualización interactiva de cierre (HTML autónomo, sin dependencias externas). |
| `notas/` | Nuestras **notas de estudio** del paper: ideas centrales, movimiento browniano, tasa de descuento y CAPM, estáticas comparativas, cómo leer las tablas de la Sección IV, el apéndice y el guion de la exposición. Es el andamiaje con el que estudiamos, no la entrega. |
| `material/` | Material de la materia: el programa de Finanzas Matemáticas. *(El PDF del paper original queda fuera del repo por copyright de terceros.)* |
| `borradores/` | Versiones de trabajo previas a la entrega: el pitch escrito (`.docx`) y la presentación en PowerPoint (`.pptx`). |
| `compilar.sh` | Script que compila la presentación (ver abajo). |
| `index.html` | Redirección a la visualización (para GitHub Pages). |

## Cómo compilar la presentación

Requiere [Tectonic](https://tectonic-typesetting.github.io/) instalado en
`~/.local/bin/tectonic`.

```sh
./compilar.sh          # recompila y sobrescribe el PDF de la versión vigente
./compilar.sh bump     # sube a la versión N+1 y borra el PDF anterior
```

El PDF resultante (`Presentación McDonald-Siegel vN.pdf`) se genera en la raíz. El
script además avisa si algún contenido se desborda del pie de una slide. *(El
entregable final se subió renombrado a `Presentación McDonald-Siegel - Grupo 2.pdf`.)*

## El paper

El PDF del paper original (*The Value of Waiting to Invest*, McDonald & Siegel, 1986)
**no se incluye** en el repositorio por ser material con copyright de terceros. Se
consigue en *The Quarterly Journal of Economics*, Vol. 101, No. 4 (nov. 1986), pp. 707–728.
