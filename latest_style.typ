#let apply_my_style(title:str,body) = [
// CONFIGURATION
  
  //#show strong: set text(blue)
  #set par(justify: false, leading: 0.52em)
  #let title = text(50pt,title)
  #v(8cm)
  #align(center, title)

  #let fs_1 = 27pt
  #let fs_2 = 7*fs_1/8
  #let fs_3 = 6*fs_1/8
  #let fs_4 = 5*fs_1/8

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
  #set par(leading: 0.2cm)


  // HEADING STYLING
      // H1

  #show heading.where(level: 1): it => {
    pagebreak()
    set align(left)
    set par(justify: true, leading: 0.52em)
    set text(fs_1, weight: "bold",
    number-type: "old-style",
    )
    rect(smallcaps(underline(it)) + v(1cm), fill: rgb("#ddd5f3"),height: 1.2em,
    radius: .5cm,
    
    )
    
  }
      //H2
  #show heading.where(level: 2): it => {
    set align(center)
    set text(fs_2, weight: "regular")
    v(1cm) + strong(it) + v(.5cm)
    
  }
      //H3
  #show heading.where(level: 3): it => {
    set align(center)
    set text(fs_3, weight: "regular")
    v(.5cm) + strong(it) + v(.3cm)
  
  }

      //H4
  #show heading.where(level: 4): it => {
    set align(center)
    set text(fs_4, weight: "regular")
    v(.3cm) + strong(it) + v(.3cm)
    
  }

 // FONT SIZES
 #show math.equation: set text(size: 17pt)
 #set text(15pt)

 #outline(indent: 2em)
 #body
]


#let custom_style=[
  #set heading(numbering: "1.1")
#show heading.where(level:1): it => {
  pagebreak()
  set align(center)
  v(2em)
  ellipse(it,fill: aqua)
}
#show heading.where(level:2): it => {
  set align(left)
  v(2em)
  underline(it)
}
#show math.equation: it =>{
  if it.block {
    rect(it)
  }else{
    it
  }
}
]
