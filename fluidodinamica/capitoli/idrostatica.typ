#import "../../utils/custom_functions.typ": def_um
#import "../../utils/latest_style.typ": styled_box
= Idrostatica


#styled_box(contenuto:[
== Pressione idrostatica
$
  p = rho g h
$
#def_um(
  (
    "h: profondità", $m$,
    $rho: "densità"$, $"kg"/(m^3)$
  )
)])

\

#styled_box(contenuto:[
== Forza complessiva su parete piana
$
  F = L dot b dot p_g = ...\
  ...= L dot b dot rho g h_g = L b rho L/2= ...\
  ...= rho g (b L^2)/2
$

- $p_g = rho g h_g$
- $h_g = L/2$
#def_um(
  (
    $h_g$, "Profondità del centro di massa, pari a "+$L/2$ + "nel caso di parete piana (rettangolare)."
  )
)

])
