// CONFIGURATION

#set text(lang: "it")
#set text(region: "it")
#set text(font: "New Computer Modern", size: 14pt)
#set page(paper: "a4", margin: (x: 1.8cm, y: 1.5cm))
#set par(justify: true, leading: 0.52em)


// CONTENTS STYLING
#show outline.entry.where(level: 1): it => {
  v(0.5cm, weak: false)
  set text(19pt)
  strong(it)
}
#show outline.entry.where(level: 2): it => {
  //v(1pt, weak: false)
  set text(16pt)
  it
}
#show outline.entry.where(level: 3): it => {
  //v(1pt, weak: false)
  set text(14pt)
  it
}

#set heading(numbering: "1.1 ")
#set par(leading: .65em)


// HEADING STYLING
    // H1

#show heading.where(level: 1): it => {
  set align(left)
  set text(25pt, weight: "regular")
  v(0cm) + strong(it) + v(1cm)
  
}
    //H2
#show heading.where(level: 2): it => {
  set align(center)
  set text(20pt, weight: "regular")
  v(1cm) + strong(it) + v(1cm)
  
}
    //H3
#show heading.where(level: 3): it => {
  set align(center)
  set text(15pt, weight: "regular")
  v(1cm) + strong(it) + v(.3cm)
  
}



// DOCUMENT CONTENT STARTING POINT

#align(center + horizon, text(30pt)[
  *Dispositivi medicali itps*
])

#let date = datetime(year: 2024, month: 09, day: 13).display("[day]  [month repr:long] [year]")
#align(center, date)

#pagebreak()
#outline(indent: auto)
#pagebreak()



#include "capitoli/00Introduzione.typ"
#include "capitoli/01ValvoleCardiache.typ"

#include "capitoli/02ProtesiVascolari.typ"
