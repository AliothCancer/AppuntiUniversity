#let conf(
  title: none,
  authors: (),
  abstract: [],
  doc,
) = {
  // Set and show rules from before.
  set text(lang: "it")
  set text(region: "italy")
  
  set document(title: "Dispositivi Medicali")
  
  set text(
    font: "New Computer Modern",
    size: 14pt
  )
  set page(
    paper: "a4",
    margin: (x: 1.8cm, y: 1.5cm),
  )
  set par(
    justify: true,
    leading: 0.52em,
  )
  
  set heading(numbering: "1.")


  set align(center)
  text(17pt, title)

  let count = authors.len()
  let ncols = calc.min(count, 3)
  grid(
    columns: (1fr,) * ncols,
    row-gutter: 24pt,
    ..authors.map(author => [
      #author.name \
      #author.affiliation \
      #link("mailto:" + author.email)
    ]),
  )

  par(justify: false)[
    *Abstract* \
    #abstract
  ]

  set align(left)
  columns(2, doc)
}
