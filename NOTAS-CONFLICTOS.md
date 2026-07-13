# Conflictos y solapamientos a revisar con el grupo

Revisión cruzada en profundidad de las cuatro partes. Organizado por tipo;
cada punto trae una sugerencia para charlar. Lista viva: se actualiza a medida
que avanzamos.

**Orden actual de exposición:** Felipe → Elias → Mariano → Agustín.

---

## 1. Solapamientos de contenido (mismo tema en dos partes)

**1.1 Caso F constante / costo fijo**
- Felipe: "Caso especial: costo de inversión fijo" (σf = 0, αf = 0).
- Elias: E2 "Umbral de inversión: el caso F constante" + E3 "Vida infinita".
- Tensión de enfoque: Felipe lo presenta como *caso especial* del modelo general;
  Elias lo usa como *puerta de entrada* pedagógica para construir el modelo.
- **Sugerencia:** definir quién introduce el caso. P. ej. Felipe solo lo nombra
  como caso límite y Elias lo desarrolla como entrada.

**1.2 Vida infinita (T = ∞)**
- Felipe: supuesto mencionado en "El problema de inversión".
- Elias: E3 "Vida infinita: el umbral se vuelve constante" (lo desarrolla).
- OK como mención → desarrollo, pero confirmar que no suene repetido.

**1.3 CAPM / tasa de descuento**
- Felipe: slide "CAPM" (setup: inversores diversificados + el CAPM da μ).
- Mariano: M1–M2 (derivación efectiva de μ vía CAPM).
- **Sugerencia:** Felipe deja el setup, Mariano el desarrollo. Que el discurso
  no se repita.

**1.4 Poisson / vencimiento incierto (μ → μ+λ)**
- Felipe: "¿Y si la oportunidad puede vencer?" (menciona el salto de Poisson).
- Mariano: M7 "Saltos en Vₜ" + M8 "Impacto de la obsolescencia" (desarrollo
  completo: proceso Poisson–Wiener, X*, ε con λ, Merton 1976).
- Agustín: Tablas I/II bloque 2 y estáticas usan λ.
- **Sugerencia:** Felipe lo menciona al pasar, Mariano lo desarrolla, Agustín lo
  aplica. Ver que Felipe no adelante demasiado.

**1.5 Desguace / abandono**
- Felipe: "Un mismo marco" lo menciona (una viñeta).
- Mariano: M6 "Desguace óptimo del proyecto" (desarrollo).
- OK como mención → desarrollo.

**1.6 Estáticas comparativas**
- Elias: E9 "Estáticas comparativas" (analíticas, en función de α: X crece en αv,
  decrece en αf y μ, y crece en σ²).
- Agustín: "Estáticas comparativas de las Tablas I y II" (numéricas, en función de
  δ: σ², δf, δv, ρvf, λ).
- Se pisan el título y el tema, y encima con notación distinta (α vs δ). Ojo: "X
  crece en αv" (Elias) y "valor baja si δv sube" (Agustín) son lo mismo (δv =
  α̂v − αv), pero dicho al revés → puede confundir.
- **Sugerencia:** Elias cualitativo/analítico, Agustín numérico; cambiar uno de
  los dos títulos y aclarar que describen el mismo fenómeno.

**1.7 Sumario / hoja de ruta**
- Felipe: "Sumario" (índice de 4 puntos).
- Elias: E1 "La sección: qué se deriva" (índice de 3 pasos).
- Dos índices parecidos. Ver si se unifican o se diferencian claramente.

**1.8 Monopolista**
- Felipe: "Un mismo marco" lo menciona (una viñeta).
- Agustín: dos slides completas (Sección V).
- OK como mención → desarrollo.

**1.9 "T finito → no hay solución analítica"**
- Felipe: en "¿Y si vence?".
- Elias: en E8 "Aclaraciones" (Ingersoll 1977).
- La misma afirmación en dos lugares. Ver cuál la queda.

**1.10 Valor que agrega la incertidumbre**
- Mariano: M5 (término h, "valor de esperar").
- Agustín: Tabla III "El peso de la incertidumbre" (% del valor atribuible a la
  incertidumbre, ec. 4 vs 13).
- Relacionados: Agustín cuantifica lo que Mariano plantea. Que se conecten.

---

## 2. Inconsistencias de notación (IMPORTANTE — conviene unificar)

**2.1 Retorno requerido de V: α̂v (Mariano) vs ᾱv (Agustín)**
- Mariano: **α̂v** (sombrero) = retorno de equilibrio exigido a V; δv = α̂v − αv.
- Agustín (monopolista): **ᾱv** (barra) = r + φ·ρθm·γ·σθ; δv = ᾱv − αv.
- Mismo concepto, símbolo distinto. **Unificar a uno solo** (sombrero o barra).

**2.2 El "dividendo" δ de Felipe vs δv de Mariano — el punto más delicado**
- Felipe: δ = μ − αv ("rendimiento por dividendos"); condición αv < μ.
- Mariano: δv = α̂v − αv ("costo de oportunidad"); y en M2, μ = εα̂v + (1−ε)α̂f
  es la tasa de descuento de la *opción* (promedio ponderado).
- Si el μ de "δ = μ − αv" es el retorno exigido a **V** (α̂v), entonces δ = δv y
  todo cierra. Pero Mariano define μ como el retorno de la **opción** (ponderado),
  que no es α̂v. Con el mismo símbolo μ para dos cosas, "αv < μ" y "δv > 0"
  parecen condiciones distintas cuando deberían ser la misma.
- **Sugerencia:** reconciliar. Dejar explícito que el μ de Felipe/Elias (en
  δ = μ − αv y αv < μ) es el retorno exigido a V, y que **αv < μ ⟺ δv > 0 ⟺
  ε > 1**. Es el punto que más conviene cerrar entre todos.

**2.3 Nombre de δ: "rendimiento por dividendos" (Felipe) vs "costo de
oportunidad" (Mariano)**
- Mismo objeto, dos nombres. Alinear el término.

**2.4 Umbrales: C*, c*, Ĉ, Cₜ***
- C* (sobre V/F), c* (sobre F/V, desguace — Mariano M6), Ĉ (determinístico,
  Mariano M5 = δf/δv), Cₜ* (con calendario, Elias E2).
- Es correcto que sean distintos, pero conviene una línea que aclare las
  variantes para que no confundan.

---

## 3. Flujo y orden (usar-antes-de-definir)

**3.1 μ (tasa de descuento)** se usa en Felipe y Elias, pero se deriva recién en
Mariano. Es el orden del paper (modelo primero, tasa después) y Mariano M1 lo
reconoce ("hasta acá se dio por sentada μ"). La slide CAPM de Felipe ya avisa que
"se retoma más adelante" — confirmar que ese "más adelante" tenga sentido en el
orden final.

**3.2 δ / δv, δf:** Felipe mete "δ" antes de que Mariano defina δv, δf. Ligado al
punto 2.2.

**3.3 ε aparece dos veces en forma cerrada:** Elias E5b (en α) y Mariano M3 (en
δ), más la cuadrática de Elias E6b. El público ve la fórmula de ε dos veces con
variables distintas. **Aclarar que es la misma ε** (ec. 5 = ec. 12 del paper),
reescrita.

---

## 4. Cierre circular en la parte de Agustín (coordinar)

Las Conclusiones de Agustín listan como limitaciones: **MBG**, **inversión
indivisible**, **irreversibilidad total**.
- "Inversión indivisible" = el supuesto nuevo de Felipe ("inversión toda de una
  vez, no por etapas").
- "Irreversibilidad total" = la Motivación de Felipe (irreversibilidad).
- "MBG" = introducido por Felipe; sus límites en la slide de Agustín "Los límites
  del supuesto browniano".
- Buen cierre circular, pero coordinar que Agustín **retome** lo que Felipe
  planteó (no como si fuera nuevo).

---

## 5. Notas de notación ya resueltas (dejar registradas)

**5.1 X\* (Mariano):** en su borrador lo usaba para el valor de la opción (M7) y
también para la tasa requerida (M8). Al implementar dejé X* solo para el valor;
la tasa quedó como "r + ε(α̂v − r)" sin símbolo en conflicto. Confirmar con
Mariano.

---

## 6. Pendientes generales

- Confirmar la **fecha** de la presentación (placeholder "julio de 2026").
- **Largo total:** ~47 láminas y creciendo. Repartir tiempos por orador.
- Borrar las 4 diapositivas **divisorias** (nombres de integrantes) en la versión
  final.
