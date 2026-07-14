# El Apéndice de McDonald-Siegel: qué hace y por qué

*Para la presentación: poder explicar cómo se pasa de la ecuación (3) a las (4)-(5) sin derivarlo. Relacionada: [[Nota - Ideas del paper (McDonald-Siegel 1986)]].*

## El problema que el Apéndice tiene que resolver

El texto principal dejó una deuda: el valor de la opción es $(C^*-1) \times L$, donde

$$L \equiv E_0\{F_{t'}\,e^{-\mu t'}\}$$

— el valor presente esperado del costo el día del cruce. Calcular $L$ "de frente" exigiría conocer la distribución conjunta de dos cosas aleatorias enredadas (cuándo cruzás y dónde está $F$ ese día). El Apéndice existe para esquivar eso. Lo hace en tres movimientos, cada uno con su porqué.

## Movimiento 1: convertir probabilidad en ecuación diferencial

**Qué hace.** Cita un teorema (Malliaris-Brock 1982 — de la familia de resultados **Feynman-Kac**) que dice: una esperanza descontada como $L$, *mirada como función del punto de partida* $(V_0, F_0)$, satisface una ecuación en derivadas parciales — la (A.2). A esa EDP la acompañan dos condiciones de frontera de puro sentido común:

- Si arrancás **ya parado en el umbral**, cobrás inmediatamente: $t' = 0$, entonces $L = F_0$.
- Si arrancás **infinitamente lejos** del umbral ($V/F \to 0$), no llegás nunca: $L \to 0$.

**Por qué lo hace.** Es el gran truco de las finanzas en tiempo continuo — el mismo de Black-Scholes: **cambiar la pregunta "¿cómo se distribuye el futuro?" por la pregunta "¿qué ecuación satisface el valor como función del presente?"**. Las densidades (feas) desaparecen del problema; queda una EDP con datos de frontera (estándar).

## Movimiento 2: resolver la EDP adivinando una potencia

**Qué hace.** No resuelve la EDP con métodos generales — **propone** una solución de la forma $L = k\,F^a\,C^b$ (una potencia del costo y del ratio $C = V/F$) y verifica. Al sustituir en la EDP y usar las condiciones de frontera, en cascada:

- la condición "en el umbral cobro $F$" fuerza $a = 1$ y fija la constante $k = C^{*-b}$;
- la EDP se reduce a **una ecuación cuadrática en el exponente $b$**: $\mu = \tfrac{1}{2}b(b-1)\sigma^2 + b\,\alpha_v + (1-b)\,\alpha_f$;
- la condición "lejos no cobro nada" obliga a tomar la **raíz positiva** de esa cuadrática.

Esa raíz positiva es $\varepsilon$. **Acá nace la ecuación (5)** — no es un conejo de la galera: es la condición para que una función potencia satisfaga la ecuación de no-arbitraje del problema. Armando las piezas ($k$, $a=1$, $b=\varepsilon$) queda la ecuación (4).

**Por qué lo hace.** El *guess* de potencia no es suerte: la homogeneidad del problema (el argumento de la $k$) dice que la solución tiene que ser homogénea de grado 1 en $(V,F)$ y depender del ratio — y las funciones con esa estructura son exactamente las de la forma $F \times (\text{potencia del ratio})$. El Apéndice está *cobrando* en la matemática la simetría que el texto principal demostró económicamente.

**Detalle fino que suma en la presentación**: la fórmula del Apéndice vale para un $C^*$ *arbitrario* — resolver la EDP valúa cualquier regla. Elegir el $C^*$ *óptimo* (lo que el texto hace maximizando) equivale a imponer una condición de frontera adicional, que la literatura llama ***smooth pasting*** o *high contact*. Mencionar ese nombre muestra dónde se conecta el paper con la tecnología estándar de opciones.

## Movimiento 3: verificar que la región de inversión es un solo intervalo

**Qué hace.** Queda el cabo suelto del texto: ¿podría la región de "invertir" ser rara — ejercer con ratio 1.9 pero no con 2.5? El Apéndice lo descarta **por absurdo con un argumento de dominancia**: si conviniera ejercer en $C_0$ pero no en un $C_1 > C_0$, usando la homogeneidad se puede reescribir esa situación como "tengo dos oportunidades idénticas, una con costo alto y otra con costo bajo, y ejerzo la cara dejando viva la barata" — algo que nunca es óptimo para una opción de compra (cita: Cox-Rubinstein). Contradicción → la región de parada es $[C^*, \infty)$, un solo intervalo.

**Por qué lo hace.** Sin esto, la regla "invertir si $V/F \geq C^*$" sería una conjetura. Es el sello de rigor del resultado.

## El guion para la presentación

Si alguien pregunta "¿y cómo pasan de (3) a (4)-(5)?", la respuesta de 30 segundos:

> "Esa esperanza se evalúa en el Apéndice. La idea es la misma que en Black-Scholes: en vez de calcular la distribución de los tiempos de cruce, un resultado tipo Feynman-Kac caracteriza la esperanza como la solución de una ecuación en derivadas parciales, con dos condiciones de frontera naturales — si arrancás en el umbral cobrás ya, si arrancás infinitamente lejos no cobrás nunca. Esa EDP se resuelve proponiendo una función potencia, que es la forma que la homogeneidad del problema exige; la condición para que la potencia funcione es exactamente la cuadrática que define $\varepsilon$ en la ecuación (5). Y un argumento de dominancia à la Cox-Rubinstein verifica que la región de inversión es un único intervalo $[C^*, \infty)$."

## Las dos repreguntas más probables

- **"¿Por qué una potencia?"** → Porque el problema es homogéneo: escalar $V$ y $F$ juntos no cambia nada, así que la solución debe ser $F$ por una función del ratio, y las que resuelven este tipo de EDP son potencias del ratio.
- **"¿De dónde sale que $\varepsilon > 1$?"** → De la condición de frontera "lejos del umbral la opción no vale nada" (selecciona la raíz positiva) más el supuesto $\alpha_v < \mu$; si el proyecto creciera más rápido que el descuento, la opción valdría infinito y nunca convendría ejercer.
