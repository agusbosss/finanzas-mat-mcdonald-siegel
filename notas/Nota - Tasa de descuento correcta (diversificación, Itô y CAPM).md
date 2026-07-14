# La tasa de descuento correcta: diversificación, Itô y CAPM

*McDonald & Siegel (1986), Sección III, "Computing the Correct Discount Rate". Relacionada: [[Nota - Ideas del paper (McDonald-Siegel 1986)]].*

## El problema

Toda la valuación usó una tasa de descuento $\mu$ "dada por el momento". Pero la opción es un activo riesgoso: ¿cuánto castigo por riesgo lleva $\mu$? El camino tradicional — postular una función de utilidad del dueño (Venezia-Brenner: un único inversor averso que se come todo el riesgo) — da respuestas que dependen de preferencias arbitrarias e inmedibles.

## La jugada: cambiar "¿cuán averso es el dueño?" por "¿quién es el dueño?"

Supuesto del paper: la opción pertenece a **inversores bien diversificados** (el caso de una corporación pública). Por teoría de portafolios, el riesgo se parte en dos componentes de naturaleza distinta:

- **Idiosincrático (diversificable)**: el ruido propio del proyecto — la geología de esta mina, si el producto gusta, un juicio. En un portafolio grande estos ruidos se cancelan por ley de grandes números → el accionista diversificado **no exige compensación** → no va en la tasa de descuento.
- **Sistemático (no diversificable)**: la parte que se mueve con el mercado entero (recesión, tasas, ciclo). No se cancela agregando posiciones: golpea a todo el portafolio a la vez → **es lo único que se paga** con retorno extra.

De ahí la frase del texto: los inversores "*need only be compensated for the systematic component of the risk*".

**Qué se gana:** (1) desaparece la función de utilidad — la compensación por riesgo sale de un precio de equilibrio (CAPM: $\bar{\alpha}_i - r = \phi\,\rho_{im}\,\sigma_i$); (2) el modelo aplica a firmas reales con accionistas diversificados; (3) $\mu$ se puede calcular en vez de asumir.

## La distinción sutil (posible pregunta)

*"Si el riesgo idiosincrático no se paga, ¿no afecta el valor de la opción?"* **Falso.** La incertidumbre entra por dos puertas distintas:

- La varianza $\sigma^2$ que alimenta a $\varepsilon$ es la varianza **total** del ratio — idiosincrática y sistemática por igual. La asimetría (capturás la cola buena, protegido de la mala) funciona con cualquier tipo de ruido.
- La aversión al riesgo entra **solo por $\mu$** — y ahí solo cuenta la parte sistemática.

Ejemplo: un proyecto biotech con riesgo 100% idiosincrático (¿funciona la molécula?) se descuenta casi a la tasa libre de riesgo, *pero su opción de esperar vale muchísimo* porque $\sigma^2$ es enorme. Ambas cosas a la vez.

## Qué es el CAPM (ecuación (9)): el tarifario del riesgo

CAPM = *Capital Asset Pricing Model* (Sharpe 1964). Responde: **¿cuánto retorno "merece" un activo, dado su riesgo?** — el "retorno requerido" $\bar{\alpha}_i$, un precio de equilibrio. Dos ladrillos: la tasa libre de riesgo $r$ (el precio del tiempo) + el premio por riesgo. Y la clave: **no todo el riesgo se paga** — solo la parte sincronizada con el mercado:

$$\bar{\alpha}_i - r = \phi \times \underbrace{\rho_{im}\,\sigma_i}_{\text{riesgo que importa}}$$

$\sigma_i$ = cuánto tiembla en total; $\rho_{im}$ = qué fracción del temblor va acompasada con el mercado; $\phi$ = precio de mercado del riesgo (tarifa única de la economía por unidad de riesgo sistemático).

Ejemplos (con $r = 5\%$, $\phi = 0.4$): acción típica ($\sigma$ 20%, $\rho$ 0.6) → requerido 9.8%. Biotech ($\sigma$ 60%, $\rho \approx 0$) → requerido ≈ 5%, ¡la tasa libre, pese al temblor enorme! Activo refugio ($\rho < 0$) → requerido *menor* que $r$: es un seguro, rinde cuando todo anda mal, y los seguros se compran perdiendo en promedio (→ el ejemplo del paper del proyecto con $\bar{\alpha}_v = -5\%$).

**Quién lo hace cumplir: el precio.** Si un activo ofrece más que su requerido, los diversificados compran → precio sube → retorno esperado baja hasta clavarse en el requerido. El paper ni se casa con el CAPM ("for example") — solo usa dos propiedades: (a) solo el riesgo sistemático se paga; (b) el premio es lineal en la exposición.

## La linealidad: cómo se forma $r + \varepsilon(\bar{\alpha}_v - r)$

Un activo con el shock de $V$ amplificado $\varepsilon$ veces ($\varepsilon\,\sigma_v dz_v$): su volatilidad es $\varepsilon\sigma_v$, pero su **correlación con el mercado no cambia** (amplificar no altera la sincronía, solo el tamaño). Metiéndolo en el CAPM:

$$\bar{\alpha}_Y = r + \phi\,\rho_{vm}\,(\varepsilon\sigma_v) = r + \varepsilon\,\underbrace{(\phi\rho_{vm}\sigma_v)}_{\bar{\alpha}_v - r} = r + \varepsilon(\bar{\alpha}_v - r)$$

**El premio escala linealmente con la exposición.** Verificación constructiva (réplica con apalancamiento): por cada peso propio, pedí prestados $\varepsilon - 1$ a tasa $r$ y comprá $\varepsilon$ del gemelo de $V$ → mismo shock, retorno esperado $\varepsilon\bar{\alpha}_v - (\varepsilon-1)r = r + \varepsilon(\bar{\alpha}_v - r)$. Con $\bar{\alpha}_v = 10\%$, $r = 5\%$, $\varepsilon = 2.24$: $16.2\%$. Cualquier activo con ese shock debe rendir eso (si no, arbitraje contra la réplica). Es la *Capital Market Line* de los libros. Para pesos negativos ($1-\varepsilon$) funciona igual: la posición corta paga premio en vez de cobrarlo.

**Detalle de la ecuación (10)**: $V$ no cotiza — $\bar{\alpha}_v$ se define como el requerido de un "gemelo de riesgo" (activo perfectamente correlacionado con $V$, mismo desvío); al diversificado solo le importa el patrón de riesgo, no el activo. La primera igualdad de (10) es la economía (tarifar el paquete); la segunda ($= \varepsilon\bar{\alpha}_v + (1-\varepsilon)\bar{\alpha}_f$) es despeje: la $r$ se cancela porque los pesos suman 1 (portafolio totalmente invertido — homogeneidad de grado 1).

## El significado de la ecuación (11): la condición de equilibrio que atrapa a $\varepsilon$

$$\underbrace{\varepsilon\bar{\alpha}_v + (1-\varepsilon)\bar{\alpha}_f}_{\text{lo que DEBE rendir (ec. 10)}} = \underbrace{\varepsilon\alpha_v + (1-\varepsilon)\alpha_f + \tfrac{1}{2}\varepsilon(\varepsilon-1)\sigma^2}_{\text{lo que EFECTIVAMENTE rinde (drift de Itô, ec. 8)}}$$

Si no fueran iguales habría plata gratis (rinde más que su tarifa → todos compran; menos → nadie la tiene). La igualdad = "tener la opción es un trato justo". Y como $\varepsilon$ aparece en ambos lados (lineal en las mezclas, cuadrático en el término de convexidad de Itô) y todo lo demás es conocido, **la (11) es una ecuación con una sola incógnita: $\varepsilon$** — la condición de equilibrio es el mecanismo que determina el exponente. Resuelta → la (12), escrita solo en los $\delta$. El "punto fijo" del bucle ($\varepsilon$ → riesgo → $\mu$ → $\varepsilon$) se resuelve de un saque: es la raíz de la cuadrática. Y la (12) **es** la (5) con $\mu = \varepsilon\bar{\alpha}_v + (1-\varepsilon)\bar{\alpha}_f$ sustituido: dos derivaciones independientes (EDP / equilibrio) del mismo objeto — el chequeo de consistencia del edificio. La condición $\alpha_v < \mu$ se traduce en $\delta_v > 0$.

## Cuidado con la notación: tres tasas distintas

- $\alpha_v$ — drift **real** de $V$ (cuánto se aprecia).
- $\bar{\alpha}_v$ (en el paper $\hat{\alpha}_v$) — retorno **requerido** de un activo con el riesgo de $V$; $\delta_v = \bar{\alpha}_v - \alpha_v$.
- $\mu$ — retorno requerido **de la opción** $X$: $\mu = \varepsilon\bar{\alpha}_v + (1-\varepsilon)\bar{\alpha}_f > \bar{\alpha}_v$ (apalancamiento).

El $\mu = 10\%$ del ejemplo corrido es la tasa exógena de la opción (Sección III.A), **no** $\bar{\alpha}_v$.

## Qué significa "aplicar Itô al valor de la opción" (conceptual)

**El punto de partida.** La opción no tiene vida propia: $X(V, F)$ es una función del estado. Como $V$ y $F$ se sacuden aleatoriamente (sus GBM), $X$ — que va montada arriba — también se sacude. Pregunta: ¿*cómo*? Si te describo el viaje aleatorio de los ingredientes, describime el viaje del pasajero.

**Qué es Itô.** La regla de la cadena del cálculo, adaptada al mundo browniano. La regla común: si $V$ se mueve un poquito, $X$ se mueve "pendiente × movimiento". La corrección de Itô: como el browniano es infinitamente tembloroso, **la curvatura también importa** — una función convexa de algo que tiembla gana valor del temblor mismo (los temblores hacia arriba suman más de lo que los de abajo restan). Para este pasaje alcanza con: Itô es **el traductor de dinámicas** — le das los procesos de los ingredientes ($dV/V$, $dF/F$) y la forma de $X$, y devuelve el proceso del compuesto ($dX/X$): su drift y su exposición a cada shock.

**El resultado (ecuación (8)): la opción es un portafolio disfrazado.** La parte sorpresiva del retorno de la opción resulta ser

$$\varepsilon \times (\text{shock de } V) + (1-\varepsilon) \times (\text{shock de } F)$$

La opción se comporta como un portafolio con $\varepsilon$ unidades de exposición al riesgo de $V$ y $(1-\varepsilon)$ al de $F$. Con $\varepsilon = 2.24$: amplifica los shocks del proyecto 2.24× y tiene exposición *negativa* 1.24 al costo — una posición **apalancada** (comprado 2.24 en riesgo-$V$, corto 1.24 en riesgo-$F$). Por eso las opciones son más volátiles que sus subyacentes.

**El cierre por equilibrio.** Principio: activos con el mismo riesgo deben rendir lo mismo (si no, los diversificados arbitran). Itô dijo qué riesgo tiene la opción (la mezcla $\varepsilon$/$1-\varepsilon$); el CAPM es el tarifario de cada riesgo; entonces:

$$\mu = \varepsilon\,\bar{\alpha}_v + (1-\varepsilon)\,\bar{\alpha}_f$$

el retorno requerido de la opción es la misma mezcla de los retornos requeridos de sus ingredientes. El pagaré de "$\mu$ dado" queda saldado: se deriva de la estructura de riesgo, sin utilidades ni gustos personales — pura consistencia entre precios de activos.

**En una imagen:** Itô es la lupa que mira la opción y dice "esto por dentro es tanto de riesgo-proyecto y tanto de riesgo-costo"; el CAPM es el tarifario que dice cuánto se paga cada riesgo; $\mu$ es la cuenta final — el precio del paquete es la suma de los precios de sus partes.

## Los deltas: las perillas económicas correctas

### $\delta_v$ — el sueldo que no cobrás por esperar

$$\delta_v = \bar{\alpha}_v - \alpha_v = (\text{retorno que el riesgo de } V \text{ exige}) - (\text{apreciación efectiva de } V)$$

Con números: si el CAPM exige $\bar{\alpha}_v = 10\%$ y $V$ se aprecia a $\alpha_v = 2\%$, los 8 puntos que faltan son **el flujo de caja que reparte el proyecto instalado** (en equilibrio, apreciación + payout = retorno requerido). El dueño de la *opción* está expuesto al riesgo de $V$ pero solo recibe la apreciación — los flujos los cobra quien instaló, y él no instaló. Ese 8% anual que pasa de largo es $\delta_v$: **el costo de esperar, en términos de flujo**.

- $\delta_v \uparrow$ → esperar duele más → se invierte antes (umbral $C^*$ más bajo) y la opción vale menos. Análogo exacto del dividendo en una call: dividendos altos empujan al ejercicio temprano.
- Caso límite: $\delta_v = 0$ → nunca conviene ejercer (call perpetua sobre acción sin dividendos). $\delta_v > 0$ es la versión económica de la condición $\alpha_v < \mu$.
- **Con $\alpha_v$ fijo, más riesgo sistemático de $V$ → $\bar{\alpha}_v$ sube (CAPM) → $\delta_v$ sube → la opción vale menos.**

### La tensión clave (para tener lista)

| Qué sube | Canal | Efecto sobre la opción |
|---|---|---|
| Varianza **total** del ratio ($\sigma^2$) | la asimetría (cola buena/mala) | **sube** el valor y el umbral |
| Riesgo **sistemático** de $V$ (con $\alpha_v$ fijo) | $\delta_v$ vía CAPM | **baja** el valor y el umbral |

No es contradicción: dos canales distintos. El ruido total alimenta la asimetría (da igual su tipo); el riesgo sistemático encarece el descuento. Un mismo shock puede mover ambos; el neto depende de la mezcla.

### $\delta_f$ — el espejo: diferir un costo es cobrar

"$F$ is a cost that is deferred by waiting": esperar difiere el pago, y diferir un pago es ganancia. Mientras esperás, la plata destinada al costo rinde $\bar{\alpha}_f$ (digamos 9%) en un activo del mismo riesgo, mientras el precio a pagar solo sube $\alpha_f$ (3%): la diferencia $\delta_f = 6\%$ anual se embolsa por cada año de postergación — "the gain from deferral". Equivalente: respecto del costo, esperar te deja *corto* en $F$, y estar corto en un activo te beneficia por su payout.

- $\delta_f \uparrow$ → esperar rinde más → umbral más alto y opción más valiosa.
- **Más riesgo sistemático de $F$ (con $\alpha_f$ fijo) → $\delta_f$ sube → la opción vale más.** Contraintuitivo por segunda vez: que el *costo* sea sistemáticamente más riesgoso beneficia.

### Por qué esto salda lo de "drifts uninteresting"

Las derivadas respecto de $\alpha_v$ o $\mu$ aislados comparaban mundos imposibles (el CAPM los ata). **Las perillas que sí se giran con sentido económico son $\delta_v$ y $\delta_f$** — tasas de payout, propiedades reales y medibles (el ratio ganancias/precio estima $\delta_v$, nota al pie 3 del paper). La estática comparativa correcta se hace en el espacio de los $\delta$, no de los $\alpha$.

**Lectura final del par:** $\delta_v$ es el costo de esperar, $\delta_f$ es el beneficio de esperar (además del valor de opción por incertidumbre). El umbral óptimo balancea ambos flujos contra la asimetría. Lo que empezó como "descontamos a un $\mu$ misterioso" terminó en dos números con interpretación de dividendo: uno que apura, otro que frena.

## El experimento final: apagar la incertidumbre — ecuaciones (13), (14), (14')

Con $\sigma_v = \sigma_f = 0$ el modelo **no colapsa a VPN**: el umbral queda $C = \delta_f/\delta_v$ (y $\varepsilon \to \delta_f/(\delta_f - \delta_v)$) — **distinto de 1 incluso sin incertidumbre**. La regla VPN falla también por puro valor tiempo de los flujos, no solo por volatilidad.

**Ecuación (14) — regla de flujos contra flujos:** invertir sii

$$V_0\,\delta_v \geq F_0\,\delta_f$$

- $V_0\delta_v$ = costo de no instalar: los flujos que el proyecto pagaría y no cobrás (por año de demora).
- $F_0\delta_f$ = beneficio de no instalar: lo que ganás por diferir el pago del costo (por año).

Con $\delta_v = 4\%$, $\delta_f = 8\%$, $V_0 = 70$, $F_0 = 50$: hoy perdés 2.8M/año pero ganás 4M/año → esperás con VPN +20 y cero incertidumbre; umbral $C = 2$ → invertís cuando $V = 100$, donde los flujos empatan. Bordes: $\delta_v \geq \delta_f$ → invertir ya (o nunca si $V<F$); $\delta_v = 0$ → esperar no cuesta nada → **nunca** invertir, $C^* = \infty$, $X = V$ (diferís $F$ para siempre y en el límite te quedás con $V$ gratis). Nota 9: Venezia obtiene un "nunca" parecido pero por aprendizaje bayesiano; acá es puro valor tiempo con parámetros conocidos.

**Ecuación (14') — prender la incertidumbre:** $V_0\delta_v \geq F_0\delta_f + h(V_0,F_0)$, con $h > 0$: la misma regla de flujos **más una cuña** — el valor de opción puro (la asimetría), aislado por fin. Para invertir, los flujos perdidos deben pagar el ahorro por diferimiento *y además* el seguro que se destruye al ejercer. Por eso $\delta_f = 0$ no es simétrico a $\delta_v = 0$: sin ahorro por diferir, la cuña $h$ sigue viva.

**Síntesis (citable):** el VPN clásico falla dos veces — por ignorar el valor tiempo de los flujos (eso ya lo mata en el caso determinístico, ecs. 13-14) y por ignorar el valor de seguro de la espera (la cuña $h$, que solo existe con $\sigma > 0$). El umbral $C^* > 1$ del paper es la suma de ambos motivos.

| Motivo para esperar | De dónde sale | ¿Sobrevive con $\sigma = 0$? |
|---|---|---|
| Valor tiempo de los flujos | $\delta_f > \delta_v$ | ✔ — ecs. (13)-(14) |
| Valor de opción (seguro) | la asimetría | ✘ — es la cuña $h$ de (14') |
