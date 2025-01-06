#import "../../utils/custom_functions.typ": def_um

= Farmacocinetica

== Volume apparente
- In generale è volume plasma + volume interstiziale

$ V_"app" = "M" dot V_d $

#def_um((
  $M: "massa paziente"$, $"Kg"$,
  $V_d: "volume di distribuzione"$, $"L/Kg"$
))

== Clearance Plasmatica $("CL"_"plasma")$
 - Simbolo: $ space "CL"_"plasma" $
 
 - Unità di misura: $ "mL"/"min" = ("cm"^3)/"min" $


$ "CL"_"plasma" = D / "AUC" arrow ["mL"/"min"] $

#def_um(
  (
    $D: "dose farmaco"$, $"mg"$,
    $"AUC": "area under the curve"$, $("mg" dot "min") "/ mL"$
  )
)

== Coefficiente di eliminazione $(k_"tot")$

$
k_"tot" = "CL"_"plasma" / V_"app" arrow [1/"min"]
$

== Concentrazione e Tempo: Infusione non continua


Basata sul modello monocompartimentale, tiene conto di:
-  concentrazione iniziale
-  concentrazione finale
-  volume di distribuzione del farmaco
-  clearance plasmatica per quel farmaco
\
$
C(t) = C_0 dot e^(-k_"tot" t) -> [(m g)/ (m l)]
$


== Concentrazione e Tempo: Infusione continua

$
C(t) = I_0/(k_"tot" V_"app") (1-e^(k_"tot" t)) -> ["mg"/"ml"]
$

#def_um((
  $I_0: "portata massica del farmaco"$, $"mg/mL"$,
  $V_"app": "volume apparente"$, $"mL"$
))

== Concentrazione e Tempo: Infusione continua + assorbimento


$ C(t) = (f dot D)/V_"app" dot k_a / ( (k_"tot" - k_"a")) (e^(-k_"a" t) - e^(-k_"tot"  t)) -> ["mg"/"ml"] $

$*f dot D = A_0$

#def_um((
  $k_a: "costante di assorbimento"$, $"min"^(-1)$,
  $f: "frazione della dose (D) efficacie"$, $"adim."$,
  $D: "quantità della dose"$,$"mg"$,
  $A_0: "dose assorbita"$, $"mg"$
))
#pagebreak()

== Tempo di picco concentrazione
- Modello ad un compartimento

$
T_"max" = 1 / ( k_a - k_"tot") ln (k_a / k_"tot") -> ["min"]
$