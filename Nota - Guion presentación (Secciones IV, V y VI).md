# Guion de presentación — Secciones IV, V y VI

*Nota para estudiar el discurso. Detalle técnico de respaldo: [[Nota - Ideas del paper (McDonald-Siegel 1986)]] y [[Nota - Tablas de la Sección IV (cómo leerlas)]].*

## Mapa del discurso (la transición desde las secciones anteriores)

> "Hasta acá el paper nos dio las fórmulas: el valor de la opción (4), la cuadrática de $\varepsilon$ (12) y la regla $C^* = \varepsilon/(\varepsilon-1)$. Quedan tres preguntas. **¿Los números importan o es una curiosidad teórica?** — eso lo contesta la Sección IV con parámetros calibrados a datos reales. **¿El modelo se sostiene si uno lo construye desde los fundamentos?** — Sección V, un monopolista con tecnología y demanda explícitas. **¿Qué queda y qué falta?** — Sección VI."

---

# SECCIÓN IV — Ejemplos numéricos

**Idea en una frase**: con parámetros calibrados a datos de EE.UU. (no elegidos para inflar el efecto), invertir apenas el VPN toca cero destruye ~un cuarto del valor del proyecto, y el disparador óptimo es esperar a que $V$ casi duplique a $F$.

## 1. El experimento (qué decir primero)

Las tablas se calculan en $\boldsymbol{V = F = 1}$: el punto exacto donde la regla VPN clásica da luz verde ("VPN = 0, indiferente, ya podés invertir"). Ahí, ejercer paga $V - F = 0$, así que **cada celda de la Tabla I es a la vez el valor de la opción de esperar (por dólar de proyecto) y la plata que se destruye por invertir apenas VPN = 0**.

Aclaración que conviene hacer en voz alta (siempre la preguntan): invertir en $V = F$ no pierde plata en la caja — cambiás 50M por un activo de 50M. Lo que se destruye es **el activo que ya tenías**: el derecho de invertir cuando quieras, que la fórmula valúa en 0.23 × 50M = 11.5M en el caso base. Ejercerlo hoy lo consume a cambio de un pago neto de cero. *"Es como quemar una entrada que en reventa vale 11.5M para entrar a un partido que te es indiferente."*

## 2. La calibración (por qué creerle a los números)

- $\sigma_v = \sigma_f = 0.20$: desvío del **equity desapalancado** de EE.UU. (NYSE ≈ 0.30 según Stoll-Whaley, desapalancado con deuda/valor 1/3 → 0.20).
- $\delta_v = \bar{\alpha}_v - \alpha_v = 0.10$: se estima con el ratio ganancias/precio de un proyecto instalado, neto de depreciación. Es el "dividendo" que se pierde el que espera.
- $\delta_f = 0.10$; $\rho_{vf} = 0$; $\lambda = 0$ (sin riesgo de muerte súbita).

**Punto para remarcar**: son los parámetros de una empresa americana promedio de los ochenta — el efecto que sigue no es un caso armado.

## 3. Tabla I — el costo de seguir la regla VPN (mostrar y leer la celda base)

Columnas: $\delta_v \in \{0.05, 0.10, 0.25\}$ × $\rho_{vf} \in \{-0.5, 0, 0.5\}$. Cada bloque de filas mueve **un solo** parámetro desde el caso base (diseño "estrella": la fila base se repite idéntica en los tres bloques — no hay combinaciones cruzadas).

**Bloque 1 — varianza** ($\lambda = 0$, $\delta_f = 0.10$ fijos):

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| $\sigma^2{=}0.01$ | 0.33 | 0.30 | 0.28 | 0.14 | 0.12 | 0.08 | 0.03 | 0.02 | 0.01 |
| $0.02$ | 0.38 | 0.34 | 0.30 | 0.20 | 0.16 | 0.12 | 0.06 | 0.04 | 0.02 |
| **$0.04$** | **0.45** | **0.40** | **0.34** | **0.27** | **0.23** | **0.16** | **0.11** | **0.08** | **0.04** |
| $0.10$ | 0.57 | 0.51 | 0.43 | 0.40 | 0.34 | 0.25 | 0.21 | 0.16 | 0.09 |
| $0.20$ | 0.67 | 0.61 | 0.51 | 0.52 | 0.45 | 0.34 | 0.32 | 0.25 | 0.16 |
| $0.30$ | 0.73 | 0.67 | 0.57 | 0.60 | 0.52 | 0.40 | 0.39 | 0.32 | 0.21 |

**Bloque 2 — $\lambda$** (prob. anual de que $V$ salte a cero; $\sigma^2 = 0.04$, $\delta_f = 0.10$ fijos):

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| **$0.00$** | **0.45** | **0.40** | **0.34** | **0.27** | **0.23** | **0.16** | **0.11** | **0.08** | **0.04** |
| $0.05$ | 0.33 | 0.29 | 0.24 | 0.23 | 0.19 | 0.13 | 0.10 | 0.07 | 0.04 |
| $0.10$ | 0.27 | 0.23 | 0.19 | 0.20 | 0.16 | 0.12 | 0.10 | 0.07 | 0.04 |
| $0.25$ | 0.19 | 0.16 | 0.12 | 0.15 | 0.12 | 0.09 | 0.09 | 0.06 | 0.04 |

**Bloque 3 — $\delta_f$** ($\sigma^2 = 0.04$, $\lambda = 0$ fijos):

| | $0.05,{-}0.5$ | $0.05,0$ | $0.05,0.5$ | $0.10,{-}0.5$ | $0.10,0$ | $0.10,0.5$ | $0.25,{-}0.5$ | $0.25,0$ | $0.25,0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| $0.01$ | 0.30 | 0.23 | 0.14 | 0.18 | 0.13 | 0.07 | 0.08 | 0.06 | 0.03 |
| $0.05$ | 0.37 | 0.31 | 0.23 | 0.22 | 0.17 | 0.10 | 0.09 | 0.06 | 0.03 |
| **$0.10$** | **0.45** | **0.40** | **0.34** | **0.27** | **0.23** | **0.16** | **0.11** | **0.08** | **0.04** |
| $0.25$ | 0.60 | 0.58 | 0.56 | 0.42 | 0.39 | 0.36 | 0.18 | 0.15 | 0.10 |

**Qué señalar en vivo**:
- La celda base **0.23**: "en el punto donde el manual dice 'invertí', se pierden 23 centavos por peso".
- Bajando por el bloque 1: la varianza es el motor (0.12 → 0.23 → 0.52).
- Hacia la derecha entre bloques: $\delta_v$ es el freno más violento (0.40 → 0.23 → 0.08) — con payout alto, esperar es caro.
- $\rho$ alto aquieta el ratio $V/F$ (cobertura natural) y baja la opción — recordar que lo único que importa es $\sigma^2 = \sigma_v^2 + \sigma_f^2 - 2\rho\sigma_v\sigma_f$, la varianza **del ratio**.
- Bloque 2, última columna: con $\delta_v = 0.25$ la opción vale 0.04 y ni un $\lambda$ de 25% anual la mueve — su valor ya era casi puro varianza.

## 4. Tabla II — la regla de inversión (el titular del paper)

Misma grilla; las celdas son $C^*$, el ratio $V/F$ al que conviene invertir.

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

**Frases para decir tal cual**:
- *"$C^*$ casi nunca está cerca de 1. De la ecuación (5), una firma acepta invertir en $V = F$ solo si $\sigma^2 = 0$ o $\delta_v = \infty$ — los dos casos degenerados que la introducción anticipaba."*
- *"Para parámetros razonables, es óptimo esperar hasta que el valor del proyecto **duplique** el costo de inversión"* (señalar $\sigma^2 = 0.20$, $\rho = 0$, $\delta_v = 0.10$: $C^* = 3.73$; o el caso base: 1.86).

**Si hay tiempo, el argumento de por qué $C^*$ es óptimo** (y no un umbral cualquiera): con la regla "invierto en $C$", el valor es $X(C) = (C-1)\,C^{-\varepsilon}$ — premio × factor de espera. Es una lomita con pico en $C^* = \varepsilon/(\varepsilon-1)$, y es **asimétrica**: en el caso base, invertir en $C=1$ da 0.000, en $C^*=1.86$ da 0.226, en $C=2.5$ da 0.207. *"Apurarse destruye todo; pasarse de exigente cuesta poco. Si van a errar, erren esperando de más."*

## 5. Tabla III — ¿el valor viene del descuento o de la incertidumbre?

Recordatorio: esperar puede valer **incluso sin incertidumbre** (ec. 13: si $\delta_f > \delta_v$, diferir el pago ahorra más de lo que cuesta). La Tabla III compara la (4) contra la (13) y reporta el **% del valor atribuible a la incertidumbre** (con $\delta_f = 0.10$, $V = F = 1$):

| | $\sigma^2{=}0.02$ | $0.04$ | $0.10$ | $0.30$ |
|---|---|---|---|---|
| $\delta_v = 0.02$ | 5.3 | 9.4 | 17.2 | 28.4 |
| $0.04$ | 12.5 | 20.1 | 32.6 | 47.1 |
| $0.06$ | 25.6 | 36.4 | 50.8 | 64.6 |
| $0.08$ | 51.4 | 61.9 | 73.0 | 82.1 |
| $0.10$ | 100.0 | 100.0 | 100.0 | 100.0 |

**Qué decir**: crece con $\sigma^2$ y con $\delta_v$; y cuando $\delta_v \geq \delta_f$ es **100%** — bajo certeza esperar sería subóptimo, así que todo el valor tiene que venir de la varianza. *"En el caso base, el valor de esperar es valor de opción en sentido estricto: nace de la incertidumbre, no del descuento."* Caveat honesto (n. 14): la tabla supone que mover $\sigma$ no mueve los retornos requeridos — válido si el riesgo extra es no-sistemático. **Este caveat es el puente a la Sección V.**

---

# SECCIÓN V — El monopolista (abrir la caja negra)

**Idea en una frase**: hasta acá $V$ era una caja negra ("supongamos GBM"); acá se construye una firma real — y el modelo muestra su mejor cara ($\delta_v$ queda *derivado*, no supuesto) y su peor grieta (parámetros razonables pueden dar "nunca inviertas").

## 1. El setup: tres ecuaciones (decirlas en este orden)

- **Tecnología (21)**: Cobb-Douglas $Q_t = K^{1-\beta}L_t^\beta$. El capital $K$ se instala de una vez (esa es la inversión irreversible que cuesta $F$) y queda fijo; el trabajo $L_t$ se ajusta libremente cada instante. **Capital rígido, trabajo flexible** — esta asimetría genera todo.
- **Demanda (22)**: isoelástica $P_t = \theta_t Q_t^{-1/\eta}$. Es demanda *inversa* (el monopolista elige cantidad y eso mueve el precio). $\eta$ = elasticidad-precio, constante en toda la curva (con $\eta = 2$: precio +1% → cantidad −2%; producir el doble baja el precio 29%). $\theta_t$ = desplazador: escala la curva entera; si $\theta$ sube 10%, todo punto de la curva paga 10% más. Es "el estado del mercado".
- **Shock (23)**: $d\theta/\theta = \alpha_\theta dt + \sigma_\theta dz_\theta$ — GBM, con $\rho_{\theta m}$ = correlación con el mercado. **Toda la incertidumbre del modelo entra por acá y solo por acá.**

Por qué estas formas: Cobb-Douglas + isoelástica + GBM son todas potencias/log-lineales → el beneficio sale potencia del shock, y una potencia de un GBM es otro GBM (Itô) → $V$ hereda exactamente la dinámica que las secciones anteriores asumían. El ejemplo encaja perfecto en la maquinaria ya construida.

## 2. La convexidad: $\pi^* = B\theta^\gamma$ con $\gamma > 1$

Maximizando beneficio instantáneo en $L$:

$$\pi_t^* = B\,\theta_t^{\gamma}, \qquad \gamma = \frac{1}{1-\beta(1-1/\eta)} > 1$$

**La intuición para decir**: *"cuando la demanda sube, la firma contrata y amplifica la buena noticia; cuando baja, despide y amortigua la mala. Buenas noticias amplificadas + malas amortiguadas = beneficio convexo en el shock."* Con $\beta = 2/3$, $\eta = 2$: $\gamma = 1.5$ — demanda +10% → beneficio +15%.

## 3. El valor y el cierre conceptual: (24)–(26)

$$V(\theta_0) = \frac{B\theta_0^{\gamma}}{\bar{\alpha}_v - \alpha_v} \quad (24) \qquad \text{— perpetuidad tipo Gordon}$$

- Itô sobre $\theta^\gamma$: $\alpha_v = \gamma\alpha_\theta + \tfrac{1}{2}\gamma(\gamma-1)\sigma_\theta^2$. **El segundo término es Jensen**: la varianza pasada por una función convexa suma drift. *Anotar: es el villano de los asteriscos.*
- CAPM (25): $\bar{\alpha}_v = r + \phi\rho_{\theta m}\gamma\sigma_\theta$ (usa $\sigma_v = \gamma\sigma_\theta$).
- **La (26), el momento estrella**: $\bar{\alpha}_v = \alpha_v + B\theta_0^\gamma/V_0 = \alpha_v + \delta_v$, o sea $\delta_v$ = **flujo de beneficios sobre valor = payout ratio del proyecto instalado**. *"Lo que en la Sección IV calibrábamos a ojo con el ratio ganancias/precio, acá sale solo: el dividendo que te perdés por esperar es literalmente el beneficio que el proyecto le paga al que ya lo instaló."*

## 4. Tabla IV — resultados (valor de la opción y, entre paréntesis, $C^*$)

Fijos: $\eta = 2$, $r = 0.05$, $\beta = 2/3$, $\phi = 0.50$, $V = F = 1$, $F$ no estocástico.

| $\sigma_\theta^2$ | $\alpha_\theta{=}{-}0.03$, $\rho{=}0$ | $\rho{=}0.2$ | $\rho{=}0.5$ | $\alpha_\theta{=}0$, $\rho{=}0$ | $\rho{=}0.2$ | $\rho{=}0.5$ | $\alpha_\theta{=}0.01$, $\rho{=}0$ | $\rho{=}0.2$ | $\rho{=}0.5$ |
|---|---|---|---|---|---|---|---|---|---|
| 0.01 | 0.074 (1.22) | 0.060 (1.18) | 0.046 (1.13) | 0.189 (1.68) | 0.131 (1.43) | 0.084 (1.26) | 0.290 (2.25) | 0.189 (1.68) | 0.111 (1.35) |
| 0.04 | 0.223 (1.85) | 0.166 (1.58) | 0.118 (1.38) | 0.413 (3.28) | 0.266 (2.09) | 0.166 (1.58) | 0.549 (5.28) | 0.326 (2.50) | 0.191 (1.69) |
| 0.10 | 0.440 (3.58) | 0.304 (2.35) | 0.206 (1.76) | 0.755 (13.7) | 0.430 (3.47) | 0.259 (2.05) | ✱ | 0.497 (4.36) | 0.284 (2.20) |
| 0.20 | 0.765 (14.6) | 0.474 (4.02) | 0.305 (2.35) | ✱ | 0.632 (7.37) | 0.363 (2.80) | ✱ | 0.715 (11.0) | 0.387 (3.02) |

**Qué señalar**:
- Más $\sigma_\theta^2$ → opción y $C^*$ arriba (igual que antes).
- Más $\rho_{\theta m}$ → opción **abajo**: el CAPM sube $\bar{\alpha}_v$, sube $\delta_v$, esperar se encarece. *"El riesgo sistemático te apura."*
- Más $\alpha_\theta$ → opción arriba (más drift del shock, menos $\delta_v$).

## 5. La advertencia: acá las perillas están conectadas

En las Tablas I-II, mover $\sigma$ era quirúrgico ($\delta$ fijos). Acá mover $\sigma_\theta$ mueve tres cosas: $\sigma_v$ ↑ (opción ↑), $\alpha_v$ ↑ por Jensen (opción ↑), y $\bar{\alpha}_v$ ↑ por CAPM si $\rho > 0$ (opción ↓). En la Tabla IV ganan los primeros, pero el paper da el contraejemplo: **$\eta = 1.0001$, $\alpha_\theta = -0.03$, $\rho_{\theta m} = 0.95$ → subir $\sigma_\theta^2$ de 0.0025 a 0.0050 baja la opción de 0.0293 a 0.0286.** (Receta: $\eta \to 1$ hace $\gamma \to 1$ y mata la convexidad; $\rho = 0.95$ pone el CAPM al mango.)

**Frase para decir tal cual**: *"'Más volatilidad, más valor de opción' es verdad con todo lo demás fijo. En equilibrio, todo lo demás no se queda fijo."*

## 6. Los asteriscos: donde el modelo se rompe

En las celdas ✱, $\delta_v < 0$: nunca conviene invertir, por más grande que sea $V$. Verificación en vivo (celda $\sigma_\theta^2 = 0.20$, $\alpha_\theta = 0$, $\rho = 0$):

$$\delta_v = \underbrace{0.05}_{r} + \underbrace{0}_{\text{CAPM}} - \underbrace{0}_{\gamma\alpha_\theta} - \underbrace{0.075}_{\frac{1}{2}\gamma(\gamma-1)\sigma_\theta^2} = -0.025 < 0$$

El término de Jensen crece linealmente en $\sigma_\theta^2$ y termina tragándose el retorno requerido: el valor crece en expectativa más rápido de lo que el mercado descuenta → esperar siempre suma → opción infinita. Es la condición $\alpha_v \geq \mu$ de la Sección III, generada endógenamente por parámetros inocentes.

**La autocrítica del paper** (decirla como fortaleza: los autores la hacen ellos mismos): es inverosímil no invertir nunca en un activo real. La culpa es del GBM para $\theta$: la demanda es una variable *real* y su incertidumbre no debería crecer linealmente con el horizonte para siempre. Lo correcto sería un proceso con **reversión a la media** ("la demanda vuelve a lo normal") — pero no tiene solución analítica. *Elegante o realista: hay que elegir.*

Matiz fino (nota 15, IBM): los **retornos totales** de invertir en IBM sí pueden acumular varianza sin límite; lo absurdo es que el **valor** lo haga (IBM indefinidamente grande vs. la economía). Salida realista: que el payout $\delta_v$ crezca con $V$ → acota $V$ e induce $C^*$ finito.

---

# SECCIÓN VI — Conclusiones

## El mensaje cuantitativo (la frase citable del paper)

> *"El valor perdido por adoptar subóptimamente un proyecto de VPN cero está fácilmente entre el **10 y el 20 por ciento (o más) del valor del proyecto**."*

Es la cuantificación de por qué "invertí si VPN > 0" está mal para proyectos irreversibles.

## Las tres limitaciones (los autores las listan ellos mismos)

1. **GBM**: plausible cuando $V$ y $F$ son valores presentes; aun así la Sección V mostró resultados indeseables. Más realista: payouts y varianzas como funciones de los precios → opciones **casi seguro más chicas** (admiten que sus números probablemente sobreestiman); para precios que no son VP, reversión a la media; en general, métodos numéricos.
2. **Inversión indivisible (lumpy)**: si se pudiera invertir de a poco y el retorno marginal de inversiones chicas fuera alto, siempre convendría invertir *algo* — el problema de esperar pierde importancia. La opción vale porque no podés meter un dedo del pie primero.
3. **Irreversibilidad total (sin scrapping posterior)**: se ignora que el proyecto adoptado pueda desarmarse después. Punto fino para cerrar: la reversibilidad entra implícitamente vía depreciación — *"un proyecto es más reversible cuanto más rápido deprecia: más depreciación = más payout = más $\delta_v$ = la opción de esperar vale menos. Cuanto menos irreversible la decisión, menos vale esperar — coherente con toda la lógica del paper."*

## Cierre sugerido (30 segundos)

> "El arco de estas tres secciones: la IV demuestra que el efecto es grande con números calibrados — esperar hasta que $V$ duplique a $F$, pérdidas de 10 a 20% por seguir la regla clásica. La V muestra que el modelo se puede fundamentar en micro — el dividendo perdido por esperar resulta ser el payout del proyecto — pero también dónde cruje: el browniano geométrico es buen supuesto para precios de activos financieros y peligroso para shocks reales. Y la VI cierra con honestidad: el mensaje central queda firme, y las limitaciones — proceso, indivisibilidad, irreversibilidad total — son el mapa de la literatura de opciones reales que vino después."

---

## Preguntas probables (y qué contestar)

- **"¿Por qué las tablas se paran en $V = F$?"** — Porque es donde la regla VPN clásica empieza a dar luz verde: el paper mide el costo de obedecerla exactamente donde se equivoca por primera vez.
- **"Si invierto en $V = F$ no pierdo plata, ¿de dónde sale la 'pérdida'?"** — De la opción que se consume: ya tenías un activo (el derecho a elegir el momento) que vale 0.23 por peso; ejercerlo hoy lo cambia por un pago de cero.
- **"¿$C^*$ es el único umbral óptimo? ¿No habría una estrategia mejor no-umbral?"** — El Apéndice verifica que la región de parada óptima es $[C^*, \infty)$: la política óptima es de umbral. Por la propiedad de Markov del GBM, la decisión depende de dónde está el ratio, no de cómo llegó.
- **"¿Más volatilidad siempre sube el valor de la opción?"** — Con los $\delta$ fijos, sí (Tablas I-III). En equilibrio, no necesariamente: si el riesgo es sistemático, más $\sigma$ sube el retorno requerido y encarece la espera (contraejemplo de la Sección V).
- **"¿Qué pasa si la oportunidad puede desaparecer?"** — Salto de Poisson: equivale a sumar $\lambda$ a la tasa de descuento. La opción vale menos y el disparador baja: la muerte apura ($\lambda = 5\%$ en nuestro ejemplo: $C^*$ baja de 1.81 a 1.57).
