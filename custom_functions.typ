
#let def(name, content) = {
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


#let format-sci(value, digits) = {
    let exponent = if value != 0 {
      calc.floor(calc.log(calc.abs(value), base: 10))
    } else {
      0
    }

    let ee = calc.pow(10, calc.abs(exponent + 1))
    if exponent > 0 {
      value = value / ee * 10
    } else if exponent < 0 {
      value = value * ee * 10
    }

    value = round(value, digits)
    if exponent <= -1 or exponent >= 1 {
      return $#value times 10^#exponent$
    }
    return $#value$
  }