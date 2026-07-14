# Movimiento Browniano Geométrico (GBM)

*Contexto: McDonald & Siegel (1986), "The Value of Waiting to Invest". El valor del proyecto $V_t$ y el costo de inversión $F_t$ siguen movimientos brownianos geométricos.*

## La ecuación

$$\frac{dV}{V} = \alpha_v \, dt + \sigma_v \, dz_v$$

| Símbolo | Qué es | Ejemplo |
|---|---|---|
| $V_t$ | Valor presente de los flujos de caja del proyecto si se instala hoy. Un número en plata. | \$100M |
| $dV$ | Cambio del valor en un instante $dt$. En plata. | $+\$1.5M$ |
| $dV/V$ | Retorno porcentual instantáneo. Sin unidades. | $1.5/100 = +1.5\%$ |
| $\alpha_v$ | Drift: tasa esperada de crecimiento del valor, por unidad de tiempo. | 6% anual |
| $\sigma_v$ | Volatilidad: tamaño típico de los shocks porcentuales. | 20% anual |
| $dz_v$ | Incremento de un proceso de Wiener: el shock aleatorio puro. | ver abajo |

**Lectura conceptual:** en cada instante, el valor del proyecto crece en promedio a tasa $\alpha_v$ (parte determinística), pero alrededor de esa tendencia recibe sacudidas aleatorias impredecibles de tamaño $\sigma_v$ (parte estocástica).

**Por qué "geométrico":** la ecuación está escrita sobre el retorno $dV/V$, no sobre el cambio absoluto $dV$. Los movimientos son proporcionales al nivel: un proyecto de \$200M se mueve el doble de pesos que uno de \$100M, pero el mismo porcentaje. Consecuencias: $V$ nunca se vuelve negativo y los retornos porcentuales son estacionarios.

## Qué es $dz$ (la pieza central)

$z_t$ es un **proceso de Wiener** (browniano estándar). Su incremento se define operativamente como:

$$dz = \varepsilon \sqrt{dt}, \qquad \varepsilon \sim N(0,1)$$

En cada intervalo, la naturaleza "tira un dado gaussiano" $\varepsilon$ (media 0, desvío 1) y lo escala por $\sqrt{dt}$. Tres propiedades lo definen:

1. **Media cero** — $E[dz] = 0$. Las sorpresas no tienen dirección: todo lo predecible ya está en $\alpha_v$; $dz$ es lo impredecible puro.
2. **Varianza $dt$** — en un intervalo el doble de largo, la varianza de la sorpresa acumulada se duplica. El desvío estándar crece como $\sqrt{t}$ (de ahí el $\sqrt{dt}$).
3. **Incrementos independientes** — la sorpresa de este mes no dice nada sobre la del próximo. Sin memoria: no se puede "ver venir" el shock siguiente.

## Ejemplo numérico

Proyecto con $V_0 = \$100M$, $\alpha_v = 6\%$ anual, $\sigma_v = 20\%$ anual. Paso mensual: $dt = 1/12$.

- Drift mensual: $\alpha_v \, dt = 0.06 / 12 = 0.5\%$ (fijo, todos los meses).
- Sorpresa mensual: $\sigma_v \, \varepsilon \sqrt{dt} = 0.20 \times \varepsilon \times \sqrt{1/12} = 5.77\% \times \varepsilon$.

Simulación de tres meses:

| Mes | $\varepsilon$ | Sorpresa $\sigma_v \varepsilon \sqrt{dt}$ | Drift $\alpha_v dt$ | Retorno total | $V$ |
|---|---|---|---|---|---|
| 0 | — | — | — | — | \$100.0M |
| 1 | $+1.73$ | $+10.0\%$ | $+0.5\%$ | $+10.5\%$ | \$110.5M |
| 2 | $-0.87$ | $-5.0\%$ | $+0.5\%$ | $-4.5\%$ | \$105.5M |
| 3 | $+0.17$ | $+1.0\%$ | $+0.5\%$ | $+1.5\%$ | \$107.1M |

**Patrón clave:** mes a mes domina el ruido (±5–10% con signo aleatorio) sobre el drift (+0.5% constante). Pero en horizontes largos el drift se acumula linealmente ($\alpha t$) mientras el ruido solo crece como $\sqrt{t}$: la tendencia termina ganando. Por eso una acción es impredecible día a día pero sube en el largo plazo.

## Por qué $dz$ hace funcionar el paper

Si $\sigma_v = 0$: $V_t = V_0 e^{\alpha_v t}$ es perfectamente conocido, la fecha óptima de inversión se calcula de antemano y **esperar no tiene valor de opción**.

Con $\sigma_v > 0$, el futuro de $V$ es un abanico de trayectorias, y como la inversión es **irreversible** aparece una asimetría:

- Esperás y $V$ sube a \$130M → invertís y capturás la suba.
- Esperás y $V$ cae a \$70M → no invertís y no perdés nada.

Esperar permite quedarse con las trayectorias buenas y descartar las malas: el perfil de pagos de una **opción de compra** (pagar $F$ para recibir $V$). Cuanto mayor $\sigma_v$, más vale la flexibilidad y más alto el umbral óptimo de inversión. Resultado central de McDonald–Siegel: no conviene invertir apenas $V > F$ (VPN apenas positivo), sino cuando $V/F$ supera un umbral estrictamente mayor a 1 — con parámetros razonables, cerca de $V \approx 2F$.

## Notas adicionales

- La ecuación (1b) del paper es simétrica para el costo: $dF/F = \alpha_f \, dt + \sigma_f \, dz_f$. Beneficio y costo son ambos inciertos; $z_v$ y $z_f$ pueden estar correlacionados, y por homogeneidad lo que importa es el ratio $V/F$.
- El paper también agrega un salto de Poisson: con cierta probabilidad por unidad de tiempo, $V$ cae a cero de golpe (p. ej., un competidor destruye el mercado). Funciona como "tasa de muerte" del proyecto y acelera la inversión.
- La elección del GBM permite resolver el problema de parada óptima en forma cerrada, igual que en Black–Scholes.

**Resumen en una línea:** $V$ es cuánto vale el proyecto, $dV/V$ su retorno instantáneo, $\alpha_v dt$ la parte del retorno que ya sabés que va a pasar, y $\sigma_v dz$ el shock gaussiano impredecible — la fuente de toda la incertidumbre y, por lo tanto, de todo el valor de esperar.
