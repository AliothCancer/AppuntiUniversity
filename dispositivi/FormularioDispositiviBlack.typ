#import "../utils/latest_style.typ": apply_my_style




#apply_my_style(date:(2024,09,13),title: 
"Formulario di Dispositivi itps\n")[
#show outline.entry: it => {
    v(0.5cm, weak: false)
    set text(white)
    strong(it)
  }
#set page(fill: black )
#set text(white)
#show math.equation: set text(white)


#include "capitoli_formulario/valvole_cardiache.typ"
#include "capitoli_formulario/stents.typ"
]