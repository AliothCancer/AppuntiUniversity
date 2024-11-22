#import "../../utils/custom_functions.typ": *

= Esercitazione 1+2: Valvole Cardiache

== Effective Orifice Area (EOA)
#def[Effective Orifice Area][
  È la sezione efficace/effettiva della valvola, si usa per valutare il grado di ostruzione che la valvola provoca.

  Si possono confrontare valvole dello stesso diametro per capire quale è migliore. Un EOA più grande implica più basse cadute di pressione e quindi perdite energetiche minori. 
] 

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
][Si ricava dalla eq. di Bernoulli trascurando v1, ovvero la velocità a monte della valvola.]

- $p_1 $: pressione a valle della valvola
- $p_2 $: pressione a monte della valvola


#pagebreak()
=== Analisi dimensionale EOA
$

= m^3/s / (sqrt(2/(1000"Kg"/m^3) dot cancel("mmHg") dot 133"Pa"/cancel("mmHg"))) \ = m^3/s dot 1/sqrt(0.266N/cancel(m^2) dot m^cancel(3) / "Kg") \ = m^3/s dot 1/(0.516 sqrt(cancel(N) dot m / ((cancel(N) dot s^2) / m)))\ = m^3/s dot 1/(0.516 sqrt( m^2 / (s^2)))\ = 1/0.516 dot (m^2 dot cancel(m))/cancel(s) dot cancel(s)/cancel(m) \ = m^2
\ \ \ \ \
"EOA" = (Q (L/s) dot 10^4 "cm"^2/m^2) / (516L/s/(m^2sqrt("mmHg")) dot sqrt(Delta p ("mmHg")))  
$

=== Formula pronta all'uso
  $
  "EOA"= 10^4/516 (Q) / (sqrt(Delta p))  arrow "cm"^2
  $

  #def_um(
    (
      $Q$, $"dm"^3/s$,
      $Delta p$,$"mmHg"$
    )
  )

== Discharge Coefficient (DC)
  $
  "DC" = "EOA"/A_"int" arrow ["adim."]
  $
  #param[EOA][$"cm"^2$]
  #param[$A_"interna"$][$"cm"^2$]
  

== Performance Index (PI)
  
  $
  "PI" = "EOA" / A_"est" arrow ["adim."]
  $

  #param[EOA][$"cm"^2$]
  #param[$A_"esterna"$][$"cm"^2$]    


== Reverse Flow (RF%)
  $
  "RF%" = V_"rigurgitato" / V_"eiettato" dot 100
  $
  \
  - $V_"rigurgitato" -- #block[È l'area negativa del grafico Portata-Tempo nel ventricolo sinistro.(Left-Ventricle)]$ \ \
  - $V_"eiettato" -- #block[È l'area positiva del grafico Portata-Tempo nel ventricolo sinistro (Left-Ventricle).]$ 

  == Numero di Reynolds (Re)

  $
  "Re" = (rho dot v dot d) / mu 
  $

  - $rho$ : densità sangue 1 $g/"cm"^3$

  - v: velocità del sangue $"cm"/s$

  - d: diametro del condotto $"cm"$

  - $mu$ : viscosità dinamica del sangue 0.03Poise = 0.03 $(g dot "cm") / s$
  \
  #strong("Nota:") Interpretazione del numero di Reynold  
  
  - Re < 2000 #h(2cm) $arrow$  flusso laminare
  - 2000 < Re < 4000 #h(.45cm)$arrow$  Regime di transizione
  - Re > 4000 #h(2cm) $arrow$ Regime turbolento