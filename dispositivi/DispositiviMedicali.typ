#import "../utils/latest_style.typ": apply_my_style

#apply_my_style(date:(2024,9,13), title:"\n  Dispositivi Medicali\n                  e\n          Diagnostici\n\n             Teoria\n                  +\n         Esercitazioni\n ", mode: "light")[

  #include "capitoli_teoria/00Introduzione.typ"

  #include "capitoli_teoria/01ValvoleCardiache.typ"
  #include "esercitazioni/ExeValvoleCardiache.typ"

  #include "capitoli_teoria/materiali.typ"

  #include "capitoli_teoria/03StentVascolari.typ"

  #include "capitoli_teoria/04ProtesiVascolari.typ"
  #include "esercitazioni/ExeProtesiVascolari.typ"
  #include "capitoli_teoria/05ProtesiArticolari.typ"

]
