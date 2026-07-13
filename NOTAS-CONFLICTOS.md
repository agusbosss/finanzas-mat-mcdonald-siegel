# Puntos a revisar con el grupo

Cosas para revisar y coordinar entre las partes antes de cerrar la
presentación. Orden de exposición: **Felipe → Elias → Mariano → Agustín**.

---

## 1. Solapamientos de contenido (un mismo tema tratado en dos partes)

**1.1 El caso de costo de inversión fijo (F constante)**
En el modelo general V y F son estocásticos. Cuando F es constante (σf = 0,
αf = 0) el problema colapsa a una sola variable, V, y se vuelve la opción
americana perpetua clásica, con solución analítica cerrada.
- Felipe, en "Caso especial: costo de inversión fijo", lo presenta como una
  simplificación del modelo general de dos variables.
- Elias, en E2 "Umbral de inversión: el caso F constante", lo usa como punto de
  partida pedagógico para después construir el modelo general.
- Los dos arrancan del mismo caso pero con lógica opuesta (Felipe va de lo
  general a lo particular; Elias, de lo particular a lo general), y aparece en
  dos momentos distintos de la charla.

**1.2 El CAPM y la tasa de descuento μ**
Para valuar la opción hace falta una tasa de descuento μ que refleje el riesgo.
El paper la obtiene con el CAPM, bajo el supuesto de que los inversores están
bien diversificados (solo importa el riesgo sistemático).
- Felipe tiene una slide "CAPM" que introduce ese supuesto y anticipa que el
  CAPM servirá para obtener μ.
- Mariano (M1–M2) hace la derivación efectiva: aplica Itô y el CAPM y llega a
  μ = εα̂v + (1−ε)α̂f.
- Los dos tocan el CAPM. Hay que ver cuánto dice cada uno para que la slide de
  Felipe quede como introducción y no repita lo que después desarrolla Mariano.

**1.3 El vencimiento incierto y el salto de Poisson (μ → μ+λ)**
Si el proyecto puede volverse obsoleto de golpe (V cae a cero de un salto), se
modela con un salto de Poisson de intensidad λ y el riesgo se absorbe sumando λ
a la tasa de descuento (μ → μ+λ).
- Felipe lo menciona en "¿Y si la oportunidad puede vencer?".
- Mariano lo desarrolla a fondo en "Saltos en Vₜ" e "Impacto de la
  obsolescencia" (proceso mixto Poisson–Wiener, valor X*, la ε con λ, y la
  comparación con Merton 1976).
- Agustín lo aplica numéricamente (bloque de λ en las Tablas I y II, y en las
  estáticas).
- El mismo tema aparece en tres partes; hay que ver que Felipe no adelante lo
  que después profundiza Mariano.

**1.4 Las estáticas comparativas**
Cómo cambian el valor de la opción y el umbral C* al mover los parámetros.
- Elias (E9) las presenta de forma analítica/cualitativa, en función de α: el
  valor de la opción crece con σ², crece con αv, y decrece con αf y con μ.
- Agustín las presenta de forma numérica a partir de las Tablas I y II, en
  función de δ: efecto de σ², δf, δv, ρvf y λ.
- Las dos slides se llaman casi igual ("Estáticas comparativas") y encima usan
  notación distinta: "el valor crece con αv" (Elias) y "el valor baja si δv
  sube" (Agustín) son lo mismo (porque δv = α̂v − αv), pero dicho al revés, lo
  que puede confundir.

**1.5 "Con T finito no hay solución analítica"**
Con fecha de vencimiento fija (T < ∞) la frontera óptima de ejercicio depende
del calendario y no hay fórmula cerrada: se necesitan métodos numéricos.
- Felipe lo dice en "¿Y si la oportunidad puede vencer?".
- Elias lo repite en E8 "Aclaraciones" (citando a Ingersoll, 1977).
- La misma afirmación aparece en las dos partes.

---

## 2. Falta que Mariano confirme

**X\***: en el borrador de Mariano, X* se usaba a la vez para el valor de la
opción (slide "Saltos en Vₜ") y para la tasa de descuento requerida (slide
"Impacto de la obsolescencia"). Al pasarlo a las láminas quedó X* solo para el
valor de la opción, y la tasa se escribió como "r + ε(α̂v − r)", sin símbolo.
Falta que Mariano confirme si está de acuerdo o si prefiere ponerle un nombre a
esa tasa.

---

## 3. Pendiente final

- Borrar las 4 diapositivas divisorias (nombres de los integrantes) — se hace al
  final de todo.
