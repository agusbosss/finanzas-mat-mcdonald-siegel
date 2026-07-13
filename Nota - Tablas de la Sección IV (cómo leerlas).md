# Tablas de la Sección IV — cómo leerlas

*Nota satélite de [[Nota - Ideas del paper (McDonald-Siegel 1986)]]. Material del repaso en detalle de las Tablas I y II (2026-07-12).*

## 1. Qué mide una celda de la Tabla I

La tabla se para en $V = F = 1$: el valor presente del proyecto es **exactamente igual** al costo. Es el punto donde la regla VPN clásica dice "indiferente, ya podés invertir". Todo está por dólar de proyecto.

En ese punto ejercer da cero ($V - F = 0$), así que la celda tiene dos lecturas equivalentes:

1. **El valor de la opción de esperar**, por dólar de $V$.
2. **La plata que se destruye si se invierte apenas el VPN toca cero** en vez de esperar al momento óptimo.

Ojo con la lectura 2: invertir en $V = F$ no pierde plata *en la caja* (cambiás 50M por un activo que vale 50M). Lo que se pierde es **el activo que ya tenías antes de poner un peso**: el derecho de invertir cuando quieras. Si la celda dice 0.23 y el proyecto es de 50M, ese derecho vale 11.5M; ejercerlo hoy lo consume a cambio de un pago neto de 0.

| Decisión hoy ($V = F = 50$M) | Qué queda después |
|---|---|
| Invertir ya | Activo neto de **0** — la opción se consumió |
| Esperar (óptimo: invertir recién en $V = 93$M $= C^* F$) | La opción intacta: **11.5M** |

Por qué el paper elige justo $V/F = 1$: es donde el manual de finanzas corporativas da luz verde — y es donde más valor se destruye por apurarse.

## 2. El caso base, parámetro por parámetro

| Parámetro | Base | Qué es | De dónde sale |
|---|---|---|---|
| $\sigma_v^2 = \sigma_f^2$ | 0.04 ($\sigma = 0.20$) | Varianza de $V$ y de $F$ | Desvío del equity **desapalancado** de EE.UU.: NYSE $\sigma \approx 0.30$ (Stoll-Whaley 1983), desapalancado con deuda/valor $1/3$ → $\approx 0.20$ |
| $\delta_v = \bar{\alpha}_v - \alpha_v$ | 0.10 | El "dividendo" que se pierde el que espera: parte del retorno requerido de $V$ que viene como flujo, no como apreciación | Ratio ganancias/precio del proyecto instalado, neto de depreciación (n. 13) |
| $\delta_f = \bar{\alpha}_f - \alpha_f$ | 0.10 | El "premio" por patear el pago de $F$ | Si $F$ es determinístico, la tasa libre de riesgo; con riesgo sistemático, más |
| $\rho_{vf}$ | (columnas) | Correlación entre $V$ y $F$ | Se muestra $-0.5$, $0$, $+0.5$ |
| $\lambda$ | 0.00 | Probabilidad **por año** de que $V$ salte a cero (muerte súbita del proyecto) | Base: sin saltos |

Para fijar $\delta_v = 0.10$: si el mercado exige $\bar{\alpha}_v = 12\%$ a un activo con el riesgo de $V$ y el valor solo se aprecia $\alpha_v = 2\%$, los 10 puntos que faltan son el flujo de caja que cobra el dueño del proyecto instalado — y que el que espera no cobra.

**Qué significa $\lambda$**: intensidad del Poisson de "Jumps in $V_t$" — competidor letal, cambio regulatorio, obsolescencia. $\lambda = 0.05$ → vida esperada de la oportunidad $1/\lambda = 20$ años; $\lambda = 0.25$ → 4 años. Efecto: como si la tasa de descuento subiera de $\mu$ a $\mu + \lambda$ → la opción vale menos y $C^*$ baja (la muerte apura). Ver [[Nota - Jumps in Vt (vencimiento aleatorio)]].

## 3. El detalle que destraba todo: la varianza del ratio

Lo único que importa es $V/F$, y la varianza del ratio es
$$\sigma^2 = \sigma_v^2 + \sigma_f^2 - 2\rho_{vf}\,\sigma_v\sigma_f$$

Con $\sigma_v^2 = \sigma_f^2 = 0.04$: $\rho = -0.5 \Rightarrow \sigma^2 = 0.12$; $\rho = 0 \Rightarrow 0.08$; $\rho = +0.5 \Rightarrow 0.04$. Correlación alta = cobertura natural = ratio quieto = opción que vale menos. Por eso, dentro de cada bloque de columnas, las celdas caen de izquierda a derecha.

## 4. Tabla I completa — valor de la oportunidad en $V = F = 1$

Nueve columnas ($\delta_v \in \{0.05, 0.10, 0.25\} \times \rho_{vf} \in \{-0.5, 0, 0.5\}$), tres bloques de filas. La fila en **negrita** es el caso base, repetida en los tres bloques.

**Bloque 1 — mueve $\sigma_v^2 = \sigma_f^2$** (fijos: $\lambda = 0$, $\delta_f = 0.10$):

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| $\sigma^2{=}0.01$ | 0.33 | 0.30 | 0.28 | 0.14 | 0.12 | 0.08 | 0.03 | 0.02 | 0.01 |
| $0.02$ | 0.38 | 0.34 | 0.30 | 0.20 | 0.16 | 0.12 | 0.06 | 0.04 | 0.02 |
| **$0.04$** | **0.45** | **0.40** | **0.34** | **0.27** | **0.23** | **0.16** | **0.11** | **0.08** | **0.04** |
| $0.10$ | 0.57 | 0.51 | 0.43 | 0.40 | 0.34 | 0.25 | 0.21 | 0.16 | 0.09 |
| $0.20$ | 0.67 | 0.61 | 0.51 | 0.52 | 0.45 | 0.34 | 0.32 | 0.25 | 0.16 |
| $0.30$ | 0.73 | 0.67 | 0.57 | 0.60 | 0.52 | 0.40 | 0.39 | 0.32 | 0.21 |

**Bloque 2 — mueve $\lambda$** (fijos: $\sigma^2 = 0.04$, $\delta_f = 0.10$):

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| **$\lambda{=}0.00$** | **0.45** | **0.40** | **0.34** | **0.27** | **0.23** | **0.16** | **0.11** | **0.08** | **0.04** |
| $0.05$ | 0.33 | 0.29 | 0.24 | 0.23 | 0.19 | 0.13 | 0.10 | 0.07 | 0.04 |
| $0.10$ | 0.27 | 0.23 | 0.19 | 0.20 | 0.16 | 0.12 | 0.10 | 0.07 | 0.04 |
| $0.25$ | 0.19 | 0.16 | 0.12 | 0.15 | 0.12 | 0.09 | 0.09 | 0.06 | 0.04 |

**Bloque 3 — mueve $\delta_f$** (fijos: $\sigma^2 = 0.04$, $\lambda = 0$):

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| $\delta_f{=}0.01$ | 0.30 | 0.23 | 0.14 | 0.18 | 0.13 | 0.07 | 0.08 | 0.06 | 0.03 |
| $0.05$ | 0.37 | 0.31 | 0.23 | 0.22 | 0.17 | 0.10 | 0.09 | 0.06 | 0.03 |
| **$0.10$** | **0.45** | **0.40** | **0.34** | **0.27** | **0.23** | **0.16** | **0.11** | **0.08** | **0.04** |
| $0.25$ | 0.60 | 0.58 | 0.56 | 0.42 | 0.39 | 0.36 | 0.18 | 0.15 | 0.10 |

## 5. Diseño "estrella": los bloques no se combinan

La tabla **no** es una grilla de todas las combinaciones. Cada bloque parte del caso base y mueve **solo su parámetro de fila**; los otros dos quedan en el valor base. Prueba a la vista: la fila base (0.45, 0.40, 0.34, 0.27, 0.23, 0.16, 0.11, 0.08, 0.04) aparece idéntica en los tres bloques — es el mismo punto visto tres veces.

Consecuencias:
- Cada celda difiere del base en a lo sumo tres cosas: su parámetro de fila + el $\delta_v$ y el $\rho$ de su columna.
- No hay celdas con dos parámetros de fila movidos a la vez (ej. $\sigma^2$ alto **y** $\lambda$ alto). Para interacciones hay que ir a las fórmulas (4) y (12) — como hicimos en el ejemplo corrido combinando $\sigma = 20\%$ con $\lambda = 5\%$.

## 6. Cómo se fabrica una celda (receta, caso base)

Caso base: $\delta_v = \delta_f = 0.10$, $\rho = 0$, $\sigma_v^2 = \sigma_f^2 = 0.04$.

1. **Varianza del ratio**: $\sigma^2 = 0.04 + 0.04 - 0 = 0.08$.
2. **$\varepsilon$ por la (12)** (con $\delta_f = \delta_v$ el término $(\delta_f - \delta_v)/\sigma^2$ se anula):
$$\varepsilon = \sqrt{\tfrac{1}{4} + \frac{2 \times 0.10}{0.08}} + \tfrac{1}{2} = \sqrt{2.75} + 0.5 \approx 2.16$$
3. **Disparador**: $C^* = \varepsilon/(\varepsilon - 1) = 2.16/1.16 \approx 1.86$ → celda de la **Tabla II**.
4. **Valor por la (4)** en $V = F = 1$:
$$X = (C^* - 1)\left(\frac{1}{C^*}\right)^{\varepsilon} = 0.86 \times (1/1.86)^{2.16} \approx 0.23 \; \checkmark$$

Lectura: "esperaré hasta $V/F = 1.86$; ese plan, visto desde $V/F = 1$, vale 23 centavos por peso de proyecto". Las Tablas I y II son la misma cuenta: la II reporta el paso 3, la I el paso 4.

Comparación con el ejemplo corrido ($\delta_v = 8\%$, $F$ fijo): $\varepsilon = \sqrt{5} \approx 2.24$, $C^* \approx 1.81$ — el paper corre nuestra misma cuenta ~90 veces.

## 7. Tabla II completa — disparador $C^*$ ($V/F$ al que conviene invertir)

**Bloque 1 — $\sigma^2$:**

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| $0.01$ | 2.50 | 2.35 | 2.18 | 1.47 | 1.37 | 1.25 | 1.09 | 1.06 | 1.03 |
| $0.02$ | 2.91 | 2.64 | 2.35 | 1.72 | 1.56 | 1.37 | 1.18 | 1.12 | 1.06 |
| **$0.04$** | **3.65** | **3.17** | **2.64** | **2.13** | **1.86** | **1.56** | **1.34** | **1.24** | **1.12** |
| $0.10$ | 5.65 | 4.56 | 3.41 | 3.19 | 2.62 | 2.00 | 1.77 | 1.54 | 1.29 |
| $0.20$ | 8.77 | 6.70 | 4.56 | 4.79 | 3.73 | 2.62 | 2.44 | 2.00 | 1.54 |
| $0.30$ | 11.83 | 8.77 | 5.65 | 6.34 | 4.79 | 3.19 | 3.07 | 2.44 | 1.77 |

**Bloque 2 — $\lambda$:**

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| **$0.00$** | **3.65** | **3.17** | **2.64** | **2.13** | **1.86** | **1.56** | **1.34** | **1.24** | **1.12** |
| $0.05$ | 2.50 | 2.23 | 1.92 | 1.86 | 1.67 | 1.44 | 1.32 | 1.23 | 1.12 |
| $0.10$ | 2.10 | 1.90 | 1.67 | 1.72 | 1.56 | 1.37 | 1.30 | 1.22 | 1.12 |
| $0.25$ | 1.67 | 1.54 | 1.40 | 1.51 | 1.40 | 1.27 | 1.27 | 1.19 | 1.11 |

**Bloque 3 — $\delta_f$:**

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| $0.01$ | 2.31 | 1.89 | 1.46 | 1.64 | 1.43 | 1.22 | 1.25 | 1.17 | 1.08 |
| $0.05$ | 2.85 | 2.38 | 1.86 | 1.83 | 1.58 | 1.32 | 1.28 | 1.19 | 1.10 |
| **$0.10$** | **3.65** | **3.17** | **2.64** | **2.13** | **1.86** | **1.56** | **1.34** | **1.24** | **1.12** |
| $0.25$ | 6.42 | 5.96 | 5.49 | 3.35 | 3.09 | 2.81 | 1.62 | 1.49 | 1.33 |

Titular: $C^*$ casi nunca está cerca de 1. Solo se invierte en $V = F$ si $\sigma^2 = 0$ o $\delta_v = \infty$; para parámetros razonables, conviene esperar a que $V$ supere $2F$.

## 8. $C^*$ es un argmax: la lomita asimétrica

$C^*$ no es "un umbral razonable": es **el mejor umbral posible**. Con la regla "invierto en $V/F = C$", parado en $V = F$:
$$X(C) = \underbrace{(C-1)}_{\text{premio}} \times \underbrace{C^{-\varepsilon}}_{\text{factor de espera}}$$
Subir $C$ agranda el premio pero encoge el factor (tardás más en llegar / capaz no llegás). El máximo está en $C^* = \varepsilon/(\varepsilon-1)$.

Con el caso base ($\varepsilon = 2.16$, $C^* = 1.86$):

| Regla $C$ | $X(C)$ |
|---|---|
| 1.0 (VPN clásico) | 0.000 |
| 1.5 | 0.208 |
| **1.86 $= C^*$** | **0.226** |
| 2.5 | 0.207 |
| 3.0 | 0.187 |

Dos moralejas:
- **La lomita es asimétrica**: apurarse destruye todo (0.226 → 0 en $C = 1$); pasarse cuesta poco (0.226 → 0.207 en $C = 2.5$). Si hay que errar, errar esperando de más.
- **Mejor umbral = mejor estrategia a secas**: el Apéndice verifica que la región de parada óptima es $[C^*, \infty)$ — la política óptima *es* de umbral. Por la propiedad de Markov del GBM, la decisión solo depende de dónde está el ratio, no de cómo llegó.

## 9. Patrones: motores y frenos

Con el ancla en la celda base (0.23 / 1.86):

- **$\sigma^2$ ↑** → opción ↑ y $C^*$ ↑ (más ruido, más vale mirar antes de saltar; y más exigente el disparador).
- **$\delta_v$ ↑** → opción ↓↓ y $C^*$ ↓ (esperar carísimo; la caída más violenta de la tabla: 0.40 → 0.23 → 0.08). Cerca de $\delta_v = 0$: $X \to V$ y $C^* \to \infty$.
- **$\delta_f$ ↑** → opción ↑ y $C^*$ ↑ (te pagan por postergar el gasto).
- **$\rho_{vf}$ ↑** → opción ↓ y $C^*$ ↓ (cobertura natural, ratio quieto).
- **$\lambda$ ↑** → opción ↓ y $C^*$ ↓ (la muerte apura). Si la opción ya vale poco ($\delta_v = 0.25$, $\rho = 0.5$): subir $\lambda$ de 0 a 0.25 la deja en 0.04 — su valor ya era casi puro varianza.

En una frase: **$\sigma^2$ y $\delta_f$ son el motor de la espera; $\delta_v$, $\rho$ y $\lambda$ son los frenos.**

## 10. Tabla III (referencia)

El % del valor debido a la incertidumbre (comparando la (4) con la (13) determinística) está resumido en la nota madre: crece con $\sigma^2$ y $\delta_v$; si $\delta_v \geq \delta_f$ es 100% (sin incertidumbre, esperar sería subóptimo). Caveat n. 14: supone que mover $\sigma$ no mueve los $\bar{\alpha}$ — válido solo si el riesgo extra es no-sistemático. Ese caveat es la semilla del resultado raro de la Sección V.
