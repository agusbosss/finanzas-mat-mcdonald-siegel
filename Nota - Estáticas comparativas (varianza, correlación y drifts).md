# Estáticas comparativas: varianza, correlación y drifts

*McDonald & Siegel (1986), Sección III, los dos párrafos posteriores a las ecuaciones (4)-(5). Relacionada: [[Nota - Ideas del paper (McDonald-Siegel 1986)]].*

Con la fórmula cerrada en la mano, el paper la "sacude" parámetro por parámetro para ver qué mueve al valor de la opción ($X$) y al umbral ($C^*$).

## Párrafo 1: más varianza → más valor de opción y umbral más alto

**La afirmación.** Tanto $X$ como $C^*$ suben cuando sube $\sigma^2$, la varianza del ratio $V/F$.

Con los números del ejemplo (F = 50, $V_0$ = 70, $\mu = 10\%$, $\alpha_v = 2\%$): pasar de $\sigma = 20\%$ a $\sigma = 40\%$ mueve $\varepsilon$ de 2.24 a 1.55, el umbral $C^*$ de 1.81 a 2.80, y el valor de la opción de 22.8 a ~31 millones. Más incertidumbre = la opción vale más *y* la firma se vuelve más exigente para ejercerla.

**La razón (la asimetría en su forma más pura).** Subir la varianza estira el abanico de futuros de $V/F$ en las dos direcciones, pero el efecto es asimétrico:

- La cola buena te pertenece entera: si el ratio vuela, invertís y cobrás muchísimo → **la ganancia máxima posible creció**.
- La cola mala no te toca: si el ratio se hunde, no invertís y perdés 0, igual que antes → **la pérdida máxima posible quedó donde estaba**.

Estirar una distribución cuando ganás con una cola y estás protegido de la otra solo puede favorecerte. Y por eso también sube $C^*$: si la opción viva vale más, matarla (ejercer) cuesta más → se exige un premio mayor.

**La observación fina: solo entra la varianza del ratio.**

$$\sigma^2 = \sigma_v^2 + \sigma_f^2 - 2\rho_{vf}\,\sigma_v\sigma_f$$

¿Por qué? Porque la regla de inversión depende solo de $V/F$: toda la decisión vive en el ratio, así que la única incertidumbre que puede afectar es la del ratio. La expresión es la varianza de una diferencia (de retornos): las varianzas individuales suman, la covarianza resta. Tres consecuencias:

- $\sigma_v^2 \uparrow$ → más valor de opción (más ruido en el beneficio).
- $\sigma_f^2 \uparrow$ → más valor de opción. Contraintuitivo: ¡que el *costo* sea más incierto también beneficia! Misma lógica: más ruido en el ratio, se captura la cola buena (costo desplomándose) protegido de la mala.
- $\rho_{vf} \downarrow$ → más valor de opción. Al revés se lee mejor: **correlación alta = cobertura natural**. Si $V$ y $F$ se mueven juntos (ambos atados al precio del acero), el ratio casi no fluctúa aunque cada pieza sea volatilísima. Caso extremo: $\sigma_v = \sigma_f$, $\rho = 1$ → $\sigma^2 = 0$ → cero valor de esperar → regla VPN.

**Caveat (nota al pie 5, Brock-Rothschild-Stiglitz).** El resultado depende de que $V$ sea GBM con parámetros constantes. Con procesos que tienen una barrera absorbente cerca del valor actual, más varianza puede *bajar* el valor de la opción (más chance de caer en la trampa). El GBM zafa: su barrera absorbente natural es el cero, inalcanzable en tiempo finito.

## Párrafo 2: los drifts — mecánicamente obvios, económicamente sospechosos

**La parte mecánica.** El valor de la opción es:

- **creciente en $\alpha_v$**: proyecto que se aprecia más rápido → se llega antes al umbral y lo que se recibe vale más → esperar es más barato;
- **decreciente en $\alpha_f$**: costo que crece rápido → la espera erosiona el pago (el strike te persigue);
- **decreciente en $\mu$**: descuento más alto pulveriza pagos tardíos.

(En la cuadrática de $\varepsilon$ entran como $\alpha_v - \alpha_f$ y $\mu - \alpha_f$.)

**La advertencia: "comparative statics for the drifts alone are uninteresting".** Línea clave para no usar mal el modelo. El ejercicio "subo $\alpha_v$ manteniendo $\mu$ fijo" **compara mundos que no pueden existir a la vez**: en equilibrio, lo que un activo rinde y lo que los inversores le exigen no son perillas independientes — ambos están atados al riesgo del activo (vía CAPM, en la sección siguiente del paper). Si el proyecto rindiera más sin cambiar su riesgo, los inversores diversificados se abalanzarían y el precio se ajustaría.

La variable económicamente significativa no es el drift solo sino la **brecha** $\delta = \bar{\alpha} - \alpha$ (retorno requerido menos apreciación efectiva), que para un proyecto instalado es su **tasa de payout**: el flujo que paga y que, por esperar, no se cobra. Esa brecha sí se puede mover con sentido económico y es la que gobierna el costo real de esperar.

**Moraleja para la presentación:** las derivadas respecto de $\sigma^2$ y $\rho_{vf}$ son economía de verdad; las derivadas respecto de $\alpha_v$ o $\mu$ aislados son artefactos algebraicos — y el propio paper avisa que no se las tome en serio.
