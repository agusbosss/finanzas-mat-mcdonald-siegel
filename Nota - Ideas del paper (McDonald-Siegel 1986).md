# Ideas principales — "The Value of Waiting to Invest"

*McDonald & Siegel (1986), Quarterly Journal of Economics 101(4), 707–728.*
*Nota de lectura: ir agregando secciones a medida que avanzo. Relacionada: [[Nota - Movimiento Browniano]]. Para la presentación de las secciones finales: [[Nota - Guion presentación (Secciones IV, V y VI)]].*

## Tesis del paper (abstract)

Estudia el **timing óptimo de inversión en un proyecto irreversible** donde tanto los beneficios ($V$) como el costo de inversión ($F$) siguen procesos estocásticos en tiempo continuo. Deriva la regla óptima de inversión y una fórmula explícita para el valor de la opción de invertir, asumiendo inversores aversos al riesgo pero bien diversificados. El mismo análisis aplica a la decisión de desguace (*scrapping*). Las simulaciones muestran que el valor de la opción es significativo: con parámetros razonables, **conviene esperar hasta que los beneficios dupliquen el costo de inversión**.

---

## Sección I — Introducción

1. **La regla VPN > 0 es incorrecta para proyectos irreversibles.** Ejemplo: planta de combustible sintético. Calcular el VP de las ganancias y de los costos está bien; lo incorrecto es construir apenas VP(ganancias) > VP(costos).

2. **La asimetría clave: invertir es irreversible, diferir es reversible.** La planta no sirve para otro uso. Esta asimetría lleva a la regla: construir solo si los beneficios superan a los costos *por un monto positivo determinado*.

3. **El cálculo correcto compara alternativas mutuamente excluyentes**: el valor de invertir hoy vs. el valor (presente) de invertir en cada momento posible del futuro. Invertir hoy "mata" todas las alternativas futuras.

4. **Aporte del paper**: fórmulas explícitas para (a) el valor de la opción de invertir en un proyecto irreversible y (b) la regla de cuándo invertir, con $V$ y $F$ ambos estocásticos. Permiten calcular exactamente el timing óptimo y **cuántos dólares pierde una firma que invierte en un momento subóptimo**.

5. **Supuesto sobre inversores**: aversos al riesgo pero con portafolios bien diversificados (solo piden compensación por riesgo sistemático). Esta es la contribución principal frente a la literatura previa (Baldwin; Brock, Rothschild y Stiglitz; Venezia y Brenner), que trabajaba bajo neutralidad al riesgo. Bernanke y Venezia agregan aprendizaje bayesiano. Contribución doble: forma tratable y realista de incorporar aversión al riesgo + ejemplos que muestran que el timing importa cuantitativamente.

6. **Resultados anticipados**: (a) el timing es cuantitativamente importante — con parámetros razonables conviene diferir hasta $V = 2F$; (b) la regla "invertir si VPN > 0" solo es válida en dos casos extremos: varianza de $V$ y $F$ igual a cero, o tasa esperada de crecimiento del VP igual a $-\infty$; (c) la pérdida por seguir la regla VPN puede ser sustancial.

7. **Opción infinitamente vivida** (nota al pie 1): se asume que la opción de invertir no expira. Los casos reales de "muerte" del proyecto se modelan con drift negativo o con salto de $V$ a cero en fecha aleatoria. La omisión importante es la opción con **fecha de expiración conocida** (ej. una patente finita): no tiene solución analítica, solo numérica.

---

## Sección II — El problema de inversión

1. **Setup**: en cualquier momento $t$ (hasta una posible expiración $T$), la firma puede pagar $F_t$ para instalar un proyecto cuyos flujos de caja netos esperados tienen valor presente $V_t$. Típicamente ambos son estocásticos. La instalación es **irreversible**: la capacidad solo sirve para este proyecto.

2. **$V_t$ es un valor presente**, no un flujo: los flujos esperados descontados apropiadamente con la información disponible en $t$. Es el valor de mercado de un derecho sobre el stream de flujos que genera instalar el proyecto en $t$.

3. **Dinámica**: $V$ sigue un movimiento browniano geométrico (1a), $dV/V = \alpha_v dt + \sigma_v dz_v$, y $F$ sigue otro (1b), $dF/F = \alpha_f dt + \sigma_f dz_f$. La firma conoce $V$ *hoy*; lo incierto es cuánto valdrá si instala en el futuro. También se considerará que $V$ pueda saltar a cero en un momento aleatorio. (Detalle de la ecuación: [[Nota - Movimiento Browniano]].)

4. **El supuesto de GBM es crucial para las fórmulas, y es más defendible para $V$ que para $F$**:
   - $V$ es en muchas aplicaciones el precio de un activo financiero (si una empresa tuviera solo este proyecto, $V$ sería el precio de su acción). Asumir GBM para $V$ es tan razonable como asumirlo para un precio de acción (supuesto estándar en finanzas).
   - Pero $\alpha_v$ (apreciación de $V$) es típicamente **menor** que el retorno total de una acción comparable: el retorno total = apreciación + flujo de caja pagado; el proyecto no instalado no paga flujos. El ratio ganancias/precio mide cuánto queda $\alpha_v$ por debajo del retorno requerido.
   - $F$ es típicamente el precio de un activo físico, no un valor presente, y los precios no financieros no tienen por qué crecer geométricamente (distinción de Brock, Rothschild y Stiglitz).
   - Advertencia: el ejemplo de la Sección V mostrará que el GBM puede llevar a conclusiones poco realistas.

5. **Ejemplos del problema.** El rasgo esencial: elección mutuamente excluyente entre tomar hoy o en el futuro un proyecto irreversible, mientras la incertidumbre se resuelve continuamente.
   - *Monopolista*: una vez instalada la capacidad, queda protegido de la competencia.
   - *Firma competitiva con rentas temporarias*: hoy $V > F$, pero la entrada rezagada de competidores empuja $V$ hacia $F$ → se representa con $\alpha_v < 0$.
   - *Alta tecnología*: al introducir un producto nuevo, otros entran y las ganancias desaparecen; y mientras la firma espera, un competidor puede lanzar una versión mejor o más barata que deje el producto obsoleto → ejemplo de $V$ saltando a cero.

6. **Interpretación general: intercambiar un activo riesgoso por otro** — entregar $F$ a cambio de $V$. Problema de inversión y problema de reemplazo de activos son el mismo problema. Ejemplo no empresarial: canal por los Everglades, donde $V$ = VP de los beneficios del canal y $F$ = costos directos + VP de los beneficios recreativos perdidos del parque (el costo de oportunidad entra en $F$).

7. **Reinterpretación: desguace óptimo (*scrapping*).** Con $F$ = valor del proyecto en marcha y $V$ = valor de venta, el mismo modelo da el valor de la opción de desguazar. Resultado simétrico: conviene vender solo cuando el precio de venta supera al valor del proyecto *por un monto positivo* — no apenas lo cruza.

---

## Sección III — Timing de inversión y el valor de esperar

**Plan de la sección**: primero el caso $V$ estocástico y $F$ constante; luego ambos estocásticos; luego cómo obtener la tasa de descuento correcta con inversores aversos al riesgo; finalmente la posibilidad de que $V$ salte a cero.

### V y F estocásticos — planteo del problema

1. **La solución tiene forma de regla de umbral.** No se elige una fecha de inversión (imposible: $V$ es aleatorio), sino un umbral: para cada $t$ existe un número $C_t$ tal que se invierte si $V_t/F \geq C_t$ y se difiere si no. El *schedule* $\{C_t^*\}$ se elige para maximizar el valor presente esperado en $t=0$ del pago $V_{t'} - F$.

2. **En el vencimiento, $C_T = 1$.** Si se llega a $T$ sin invertir, desaparece la alternativa "esperar" ($W_T = 0$): el menú queda en invertir (cobrar $V_T - F$) o nunca (cobrar 0), y lo óptimo es $\max(V_T - F, 0)$ → invertir sii $V_T/F \geq 1$. La regla VPN clásica es el caso particular de la regla general cuando el valor de esperar es cero.

3. **Antes del vencimiento, $C_t > 1$ y decrece hacia 1** (inducción hacia atrás desde $T$): mientras queda tiempo, invertir mata la opción de esperar, así que $V$ debe superar a $F$ por un margen que compense; ese margen se achica a medida que la opción que se sacrifica vale menos.

4. **El pago al ejercer depende solo de $F$ y del umbral: $V_{t'} - F = F(C^*-1)$.** De dónde sale, paso a paso:
   - $t'$ está *definido* como el primer momento en que $V/F$ alcanza $C^*$. O sea, la condición que define a $t'$ clava el valor de $V$ en ese instante: $V_{t'}/F = C^*$.
   - Como $V$ se mueve de forma **continua**, no hay sobresalto: para llegar a $C^*$ desde abajo tiene que pasar por todos los valores intermedios, así que el primer toque es exactamente en $C^*$, ni un centavo arriba. Por eso $V_{t'} = C^* F$ con igualdad.
   - Sustituyendo: $V_{t'} - F = C^*F - F = F(C^*-1)$. Con $F = 50$ y $C^* = 1.8$: al ejercer, $V_{t'} = 90$ y el pago es 40, **en toda trayectoria** — no importa si el cruce tardó 2 años o 9. $V$ es aleatorio, pero evaluado en el momento del cruce siempre vale lo mismo: la aleatoriedad quedó toda en *cuándo* se cobra, no en *cuánto*.
   - Consecuencia clave: el pago es una **constante**, y por linealidad de la esperanza sale afuera: $E_0\{e^{-\mu t'}(V_{t'}-F)\} = F(C^*-1)\,E_0\{e^{-\mu t'}\}$. Esa factorización (premio determinístico × factor de descuento esperado) es la que hace tratable el caso $T = \infty$. (Contraste: con $F$ estocástico el pago es $F_{t'}(C^*-1)$, ya no constante, y solo sale $(C^*-1)$ — ver punto 8.)

5. **Ecuación (2) — el valor de la oportunidad para una frontera arbitraria**:
$$X(T) = E_0\{e^{-\rho t'}[V_{t'} - F]\}$$
donde $t'$ es el *first passage time* (primer momento en que $V/F$ toca la frontera $\{C_t\}$, una variable aleatoria), la esperanza se toma sobre esos tiempos de primer cruce, y $\rho$ es la tasa de descuento apropiada (tomada como dada por ahora; se deriva más adelante). $X(T)$ es el valor hoy de la oportunidad que expira en $T$. Elegir la política óptima = elegir la frontera que maximiza $X$.

6. **Caso $T = \infty$: el tiempo calendario desaparece del problema.** El problema se ve idéntico en cualquier fecha (mismo horizonte infinito, mismos parámetros), así que $C_t^* = C^*$ constante. Como el pago al ejercer es la constante $F(C^*-1)$, maximizar (2) se reduce a:
$$\max_C \; F[C - 1] \, E_0[e^{-\rho t'}]$$
El trade-off: subir $C$ agranda el premio $F(C-1)$ pero aleja el umbral (baja $E[e^{-\mu t'}]$, el "factor de descuento esperado" hasta el cruce). Estructura: valor = (cuánto cobro al llegar) × (precio hoy de "1 peso pagadero al llegar al umbral"). Para el GBM ese factor tiene forma cerrada, $E_0[e^{-\mu t'}] = (V_0/(C'F))^{\varepsilon}$, con $\varepsilon$ dado por la ecuación (5); sustituyendo y maximizando en $C'$ salen (4) y $C^* = \varepsilon/(\varepsilon-1)$.

   **Ejemplo completo** ($F = 50$M constante, $V_0 = 70$M, $\mu = 10\%$, $\alpha_v = 2\%$, $\sigma_v = 20\%$): $\varepsilon$ resuelve $\tfrac{\sigma^2}{2}\varepsilon(\varepsilon-1) + \alpha_v\varepsilon - \mu = 0$ → $0.02\varepsilon^2 = 0.10$ → $\varepsilon = \sqrt{5} \approx 2.24$ → $C^* = \varepsilon/(\varepsilon-1) \approx 1.81$. Valor de la opción: $X = 50(1.81-1) \times (1.4/1.81)^{2.24} \approx 40.5 \times 0.564 \approx 22.8$M, contra un VPN de invertir ya de 20M → esperar agrega ~2.8M (14%). La regla VPN clásica (invertir ya) es factible pero subóptima; el max sobre $C'$ tiene forma de U invertida con pico en $C^*$.

7. **Con $F$ también estocástico (1b), la regla sigue siendo un umbral fijo sobre el ratio $V/F$ (argumento de la $k$).** Un problema con todo escalado por $k$ (proyecto de 140 y costo de 100, vs. 70 y 50) es *exactamente el mismo problema*: el GBM está en porcentajes (la $k$ se cancela en $dV'/V'$) y el pago solo queda multiplicado por $k$, que no cambia el argmax. Mismo problema → misma decisión ($B' = B$ para todo $k$) → la regla no puede mirar los niveles de $V$ y $F$, solo lo que sobrevive al escalado: el ratio $V/F$ ("homogénea de grado cero"). Chequeo rápido: una regla tipo "invertir si $V \geq F + 20$" se contradice entre escalas; "invertir si $V \geq C \cdot F$" es idéntica en todas. El Apéndice agrega que el umbral es único: invertir si $V/F \geq C^*$, esperar si no.

8. **Ecuación (3) — el valor con ambos estocásticos.** Como al cruzar el umbral $V_{t'} = C^* F_{t'}$, el pago es $F_{t'}(C^*-1)$: proporcional al costo *que resulte haber* en el momento del cruce (ahora aleatorio). Solo $(C^*-1)$ sale de la esperanza; queda adentro $E_0\{F_{t'}e^{-\mu t'}\}$ = el VP esperado del costo que se pagará el día del cruce. La dificultad: $t'$ y $F_{t'}$ están *enredados* (p. ej., si el costo se desploma, el ratio sube rápido → cruce temprano y $F$ bajo llegan juntos), así que en principio haría falta su densidad conjunta. La frase "fortunately, it is not necessary" anuncia que el Apéndice encuentra un **atajo que esquiva ese cálculo**: medir todo en unidades de $F$ (usar el costo como numerario), con lo cual el problema de dos activos colapsa a uno solo — el ratio $V/F$ — y vuelve a la matemática de primer cruce de un único proceso. Esa reducción es también la razón de que en (5) todos los parámetros entren en forma relativa: $\alpha_v - \alpha_f$, $\sigma^2$ del ratio, $\mu - \alpha_f$.

9. **Ecuaciones (4) y (5) — el resultado central.**
$$X = (C^*-1)\,F_0\left(\frac{V_0}{C^*F_0}\right)^{\varepsilon}, \qquad C^* = \frac{\varepsilon}{\varepsilon-1}$$
con $\varepsilon$ raíz (>1) de una cuadrática en los parámetros, donde entra $\sigma^2 = \sigma_v^2 + \sigma_f^2 - 2\rho_{vf}\sigma_v\sigma_f$: **la varianza del ratio** $V/F$. Estructura: valor = premio × factor de descuento esperado $(V_0/(C^*F_0))^{\varepsilon}$. $\varepsilon$ es la elasticidad del factor respecto del umbral (medida inversa del valor de esperar): $\varepsilon$ grande → $C^*\to 1$ (casi VPN); $\varepsilon\to 1$ → $C^*$ explota. Con $\varepsilon=2$: $C^*=2$, el resultado del abstract.

10. **Condición de buena definición: $\alpha_v < \mu$** (garantiza $\varepsilon > 1$). Si $\alpha_v \geq \mu$, el proyecto crece en expectativa más rápido de lo que descuenta el inversor → siempre conviene esperar un poco más → el valor de la opción es infinito y nunca se invierte.

11. **Conexión con opciones financieras.** Con $F$ fijo, (4) es la fórmula de Samuelson para la **call americana perpetua sobre una acción que paga dividendos** (el "dividendo" = lo que $\alpha_v$ queda por debajo del retorno requerido). $T$ finito no tiene solución analítica: aproximación discreta + programación dinámica (Ingersoll); ídem si los parámetros dependen de $V$, $F$ o $t$.

12. **Estáticas comparativas** (versión extendida: [[Nota - Estáticas comparativas (varianza, correlación y drifts)]]).
    - Valor de la opción y umbral $C^*$ son **crecientes en $\sigma^2$** (varianza del ratio). Razón clásica: más varianza agranda la ganancia máxima posible y deja igual la pérdida máxima (no invertir cuesta 0).
    - Solo importa la varianza del cambio *proporcional del ratio*: sube con $\sigma_v^2$ o $\sigma_f^2$, **baja con la correlación $\rho_{vf}$** (si $V$ y $F$ se mueven juntos, el ratio es estable: cobertura natural).
    - El valor es creciente en $\alpha_v$, decreciente en $\alpha_f$ y en $\mu$ — pero las estáticas de los drifts solos son "poco interesantes": en equilibrio no se puede mover $\alpha_v$ dejando $\mu$ fijo (se ve en la sección siguiente).
    - Caveat (n. 5, Brock-Rothschild-Stiglitz): el resultado de la varianza depende del GBM con parámetros constantes; con una barrera absorbente cercana, más varianza puede *bajar* el valor. En el GBM el cero es barrera absorbente natural pero inalcanzable en tiempo finito.

13. **Scrapping óptimo (ecuación (6)).** Reinterpretando $V$ = valor de venta (aleatorio) y $F$ = valor del proyecto en marcha, el pago de desguazar es $V-F$ y la regla es simétrica: vender cuando $F/V$ **cae** a $c^* = (\varepsilon-1)/\varepsilon = 1/C^* < 1$. La firma espera hasta que el proyecto valga *menos* que su valor de venta por un margen positivo. Misma intuición: esperando se captura la suba de $V-F$ y se está protegido de la baja. (Caso especial: fórmula de Merton para la put perpetua.)

### Apéndice — qué hace y por qué (versión extendida con guion: [[Nota - Apéndice del paper (qué hace y por qué)]])

Objetivo: calcular $L \equiv E_0\{F_{t'}e^{-\mu t'}\}$, la esperanza de la ecuación (3). Tres movimientos:

1. **De probabilidad a ecuación diferencial.** En vez de atacar la esperanza con la densidad conjunta de $F_{t'}$ y $t'$ (intratable), usa un teorema tipo Feynman-Kac (cita: Malliaris-Brock 1982, Thm. 7.5): *la esperanza, vista como función del estado inicial $(V_0, F_0)$, satisface una ecuación en derivadas parciales* — la (A.2). Es el mismo movimiento que en Black-Scholes: las distribuciones desaparecen y queda un problema de EDP con condiciones de frontera: (i) si arrancás ya en el umbral, cobrás ya: $L = F$ cuando $V/F = C^*$; (ii) si arrancás infinitamente lejos, no cobrás nunca: $L \to 0$ cuando $V/F \to 0$.
2. **Adivinar y verificar (guess and verify).** Propone la forma $L = kF^a C^b$ (potencia del costo y del ratio — acá entra la homogeneidad). Al sustituir: la EDP se satisface; la condición (i) fuerza $a = 1$ y $k = C^{*-b}$; y la EDP se reduce a la **cuadrática en $b$**: $\mu = \tfrac{1}{2}b(b-1)\sigma^2 + b\alpha_v + (1-b)\alpha_f$. La condición (ii) exige la raíz positiva → $b = \varepsilon$: **así nace la ecuación (5)**. Con esto queda la (4), válida para $C^*$ *arbitrario*; elegir el óptimo equivale a imponer una condición de frontera extra, conocida como *smooth pasting* / *high contact*.
3. **Unicidad de la región de parada $[C^*, \infty)$.** Por absurdo: si conviniera ejercer con ratio $C_0$ pero no con un ratio mayor $C_1 > C_0$, usando la homogeneidad de grado 1 de $X$ eso equivaldría a "ejercer la oportunidad idéntica de costo alto y no la de costo bajo" — dominancia que nunca es óptima para una call (Cox-Rubinstein). Contradicción → la región de inversión es un solo intervalo.

**Frase para la presentación**: "La esperanza de (3) se evalúa en el Apéndice: por un resultado tipo Feynman-Kac se la caracteriza como solución de una EDP, se la resuelve proponiendo una función potencia — y la condición para que la potencia funcione es exactamente la cuadrática que define $\varepsilon$ en (5) — y se verifica por un argumento de dominancia que la región de inversión es un único intervalo $[C^*,\infty)$."

### Tasa de descuento correcta — ver [[Nota - Tasa de descuento correcta (diversificación, Itô y CAPM)]]

Resumen: aversión al riesgo sin función de utilidad — la opción pertenece a inversores diversificados que solo cobran por riesgo sistemático (CAPM). Itô aplicado a $X(V,F)$ revela que la opción es un portafolio disfrazado ($\varepsilon$ de riesgo-$V$, $1-\varepsilon$ de riesgo-$F$) → en equilibrio $\mu = \varepsilon\bar{\alpha}_v + (1-\varepsilon)\bar{\alpha}_f$. Ojo: $\sigma^2$ total (idiosincrática incluida) mueve el valor de la opción; la aversión al riesgo solo entra por $\mu$.

Los $\delta$ ($\delta_v$ = costo de esperar / payout no cobrado; $\delta_f$ = ganancia de diferir el pago) también están en esa nota — son las perillas económicas correctas que reemplazan a los drifts. Ahí está también el **caso determinístico** (ecs. 13-14'): con $\sigma = 0$ el umbral es $C = \delta_f/\delta_v \neq 1$ — la regla VPN falla incluso sin incertidumbre; con $\sigma^2 > 0$ se agrega la cuña $h > 0$ (valor de opción puro). Dos motivos para esperar: valor tiempo de los flujos + valor de seguro.

### Salto a cero — ver [[Nota - Jumps in Vt (vencimiento aleatorio)]]

Resumen: $V$ puede saltar a cero (Poisson, intensidad $\lambda$) = la opción tiene **vencimiento aleatorio**. La integral (16) promedia $X(T)$ sobre la fecha de muerte exponencial, y el resultado (17) es el mismo problema de antes con $\mu \to \mu + \lambda$: la mortalidad es una prima sumada a la tasa de descuento (Merton). Como el salto es idiosincrático no lleva premio de riesgo. $\lambda \uparrow$ → opción vale menos y umbral más bajo (la muerte apura). Contraste con Merton 1976 (resultado opuesto, por qué se mantiene fijo en equilibrio).

---

## Sección IV — Ejemplos numéricos

*Versión extendida — tablas completas, cómo leer cada celda, diseño "estrella" y la lomita de $C^*$: [[Nota - Tablas de la Sección IV (cómo leerlas)]].*

1. **Caso base de las Tablas I y II**: $\sigma_v^2 = \sigma_f^2 = 0.04$ (σ = 20%, calibrado al desvío promedio del equity estadounidense desapalancado — Stoll-Whaley), $\delta_v = \delta_f = 0.10$, $\rho_{vf} = 0$, $\lambda = 0$, evaluado en $V = F = 1$. Resultado: **la opción de timing vale 0.23 por cada dólar de $V$, y el disparador es $V/F = 1.86$**.

2. **Qué miden las tablas.** Sin opción de timing, la oportunidad valdría $\max(0, V_0 - F_0)$ (ejercer ya o nunca). El valor de la opción de timing = oportunidad perpetua − ese máximo. Las entradas de la Tabla I son **la pérdida por dólar de $V$ de invertir en $V/F = 1$ en vez de esperar al momento óptimo** (cota superior: 1.00, porque la opción nunca vale más que $V$). La Tabla II da el disparador $C^*$.

3. **El titular**: el disparador es típicamente mucho mayor que 1 — para parámetros razonables, **conviene esperar hasta que $V$ supere $2F$**. Solo se invierte en $V = F$ si $\sigma^2 = 0$ o $\delta_v = \infty$ (los dos casos extremos anunciados en la intro).

4. **Sensibilidades**: valor y umbral muy sensibles a la varianza y a $\delta_v$ (sobre todo cerca de $\delta_v = 0$, donde $X \to V$ y $C^* \to \infty$); menos sensibles a $\delta_f$. Para opciones que ya valen poco (mucha $\delta_v$), incluso subir $\lambda$ de 0 a 0.25 casi no cambia nada — su valor ya es principalmente por varianza.

5. **Tabla III — % del valor debido a la incertidumbre** (comparando la (4) con la (13) determinística): crece con $\sigma^2$ y con $\delta_v$ (manteniendo $\delta_f$ fijo). Si $\delta_v \geq \delta_f$, **el 100% del valor es por incertidumbre** (sin ella, esperar sería subóptimo). Caveat (n. 14): las tablas suponen que cambiar $\sigma$ no mueve los $\bar{\alpha}$ — válido si el riesgo extra es no-sistemático.

---

## Sección V — Ejemplo: la decisión de inversión de un monopolista

1. **El punto de la sección**: derivar $V$, $\delta_v$ y el valor de la opción **desde parámetros reales exógenos** (tecnología y demanda), no asumirlos. Setup: producción Cobb-Douglas $Q = K^{\gamma}L^{\beta}$ (capital fijo, trabajo elegido cada instante para maximizar beneficio), demanda isoelástica $P = \theta Q^{-1/\eta}$, con el shock de demanda $\theta$ siguiendo un GBM (23).

2. **Resultado**: los beneficios maximizados son $B\theta^{\bar{\gamma}}$ (potencia del shock, $\bar{\gamma} > 1$), y el proyecto perpetuo vale $V = B\theta^{\bar{\gamma}}/(\bar{\alpha}_v - \alpha_v)$ (24) — flujo sobre brecha, como una perpetuidad. Las ecs. (25)-(26) derivan $\bar{\alpha}_v$ (vía CAPM sobre el riesgo heredado de $\theta$) y muestran que $\delta_v$ = el payout ratio del proyecto instalado. Todo el modelo general queda mapeado a elasticidad de demanda, salarios, capital y volatilidad del shock.

3. **Estáticas distintas a las de las Tablas I-II**: acá mover $\sigma_\theta$ también mueve $\bar{\alpha}_v$ y $\alpha_v$ (el riesgo es sistemático si $\rho_{\theta m} > 0$) → **puede pasar que más varianza baje el valor de la opción** (ejemplo numérico del texto con $\eta \approx 1$, $\rho = 0.95$). La estática "limpia" de la Sección III era con todo lo demás fijo.

4. **La debilidad del GBM al desnudo** (los asteriscos de la Tabla IV): para varias combinaciones, $\delta_v < 0$ → nunca conviene invertir, por grande que sea $V$ — implausible para un activo real. Diagnóstico: $\theta$ es un shock *real* y su incertidumbre no debería crecer linealmente con el tiempo para siempre; un proceso **mean-reverting** ("la demanda vuelve a lo normal") lo arreglaría, pero no tiene solución analítica. Nota 15 (IBM): si el valor de IBM fuera GBM, podría hacerse indefinidamente grande respecto de la economía; lo razonable es que el *payout* crezca con $V$, lo que acota a $V$ e induce un $C^*$ finito.

---

## Sección VI — Conclusiones

1. **El mensaje cuantitativo**: el timing importa — la pérdida por adoptar subóptimamente un proyecto de VPN cero está fácilmente en el **10-20% o más del valor del proyecto**.

2. **Limitaciones reconocidas**:
   - *GBM*: más plausible cuando $V, F$ son valores presentes; aun así (Sección V) puede dar resultados indeseables. Especificación más realista: payouts y varianzas como funciones de los precios → valores de opción casi seguramente menores; para precios que no son VP, mean-reverting; en general, métodos numéricos.
   - *Inversión indivisible (lumpy)*: si la inversión fuera divisible y el retorno marginal de invertir poco fuera alto, siempre convendría invertir *algo* — el problema de esperar pierde importancia.
   - *Sin reversión parcial / scrapping posterior*: se ignora que el proyecto adoptado pueda desarmarse después; $V$ podría incluir la opción de desguace, pero la interacción con el timing queda abierta. La reversibilidad entra implícitamente vía depreciación: **más depreciación = más payout = más $\delta_v$ = la opción de timing vale menos**.
