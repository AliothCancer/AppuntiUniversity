#import "style.typ": apply_style

#apply_style[
  // DOCUMENT CONTENT STARTING POINT

  #align(center + horizon, text(30pt)[
    *Dispositivi medicali itps*
  ])

  #let date = datetime(year: 2024, month: 09, day: 13).display("[day]  [month repr:long] [year]")
  #align(center, date)

  #pagebreak()
  #outline(indent: auto, depth: 4)
  #pagebreak()



  #include "capitoli_dispositivi/01ValvoleCardiache.typ"
  #include "capitoli_dispositivi/02ExeValvole.typ"
  #include "capitoli_dispositivi/03ProtesiVascolari.typ"

]
