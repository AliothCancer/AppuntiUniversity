#import "style.typ": apply_style
#import "custom_functions.typ": definition


#let title = align(center)[
  #text(
    "Formulario di Dispositivi itps",
    30pt)
  
]

#let def(formula, unit) = {
  //set text(rgb("#000000"), 1em, weight: "bold")
  text(strong("· "), 1.4em, weight: "bold") + formula + $med med arrow med med$
  
  show text: set text(blue)
  show math.equation: set text(blue)
  unit + "\n" 
} 

#title
#apply_style[
#outline(indent: true)
#pagebreak()

= Valvole cardiache
== Effective Orifice Area (EOA)
  $
  "EOA" = 10^4/516 (Q) / (sqrt(Delta p))  arrow "cm"^2
  $
  #def[Q][Litri/secondo]
  #def[$Delta p$][mmHg]

== Discharge Coefficient (DC)
  $
  "DC" = "EOA"/A_"int" arrow ["adim."]
  $
  #def[EOA][$"cm"^2$]
  #def[$A_"interna"$][$"cm"^2$]
  

== Performance Index (PI)
  $
  "PI" = "EOA" / A_"est" arrow ["adim."]

  $
  #def[EOA][$"cm"^2$]
  #def[$A_"esterna"$][$"cm"^2$]    

#pagebreak()
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

  - $mu$ : viscosità del sangue 0.03Poise = 0.03 $(g dot "cm") / s$
  \
  #strong("Nota:") Numero di Reynold  
  
  - Re < 2000 #h(2cm) $arrow$  flusso laminare
  - 2000 < Re < 4000 #h(.45cm)$arrow$  Regime di transizione
  - Re > 4000 #h(2cm) $arrow$ Regime turbolento
]