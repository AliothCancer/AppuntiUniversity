#set text(lang: "it")
#set text(region: "it")
#set text(font: "New Computer Modern", size: 14pt)
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.5cm))
#set par(justify: true, leading: 0.52em)
#set heading(numbering: "1.")

#show outline.entry.where(level: 1): it => {
  v(12pt, weak: true)
  strong(it)
}

#align(center + horizon, text(30pt)[
  *Dispositivi medicali itps*
])

#let date = datetime(year: 2024, month: 09, day: 13).display("[day]  [month repr:long] [year]\n [day]/[month]/[year]")
#align(center, date)

#pagebreak()
#outline(indent: auto)
#pagebreak()

#include "capitoli/00Introduzione.typ"

#include "capitoli/01ValvoleCardiache.typ"

#include "capitoli/02ProtesiVascolari.typ"
