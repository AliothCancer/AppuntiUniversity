
#let definition(name, content) = {
  let name = text(
    strong(
      text("Def ", fill: blue)+ "-- " + name
    ),
    18pt
  )
  let name = text(name, fill: luma(34.26%))
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
