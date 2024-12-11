#let two_col(col1: content, col2: content) = {
  grid(
    columns: 3,
    col1,
    h(.5cm),
    col2
  )
}


#let def_um(line_arr) = {
  show math.equation: set text(blue)
  for (n,param) in line_arr.enumerate().filter(((n,_)) => calc.even(n)){
    [- #param $arrow$ #line_arr.at(n+1)]
  }
}
#def_um(
  (
    $A_"esterna"$, $"cm"^2$,
    $A_"esterna"$, $"cm"^2$
  )
)

#let param(param, unit) = {
  set text(1em, weight: "bold")

  [- #param $ arrow space$ #text(blue, unit)]  
} 

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


// ROUNDING FUNCTION FOR QUICK CALCULATION
#let c(value) = calc.round(value, digits: 3)


#let create_table(raw_text) = {

  let mat = raw_text.split("\n").map(it => it.split(",").map(it => grid(it)))

  
  for g in mat{
    for k in g{
      grid(k, align: left)
    }
  }


}

#create_table(
  "Col 1, Col2, Col3
  1,2,3
  4,5,6
  "
)