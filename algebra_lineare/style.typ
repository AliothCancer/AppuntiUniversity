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

#let style(body, size: 15pt)={
  set page(
    paper: "a4",
    margin: (x: 10mm, y: 12mm),
    footer: auto
  )
  set heading(numbering: "1.1",)
  
  // show heading.where(level: 1, outlined: false): it => {
  //   //align(left)[#banner(it)]
  // it.fields()
  // }

  show heading.where(level: 1, outlined: true): it => {
    align(left)[#banner(it)]
    v(1cm)
  }
  show heading.where(level: 2, outlined: true): it => {
    text(size: 18pt)[#it]
  }

  set text(font: "open sans", size: size)
  show "Missing": it => {
    text("Missing", blue)
  }
  show math.equation.where(): it =>  {
  set text(size: 15pt)
  it
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
    #text(size: 1em,fill: graphite)[*Esempio:*\ #body]
  ]
}
// Definizione: titolo (stringa) + corpo (blocco)
#let def(title, body) = {
  v(1cm)
  rect(fill: yellow, inset: 6pt, radius: 8pt)[
    #text(weight: 700, fill: graphite)[Definizione]
  ]
  v(-2.4em)
  h(7em)
  [#text(title, weight: 600, size:1.2em)]
  rect(fill: aqua, inset: 8pt, radius: 6pt)[
    #text(size: 1em, fill: graphite)[#body]
  ]
  
}
#let y(body) = text(body, fill: purple)

// Nota / box 
#let nota(body, stroke: coral) = {
  v(-0.3cm)
  rect(stroke: stroke, inset: 8pt, radius: 6pt, fill: paperc)[
    #text(fill: graphite)[*Nota:*\ #body]
  ]
}
