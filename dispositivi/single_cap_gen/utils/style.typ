#let apply_style(body) = [

// CONFIGURATION
  
  //#show strong: set text(blue)
  #set par(justify: true, leading: 0.52em)

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
    set align(left)
    set text(fs_1, weight: "regular")
    v(0cm) + strong(it) + v(1cm)
    
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

*Document made with typst
 Link to #link("https://typst.app/docs/")[typst documentation]*
 #body
]