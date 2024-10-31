#import "latest_style.typ": apply_my_style

#let night_mode = true;
#let ind = h(2em)
#let col(body) = columns(2, body)
#apply_my_style(title: "Formulario di Applicazioni ITPS")[
  #if night_mode{
    set page(fill: black)
    set text(fill: white)
    include "capitoli_applicazioni/biocompatibilità.typ"
include "capitoli_applicazioni/emodialisi.typ"
include "capitoli_applicazioni/vad.typ"
  include "capitoli_applicazioni/ossigenatore.typ"
  } else{
    include "capitoli_applicazioni/biocompatibilità.typ"
include "capitoli_applicazioni/emodialisi.typ"
include "capitoli_applicazioni/vad.typ"
  include "capitoli_applicazioni/ossigenatore.typ"
  }
  
  
  
  
  
]