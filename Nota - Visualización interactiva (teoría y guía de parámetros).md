# El valor de esperar — teoría y guía de la visualización interactiva

*McDonald & Siegel (1986), "The Value of Waiting to Invest".*
*Nota puente entre lo que estudiamos y la pieza interactiva de cierre: `visualizacion/cierre-mcdonald-siegel.html`.*
*Relacionadas: [[Nota - Ideas del paper (McDonald-Siegel 1986)]] (la nota madre), [[Nota - Estáticas comparativas (varianza, correlación y drifts)]], [[Nota - Tasa de descuento correcta (diversificación, Itô y CAPM)]], [[Nota - Tablas de la Sección IV (cómo leerlas)]], [[Nota - Jumps in Vt (vencimiento aleatorio)]], [[Nota - Apéndice del paper (qué hace y por qué)]].*

La visualización tiene **dos vistas** (el resultado y la intuición), **sliders** para cada parámetro, **presets** y **readouts** en vivo. Usa una sola parametrización: **la del paper** (forma-δ, la de las Tablas I-II) — así no hay que explicar nada extra, se dice "visualizamos el caso del paper" y listo. Esta nota tiene dos partes: primero la teoría condensada tal como la venimos estudiando (Parte A), después la guía de qué mira cada perilla y cada elemento del gráfico (Parte B). Todo lo que se ve en la pieza sale de las tres fórmulas de A.3.

---

# Parte A — La teoría en una carilla

## A.1 El problema y la asimetría

Una firma puede pagar hoy un costo $F$ para instalar un proyecto irreversible cuyo valor presente de flujos es $V$. Ambos son estocásticos (movimiento browniano geométrico). La pregunta no es *si* invertir, sino **cuándo**.

La regla clásica "invertir apenas VPN $> 0$", es decir apenas $V \geq F$, es **incorrecta** para inversión irreversible. La razón es una **asimetría**: invertir es irreversible, pero esperar no. Si espero y las cosas mejoran, invierto y me quedo con la suba; si espero y empeoran, no invierto y mi pérdida es cero. Ejercer hoy mata esa opción de elegir el momento. Por eso conviene invertir solo cuando $V$ supera a $F$ **por un margen positivo**, no apenas lo cruza.

## A.2 La regla de umbral

La solución óptima tiene forma de **umbral sobre el ratio** $V/F$ (homogeneidad de grado cero: solo importa la proporción, no los niveles):

$$\text{invertir cuando } \frac{V}{F} \geq C^*, \qquad C^* > 1.$$

$C^*$ es el disparador. La regla clásica es el caso degenerado $C^* = 1$ (que solo vale si no hay incertidumbre o si el costo de esperar es infinito).

## A.3 El resultado central (las tres fórmulas que mueven todo)

$$\boxed{\;C^* = \frac{\varepsilon}{\varepsilon-1}\;}\qquad
\boxed{\;X = (C^*-1)\,F_0\left(\frac{V_0/F_0}{C^*}\right)^{\!\varepsilon}\;}$$

- $C^* = \varepsilon/(\varepsilon-1)$ es el **umbral óptimo**. Como $\varepsilon > 1$, siempre $C^* > 1$.
- $X$ es el **valor de la opción de invertir** (por dólar de $F$). Estructura: premio al ejercer $(C^*-1)F_0$ × factor de descuento esperado hasta el cruce $\big(\tfrac{V_0/F_0}{C^*}\big)^{\varepsilon}$.
- Para $V/F < C^*$ la opción vale $X$ (curva viva); en $V/F = C^*$ la curva **toca con tangencia** al payoff $V-F$ (*value-matching* + *smooth-pasting*, pendiente $=1$ en las dos ramas); de ahí en adelante ejercés y valés el intrínseco $V-F$.

## A.4 Quién es $\varepsilon$ — dos formas de la misma raíz

$\varepsilon$ es la raíz $>1$ de la cuadrática característica del Apéndice. Se escribe de dos maneras equivalentes (las dos están en el deck). La **visualización usa la forma-δ**, que es con la que el paper corre las Tablas I-II; la forma-α queda como background del ejemplo corrido (A.5):

**Forma-α** (drifts y descuento explícitos — ec. 5, la del ejemplo corrido):
$$\varepsilon = \sqrt{\left(\frac{\alpha_v-\alpha_f}{\sigma^2}-\tfrac12\right)^{\!2} + \frac{2(\mu-\alpha_f)}{\sigma^2}} \;+\; \left(\tfrac12 - \frac{\alpha_v-\alpha_f}{\sigma^2}\right)$$

**Forma-δ** (costos de oportunidad — ec. 12, la de las Tablas I-II):
$$\varepsilon = \sqrt{\left(\frac{\delta_f-\delta_v}{\sigma^2}-\tfrac12\right)^{\!2} + \frac{2\delta_f}{\sigma^2}} \;+\; \left(\tfrac12 - \frac{\delta_f-\delta_v}{\sigma^2}\right)$$

con, en ambos casos, la **varianza del ratio**
$$\sigma^2 = \sigma_v^2 + \sigma_f^2 - 2\rho_{vf}\,\sigma_v\,\sigma_f.$$

El puente entre las dos formas es el CAPM: $\mu = \varepsilon\bar\alpha_v + (1-\varepsilon)\bar\alpha_f$, con $\delta_v = \bar\alpha_v - \alpha_v$ y $\delta_f = \bar\alpha_f - \alpha_f$ (ver [[Nota - Tasa de descuento correcta (diversificación, Itô y CAPM)]]). El paper prefiere la forma-δ porque **los drifts solos no importan**: lo que decide son los payouts $\delta_v, \delta_f$. Caso simétrico útil ($\delta_v=\delta_f$): $\varepsilon = \tfrac12 + \sqrt{\tfrac14 + 2\delta_v/\sigma^2}$.

*Vencimiento aleatorio ($\lambda$):* si $V$ puede saltar a cero con intensidad de Poisson $\lambda$, todo es igual con $\mu \to \mu+\lambda$. En las fórmulas de arriba eso significa **cambiar el término constante** $2(\mu-\alpha_f)/\sigma^2 \to 2(\mu+\lambda-\alpha_f)/\sigma^2$ (forma-α) o $2\delta_f/\sigma^2 \to 2(\delta_f+\lambda)/\sigma^2$ (forma-δ). La mortalidad es una prima sumada al descuento (ver [[Nota - Jumps in Vt (vencimiento aleatorio)]]).

$\varepsilon$ es la **elasticidad del factor de descuento respecto del umbral**, o sea una medida *inversa* del valor de esperar: $\varepsilon$ grande $\Rightarrow C^*\to 1$ (casi VPN, esperar no vale casi nada); $\varepsilon \to 1 \Rightarrow C^*\to\infty$ (esperar vale tanto que nunca invertís).

## A.5 El ejemplo corrido (para que los números tengan cara)

*Background, no está en la visualización ni en el paper: es el ejemplo que armamos para el guion oral.* $F = 50$M constante, $V_0 = 70$M (ratio $1.4$), $\mu = 10\%$, $\alpha_v = 2\%$, $\sigma_v = 20\%$. Como $F$ es fijo, $\sigma_f=\alpha_f=\rho=0$ y $\sigma^2 = 0.04$. La cuadrática se reduce a $\tfrac{\sigma^2}{2}\varepsilon(\varepsilon-1)+\alpha_v\varepsilon-\mu=0$; los términos $\pm 0.02\varepsilon$ se cancelan (porque $\alpha_v=\sigma^2/2$) y queda $0.02\,\varepsilon^2 = 0.10 \Rightarrow \varepsilon = \sqrt5 \approx 2.24 \Rightarrow C^* \approx 1.81$.

Valor de la opción en $V_0=70$: $X = 22.8$M, contra un VPN inmediato de $70-50 = 20$M. **Esperar agrega $\approx 2.8$M ($14\%$)**. El disparador dice: no inviertas a los 70; esperá hasta que $V$ llegue a $C^*\!\cdot\!F = 90$M.

## A.6 Estáticas comparativas (la tabla de flechas)

Todas verificadas contra las Tablas I-II (la pieza las reproduce celda por celda).

| Sube… | $\varepsilon$ | $C^*$ (umbral) | $X$ (valor opción) | Por qué |
|---|:---:|:---:|:---:|---|
| $\sigma^2$ (varianza del ratio) | ↓ | **↑** | **↑** | asimetría: agranda la cola buena, la mala sigue en 0 |
| $\sigma_v^2$ ó $\sigma_f^2$ | ↓ | ↑ | ↑ | ambas suben $\sigma^2$ (¡también la del costo!) |
| $\rho_{vf}$ | ↑ | ↓ | ↓ | correlación = cobertura natural, baja $\sigma^2$ del ratio |
| $\delta_v$ (costo de esperar) | ↑ | **↓↓** | **↓↓** | el efecto más fuerte; $\delta_v\to0 \Rightarrow C^*\to\infty$ |
| $\delta_f$ (premio por diferir el costo) | ↓ | ↑ | ↑ | te pagan por postergar el desembolso |
| $\lambda$ (prob. de morir) | ↑ | ↓ | ↓ | la muerte apura: $\mu\to\mu+\lambda$ |
| $\alpha_v$ (drift real de $V$, modo α) | ↓ | ↑ | ↑ | $V$ crece más rápido → esperar rinde más; $\alpha_v\to\mu\Rightarrow C^*\to\infty$ |
| $\mu$ (descuento, modo α) | ↑ | ↓ | ↓ | static "mecánica", poco interesante aislada |

## A.7 La conclusión cuantitativa

> "El valor perdido por adoptar subóptimamente un proyecto de VAN cero está fácilmente entre el **10 y el 20 por ciento** (o más) del valor del proyecto."

Ese número es exactamente $X$ evaluado en $V=F$ (la celda de la Tabla I): en el caso base, $0.23$ = **23%** del valor. Invertir en $V=F$ no quema caja (cambiás 50 por un activo de 50) — quema la **opción de esperar que tenías gratis**.

---

# Parte B — Guía de la visualización

## B.1 Las dos vistas

### Vista 2 — "¿Hasta cuándo esperar?" (el resultado)

Es la figura canónica de real options. En el eje horizontal, el ratio $V/F$. Elementos:

- **Palo de hockey gris punteado** — el payoff del VAN, $\max(V/F-1,\,0)$: lo que valdría ejercer *ya* en cada nivel. Es cero hasta $V/F=1$ y sube con pendiente 1 después.
- **Curva azul** — el valor de la opción viva $X$. Va **siempre por encima** del payoff y lo toca con **tangencia** en $C^*$. Esa tangencia *es* el *smooth-pasting*.
- **Línea vertical gris "VAN=0"** en $V/F=1$: donde la regla clásica diría "invertí".
- **Línea vertical roja "$C^*$"**: el umbral óptimo. El punto rojo sobre la curva es la tangencia.
- **Área celeste sombreada** entre la curva y el payoff: el **valor de esperar**. En $V/F=1$ el payoff es 0, así que esa brecha es toda la opción.
- **Marcador de $V/F$ actual** (la barra roja con "esperar +…"): en el punto donde estás hoy, mide la brecha opción − VAN inmediato. En modo α además la traduce a millones.

**Cómo leerla en una frase:** la distancia horizontal entre la línea gris (1) y la roja ($C^*$) es *cuánto más* hay que esperar; la altura celeste es *cuánto vale* esa espera.

### Vista 1 — "¿Por qué esperar?" (la intuición)

Un abanico de ~60 trayectorias simuladas del ratio $V/F$ en el tiempo, más las dos líneas umbral (gris punteada en 1, roja en $C^*$).

- Las trayectorias que **cruzan $C^*$** se pintan azules: ahí se invierte, capturando la suba.
- Las que se quedan abajo quedan grises: se sigue esperando, y si nunca cruzan el payoff es 0 (no perdés nada).
- El caption dice qué porcentaje cruzó.

**Qué muestra:** la **asimetría**. Como invertir es irreversible pero esperar no, se conserva la cola buena (arriba) y se recorta la mala (abajo, pisada en 0). Esa asimetría es la que empuja el umbral por encima de 1.

## B.2 Los cuatro readouts (arriba)

| Readout | Qué es | Lectura |
|---|---|---|
| **$\varepsilon$** | exponente, raíz $>1$ de la cuadrática | medida inversa del valor de esperar: chico ⇒ esperar vale mucho |
| **$C^*$** | umbral $=\varepsilon/(\varepsilon-1)$ | invertí recién cuando $V \geq C^*\!\cdot\!F$; siempre $>1$ |
| **$X$** | valor de la opción en $V=F$ | por dólar de proyecto; = la celda de la Tabla I |
| **% destruido si VAN=0** | $X$ en $V=F$, en % | cuánto valor tirás por invertir al cruzar; la conclusión del 10-20% |

## B.3 Una sola parametrización: el caso del paper

La pieza usa directamente los parámetros de las **Tablas I-II** (forma-δ): $\sigma_v^2, \sigma_f^2, \rho_{vf}, \delta_v, \delta_f$, más $\lambda$. No hay que elegir nada ni explicar dos modos: cada combinación de sliders **regenera una celda del paper**. El caso base da $C^*=1.86$ y opción $0.23$ — la celda resaltada. (La forma equivalente con drift y descuento es la del ejemplo corrido de A.5; la dejamos afuera de la pieza a propósito, para no complicar.)

## B.4 Guía parámetro por parámetro

- **$\sigma_v^2$ — varianza de $V$.** Entra en $\sigma^2$. Subirla ⇒ $C^*\!\uparrow$, $X\!\uparrow$. *Qué mirás:* en Vista 2 la curva azul se despega más del payoff y $C^*$ se corre a la derecha; en Vista 1 el abanico se abre.
- **$\sigma_f^2$ — varianza de $F$.** Idem: también sube $\sigma^2$ y hace esperar más. *El punto no obvio:* más incertidumbre en el **costo** también aumenta el valor de esperar — lo que importa es la varianza del *ratio*, no de dónde viene.
- **$\rho_{vf}$ — correlación entre $V$ y $F$.** Entra **restando** en $\sigma^2$. Subirla ⇒ $C^*\!\downarrow$, $X\!\downarrow$ (cobertura natural: si $V$ y $F$ se mueven juntos, el ratio es estable). Ponerla negativa dispara el valor.
- **$\delta_v$ — payout de $V$ = costo de esperar.** El dividendo que el proyecto instalado pagaría y que *no cobrás* mientras esperás. **La perilla más potente.** Subirla ⇒ $C^*\!\downarrow$, $X\!\downarrow\downarrow$ (esperar cuesta caro ⇒ ejercés antes). Bajarla hacia 0 ⇒ $C^*\to\infty$: la pieza muestra "δv ≤ 0 ⇒ C* → ∞ (nunca invertir)".
- **$\delta_f$ — ahorro por diferir el costo.** Lo que rinde $F$ mientras no lo gastás (si $F$ es caja, $\delta_f=$ tasa libre de riesgo). Subirla ⇒ $C^*\!\uparrow$, $X\!\uparrow$: te pagan por postergar el desembolso.
- **$\lambda$ — probabilidad anual de salto a cero.** Vencimiento aleatorio. Entra como $\mu\to\mu+\lambda$ (en la fórmula, suma a $\delta_f$ en el término constante). Subirla ⇒ $C^*\!\downarrow$, $X\!\downarrow$: "la muerte apura", ya no conviene esperar tanto.
- **$V/F$ actual — dónde estás hoy.** Es el único slider que **no cambia** $\varepsilon$, $C^*$ ni $X$ (esos son propiedades de los parámetros, no de tu posición). Lo que mueve es el **marcador** de Vista 2: el VAN inmediato $\max(V/F-1,0)$ y la brecha "valor de esperar" en ese punto. En $V/F=1$ el VAN es 0 y la brecha es toda la opción (la conclusión del 10-20%); más a la derecha, la brecha mide cuánto agrega esperar sobre invertir ya. Si lo llevás hasta $V/F\geq C^*$, entrás en zona de inversión y la brecha se cierra (ejercés).

## B.5 Los presets (todos son celdas de las Tablas I-II)

| Preset | Deja | Historia |
|---|---|---|
| **Caso base** | $\sigma^2=0.08$ → $C^*=1.86$, $X=0.23$ | la celda resaltada del paper |
| **Más incertidumbre** | $\sigma^2=0.20$ → $C^*\approx2.62$ | más varianza ⇒ umbral más alto, opción más valiosa |
| **Costo de esperar alto** | $\delta_v=0.25$ → $C^*\approx1.24$ | el efecto más fuerte: esperar cuesta ⇒ invertís casi en el VAN |
| **Con salto Poisson** | $\lambda=0.05$ → $C^*\approx1.67$ | la muerte apura, esperás menos |

## B.6 Guion de 60 segundos para cerrar

1. *Preset "Caso base".* "Con parámetros razonables de EE.UU., el umbral no es 1: es **1.86**. Conviene esperar hasta que el proyecto valga casi el doble del costo."
2. *Señalar el área celeste.* "Esta brecha es el valor de esperar. Invertir apenas el VAN cruza cero tira el **23%** del valor: la opción que teníamos gratis."
3. *Subir el slider de varianza (o preset "Más incertidumbre").* "Y cuanta más incertidumbre, más alto el umbral y más vale esperar — miren cómo $C^*$ se corre a la derecha."
4. *Bajar $\delta_v$ hacia cero.* "Y si el proyecto no paga nada por esperar, el umbral se va a infinito: nunca conviene invertir. Ese es el otro extremo."
5. *Cambiar a Vista 1.* "El porqué es esta asimetría: capturamos la cola buena y recortamos la mala. Por eso, siempre, $C^*>1$."
