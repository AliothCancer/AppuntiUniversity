#import "../../utils/custom_functions.typ": def_um
#import "../../utils/latest_style.typ": styled_box_presentation

#set page(columns: 2)

#import "../../utils/latest_style.typ": styled_box_presentation

#set page(columns: 2)

= Idrostatica

== Pressione idrostatica
$
  p = rho g h
$
#def_um(
  (
    "h: "+ $" profondità"$, $m$,
    "h: "+ $" profondità"$, $m$,
    $rho: "densità"$, $"kg"/(m^3)$
  )
)
)

#colbreak()
#colbreak()
== Forza complessiva su parete piana
$
  F = integral_A p(y) dot dif A =  integral_A rho g y sin(alpha) dif A = \ 
  = rho g sin(alpha) dot integral_A y dif A =\ = rho g sin(alpha) dot y_G  
 
$

- $p_g = rho g h_g$
- $h_g = y_G dot sin(alpha)$
- $h_g = y_G dot sin(alpha)$
#def_um(
  (
    $h_g$, "Profondità del centro di massa.",
    $h_g$, "Profondità del centro di massa."
  )
)

#colbreak()

== Domani
#lorem(200)