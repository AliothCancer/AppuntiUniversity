
#let definition(name, content) = {
  /* Custom formatter for a definition
  also work as a tag for definition
  */
  let tag = "#def"
  let name = text(
    strong(
      text(tag, fill: red)+ " -- " + name
    ),
    18pt
  )
  let name = text(name, fill: blue)
  let content = text(
    content,
    rgb("#000000"),
    //15pt
  )
  let content = block(content, width: auto
  , inset: .6cm, radius: 20pt )

  grid(
    name,
    content
  )
}
