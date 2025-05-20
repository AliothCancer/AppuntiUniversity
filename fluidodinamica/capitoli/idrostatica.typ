#import "../../utils/custom_functions.typ": def_um
#import "../../utils/latest_style.typ": styled_box_presentation


//#show <forza_piana>: set text(color.red);

#set math.equation(numbering: "1.")
#set page(columns: 1)

#import "../../utils/latest_style.typ": styled_box_presentation



= Idrostatica

== Pressione idrostatica
$
  p = rho g h
$
#def_um(
  (
    "h: "+ $" profondità"$, $m$,
    $rho: "densità"$, $"kg"/(m^3)$
  )
)


//#colbreak()

== Forza complessiva su parete piana
$
  F = integral_A p(y) dot dif A =\ =  integral_A rho g y sin(alpha) dif A = \
  = rho g sin(alpha) dot integral_A y dif A\ \ rho g sin(alpha) dot y_G A\ "\n\noppure\n\n"\  rho g h_G A

$<forza_piana>

- $p_g = rho g h_g$
- $h_g = y_G dot sin(alpha)$
- $h_g = y_G dot sin(alpha)$
#def_um(
  (
    $h_g$, "Profondità del centro di massa.",
    $h_g$, "Profondità del centro di massa."
  )
)
//#colbreak()
#let show_yaml = true;
#show <yaml>: a => {
  if show_yaml{
    a
  }
}

== Calcolo del centro di Pressione
Calcolo del centro di pressione di una superficie:
#{

  show math.equation: set align(left)
  $
    circle.filled.small L: "Lunghezza" \
    circle.filled.small b: "Estensione"\
    circle.filled.small A: "Area = "L · b\
    circle.filled.small alpha: "Inclinazione del piano"
  $
}

La formula di partenza è il bilancio dei momenti agenti sulla superficie immersa:
$
  F dot c_p = integral_A p(y) dot y dif A
$<eq4>

Per F vale la #link(<forza_piana>)[equazione 2]:
$
  F = rho g h_G A =\ = rho g y_G sin(alpha) L b
$

$y_G$: Profondità nella direzione dell'inclinazione

Mentre per la parte di destra della #link(<eq4>)[equazione 4]:
$
  integral_A p(y) dot y dif A = rho g sin(alpha) integral_A y^2 dif A\
  "Poichè:" I_x = integral_A y^2 dif A
 \
  arrow.double rho g sin(alpha) I_x 
  
$

Sostituendo:

  $
    cancel(rho g sin(alpha)) y_G A dot c_p = cancel(rho g sin(alpha)) I_x\ \
    y_G A dot c_p = I_x
  $

Applicando il teorema degli assi paralleli:

$ I_x = I_(x,G) + y_G A $

Possiamo scrivere:
$
 y_G dot A dot c_p =   I_(x,G) + y_G^2 A \
 c_p =  I_(x,G) / (y_G dot A)   + (y_G^2 A) / (y_G dot A) \
$
$
  arrow.double #h(1.5cm) c_p = I_(x,G) / (y_G dot A) + y_G
$

=== Momento d'inerzia
Di seguito le formule per i momenti di inerzia $I_(G,x)$ per diverse forme:
$
  "Rettangolo:" \
  I_(G,x) = (b L^3)/12
$
Nota. \
La lunghezza L è perpendicolare all'asse neutro, per capirci 
la linea che si manifesta nel piegare esageratamente la superficie
con i momenti agenti.

$
  "Cerchio"\
  I_(G,x) = (pi R^4)/(64)
$
 

= Title 1
== Title 2
=== Title 3
==== Title 4
===== Title 5