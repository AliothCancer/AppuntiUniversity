#import "../utils/latest_style.typ": apply_my_style



 
#apply_my_style(date:(2024,09,13), title: "Formulario \n + \n Domande Orale \n+\n Correzione esami \n per \n Applicazioni ITPS")[
#include "capitoli_applicazioni/biocompatibilità.typ"
#include "capitoli_applicazioni/emodialisi.typ"
#include "capitoli_applicazioni/pompe_sangue.typ"
#include "capitoli_applicazioni/ossigenatore.typ"
#include "capitoli_applicazioni/domande_orale.typ"
#include "capitoli_applicazioni/correzione_esami.typ"
]

//#let night_mode = false;
//#let ind = h(2em)
//#let col(body) = columns(2, body)
//#apply_my_style(title: "Formulario di Applicazioni ITPS")[
//  
//  #if night_mode{
//    set page(fill: black)
//    set text(fill: white)
//    include "capitoli_applicazioni/biocompatibilità.typ"
//include "capitoli_applicazioni/emodialisi.typ"
//include "capitoli_applicazioni/pompe_sangue.typ"
//  include "capitoli_applicazioni/ossigenatore.typ"
//  } else{
//    include "capitoli_applicazioni/biocompatibilità.typ"
//include "capitoli_applicazioni/emodialisi.typ"
//include "capitoli_applicazioni/circolazione_extracorporea.typ"
//include "capitoli_applicazioni/pompe_sangue.typ"
//  include "capitoli_applicazioni/ossigenatore.typ"
//  include "capitoli_applicazioni/domande_orale.typ"
//  }
  //]