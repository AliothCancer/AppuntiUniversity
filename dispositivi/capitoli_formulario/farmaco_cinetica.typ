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

== Relazione Concentrazione e Tempo

Basata sul modello monocompartimentale, tiene conto di:
-  concentrazione iniziale
-  concentrazione finale
-  volume di distribuzione del farmaco
-  clearance plasmatica per quel farmaco
\
$
C(t) = C_0 dot e^(-k_"tot" t)
$