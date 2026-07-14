# Jumps in V_t: el salto a cero como vencimiento aleatorio

*McDonald & Siegel (1986), cierre de la Sección III. Relacionada: [[Nota - Ideas del paper (McDonald-Siegel 1986)]].*

## La nueva dinámica: ecuación (15)

$$\frac{dV}{V} = \alpha_v\,dt + \sigma_v\,dz_v + dq, \qquad dq = \begin{cases} -1 & \text{con prob. } \lambda\,dt \\ 0 & \text{con prob. } 1-\lambda\,dt \end{cases}$$

Al browniano se le suma un **proceso de Poisson**: en cada instante, con probabilidad $\lambda\,dt$ ocurre la catástrofe — $dV/V = -100\%$, $V$ salta a cero de golpe (un competidor lanza la versión mejor y el producto queda obsoleto). $\lambda$ = intensidad: catástrofes esperadas por año. Una vez en cero, se acabó: cero es barrera absorbente del GBM → la oportunidad muere para siempre.

## La reinterpretación clave

Cuando ocurre el salto, la opción vale cero para siempre — **es como si hubiera vencido**. Entonces "opción perpetua con muerte súbita" = "opción con vencimiento *aleatorio*". Esto conecta con la nota al pie 1 de la introducción: vencimiento *conocido* no tiene solución cerrada, pero vencimiento aleatorio-exponencial sí. Dato de Poisson: el tiempo hasta el primer evento es exponencial, densidad $\lambda e^{-\lambda T}$.

## La integral (16), pieza por pieza

$$X^* = \int_0^{\infty} \lambda e^{-\lambda T}\,X(T)\,dT$$

- $X(T)$ = la vieja ecuación (2): el valor de una oportunidad que vence en fecha *conocida* $T$.
- $\lambda e^{-\lambda T}dT$ = probabilidad de que la muerte caiga alrededor de $T$.
- La integral = promedio ponderado: "si la muerte llega en $T$, la oportunidad valía $X(T)$; promedio sobre todas las fechas de muerte".

Supuestos: el salto **no está correlacionado ni con el mercado ni con $V$** (riesgo idiosincrático → diversificable → sin premio → se promedia con probabilidades reales, sin ajuste por riesgo), y $F$ constante.

## De (16) a (17): por qué promediar sobre la muerte = subir la tasa

El paper lo hace por partes (Merton 1971); el camino transparente es vía **probabilidad de supervivencia**:

1. $X(T) = E_0[e^{-\mu t'}F(C-1)\cdot\mathbf{1}\{t' \leq T\}]$ — solo cobrás si cruzaste antes del vencimiento.
2. Metiéndolo en la integral y cambiando el orden (Fubini): $X^* = E_0\big[e^{-\mu t'}F(C-1)\int_{t'}^{\infty}\lambda e^{-\lambda T}dT\big]$ — la integral interna pregunta: ¿probabilidad de que la muerte llegue *después* de mi cruce?
3. $\int_{t'}^{\infty}\lambda e^{-\lambda T}dT = e^{-\lambda t'}$ — la **probabilidad de supervivencia** hasta $t'$. Entonces:

$$X^* = \max_C\; E_0\big[e^{-(\mu+\lambda)t'}\,F(C-1)\big] \tag{17}$$

El pago se castiga por dos exponenciales — $e^{-\mu t'}$ (valor tiempo) y $e^{-\lambda t'}$ (chance de que el premio ya no exista) — que se funden en una: **descontar con muerte = descontar a $\mu + \lambda$**. La intensidad de la catástrofe es una "prima de mortalidad" sumada a la tasa, la misma matemática actuarial de un seguro de vida. (Merton 1976: call sobre acción con posibilidad de ruina total = Black-Scholes con $r \to r+\lambda$.)

## Qué cambia de ahí en adelante: un símbolo, nada más

**Estructuralmente nada**: la (17) es exactamente el problema sin saltos con $\mu + \lambda$ en lugar de $\mu$. La fórmula del valor sigue siendo la (4); la cuadrática sigue siendo la (5)/(12) con la tasa ajustada — eso es la (20), donde además, con $F$ aleatorio, cada $r$ se reemplaza por $\delta_f$.

La verificación por equilibrio (ecs. 18-19) también sobrevive: el Itô para procesos con saltos agrega al drift de la opción un término $-\lambda\,dt$ (pérdida esperada por mortalidad: con prob. $\lambda dt$ perdés el 100%). Detalle fino: como el salto es idiosincrático, **el único riesgo tarifado sigue siendo el browniano** $\varepsilon\sigma_v dz_v$ — el requerido sigue siendo $r + \varepsilon(\bar{\alpha}_v - r)$, sin premio por salto. Igualando requerido con efectivo, $\lambda$ se absorbe del lado del descuento: consistente con la ruta de la integral.

**Con el ejemplo corrido** ($\alpha_v = 2\%$, $\sigma_v = 20\%$, $\mu = 10\%$) y $\lambda = 5\%$: $\varepsilon^2 = 2(\mu+\lambda)/\sigma^2 = 7.5 \Rightarrow \varepsilon \approx 2.74$ (antes 2.24), $C^* \approx 1.57$ (antes 1.81), $X \approx 20.8$M (antes 22.8M).

## Estáticas: la muerte apura

$\lambda \uparrow$ → **la opción vale menos y el umbral baja** (se invierte antes, con menos margen). Esperar tiene un costo nuevo: cada año de paciencia es exposición a que el premio se esfume. Frase del paper: para un $C^*$ dado, *si* el pago llega, llega en el mismo momento que sin salto — pero con menor valor presente; por eso se reoptimiza bajando el umbral.

## El contraste con Merton 1976 (nota al pie 11) — perla para la presentación

**Merton obtiene lo opuesto**: para él, la posibilidad de ruina hace a la call *más* valiosa; acá hace a la opción *menos* valiosa. La diferencia está en **qué se mantiene fijo en equilibrio**:

- *Merton*: el dividendo de la acción es exógeno y fijo. Subir $\lambda$ solo agranda el beneficio de diferir el strike (sube el análogo de $\delta_f$), $\delta_v$ quieto → la call vale más.
- *McDonald-Siegel*: el proyecto instalado debe rendir un retorno justo *incluyendo* el riesgo de muerte → si $\lambda$ sube, el proyecto vivo compensa pagando más flujo → sube implícitamente $\delta_v$ (el alquiler que el que espera no cobra). Equivale a subir $\delta_v$ y $\delta_f$ a la vez, y domina $\delta_v$ → la opción vale menos.

Moraleja metodológica (cierra la Sección III entera): las estáticas comparativas dependen de **qué absorbe el equilibrio** — los $\delta$ son las variables que mandan.
