#import "../utils/latest_style.typ": apply_my_style

#apply_my_style(title:"Dispositivi Medicali e Diagnostici Teoria + Esercitazioni")[

  #let date = datetime(year: 2024, month: 09, day: 13).display("[day]  [month repr:long] [year]")
  #align(center, date)

  #pagebreak()
  #outline(indent: auto, depth: 4)
  #pagebreak()

  #include "capitoli_dispositivi/00Introduzione.typ"

  #include "capitoli_dispositivi/01ValvoleCardiache.typ"
  #include "esercitazioni/ExeValvoleCardiache.typ"

  #include "capitoli_dispositivi/03StentVascolari.typ"

  #include "capitoli_dispositivi/04ProtesiVascolari.typ"
  #include "esercitazioni/ExeProtesiVascolari.typ"

]
