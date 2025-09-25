// Nuova Palette: "1f1f1f" (grafite scuro), "ff6f61" (corallo), "fefefe" (sfondo chiaro), "ffd166" (giallo), "06d6a0" (verde acqua)
// Colors
#let graphite = rgb("#1f1f1f")
#let coral = rgb("#ff6f61")
#let paperc = rgb("#fefefe")
#let yellow = rgb("#ffd16681")
#let aqua = rgb("#06d69e2a")
#let purple = rgb("#d059eb")
// Banner: prende un blocco come contenuto
#let banner(body, bg: coral) = {
  rect(fill: bg, inset: 12pt, radius: 8pt)[
    #align(center)[
      #text(weight: 800, size: 27pt, fill: paperc)[#body]
    ]
  ]
}

#let style(body)={
  set page(
    paper: "a4",
    margin: (x: 18mm, y: 18mm),
    footer: auto
  )
  set heading(numbering: "1.1",)
  
  show heading.where(level: 1): it => {
    if [it] != [Contents]{
      align(left)[#banner(it)]
    } else {
      it
    }
  }
  set text(font: "Open Sans", size: 11pt)
  show "Missing": it => {
    text("Missing", blue)
  }
  
  show "Esempio": it => {
    text("Esempio", rgb("#13a3d7"))
  }
  body
}

// Sezione-titolo con sfondo (usa blocco contenuto)
#let section_box(body, bg: paperc) = {
  rect(fill: bg, inset: 8pt, radius: 6pt)[#text(weight: 700, size: 14pt, fill: graphite)[#body]]
}

#let ex(body, stroke: blue) = {
  v(-0.1cm)
  rect(stroke: stroke, inset: 8pt, radius: 6pt, fill: paperc)[
    #text(size: 10.5pt, fill: graphite)[*Esempio:*\ #body]
  ]
}
// Definizione: titolo (stringa) + corpo (blocco)
#let def(title, body, example) = {
  v(1cm)
  rect(fill: yellow, inset: 6pt, radius: 8pt)[
    #text(weight: 700, size: 13pt, fill: graphite)[Definizione]
  ]
  v(-1.05cm)
  h(3.5cm)
  [#text(title, size:16pt)]
  rect(fill: aqua, inset: 8pt, radius: 6pt)[
    #text(size: 11pt, fill: graphite)[#body]
  ]
  [#ex[#example]]
  
}
#let y(body) = text(body, fill: purple)

// Nota / box 
#let nota(body, stroke: coral) = {
  v(-0.3cm)
  rect(stroke: stroke, inset: 8pt, radius: 6pt, fill: paperc)[
    #text(size: 10.5pt, fill: graphite)[*Nota:*\ #body]
  ]
}
