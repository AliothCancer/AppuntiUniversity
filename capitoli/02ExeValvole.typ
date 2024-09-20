#import "../custom_functions.typ": *

= Esercitazione: Valvole

#definition[Effective Orifice Area][
  È la sezione efficace/effettiva della valvola, si usa per valutare il grado di ostruzione che la valvola provoca.

  Si possono confrontare valvole dello stesso diametro per capire quale è migliore. Un EOA più grande implica più basse cadute di pressione e quindi a perdite energetiche minori. 
] 

== Effective Orifice Area (EOA)
#let formula_caption(formula, content) = {
  //set page(margin: auto)
  set text(size: 12pt)
  grid(
    align: center,
    formula,
    v(.3cm),
    grid.cell(content),
    v(.5cm)
  )
}



$
  "EOA" = Q_"peak" / v_2
$

- $Q_"peak"$: Portata massima, si ha durante il picco di pressione massimo

- $v_2$: Velocità a valle della valvola


#formula_caption[
  $
    v_2 = sqrt(2 / rho dot (p_1 - p_2)) = sqrt(2/rho dot Delta p)
  $
][Nota: Si ricava dalla eq. di Bernoulli trascurando v1, ovvero la velocità a monte della valvola.]

- $p_1 $: pressione a valle della valvola
- $p_2 $: pressione a monte della valvola

\
Poichè $rho$ è costante del sangue (1003 kg/m³) si ha:
$
  sqrt(2/1003). = 51.6 sqrt("cm"^2 / (s^2 dot "mmHg")) 
$


- $Q_"peak"$: va messa in *m³/s*
- Pressioni: vanno messe in *mmHg*

=== Analisi dimensionale EOA
$

= m^3/s / (sqrt(2/(1000"Kg"/m^3) dot cancel("mmHg") dot 133"Pa"/cancel("mmHg"))) \ = m^3/s dot 1/sqrt(0.266N/cancel(m^2) dot m^cancel(3) / "Kg") \ = m^3/s dot 1/(0.516 sqrt(cancel(N) dot m / ((cancel(N) dot s^2) / m)))\ = m^3/s dot 1/(0.516 sqrt( m^2 / (s^2)))\ = 1/0.516 dot (m^2 dot cancel(m))/cancel(s) dot cancel(s)/cancel(m) \ = m^2
\ \ \ \ \
"EOA" = (Q (L/s) dot 10^4 "cm"^2/m^2) / (516L/s/(m^2sqrt("mmHg")) dot sqrt(Delta p ("mmHg")))  
$

=== Formula Definitiva EOA
$
\
"EOA" = 10^4/516 (Q) / (sqrt(Delta p))  arrow "cm"^2
$

#align(center, [
  - Q : $L/s$
- $Delta p$ :  mmHg
])