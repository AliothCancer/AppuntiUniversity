#import "latest_style.typ": apply_my_style

#let ind = h(2em)
#let col(body) = columns(2, body)
#apply_my_style(title: "Formulario di Applicazioni ITPS")[

  
  = Biocompatibilità
#columns(2)[

  == Costante di affinità K
  $
    K = ["PS"] / ([P][S])
  $

  
  - \[PS\] $"ng"/"cm"^2$: Densità dei siti di legame occupati.

  - \[P\] $"ng"/"ml"$: Concentrazione della soluzione contente la biomolecola che aderisce al biomateriale
]
  = Emodialisi
#col[
  == Concentrazione soluto
  $
  C = dot(m) / Q
  $

  == Cleareance
  $
  Q_"cleareance" = Q_"plasma" (1 - C_"finale"/C_"iniziale")
  $
]

  #include "capitoli_applicazioni/vad.typ"
  #include "capitoli_applicazioni/ossigenatore.typ"
  
]