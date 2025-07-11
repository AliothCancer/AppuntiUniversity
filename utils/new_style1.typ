

#let color_palette1 = ("26547c","ef476f","01f160","06d6a0", "4357AD")
#let color_palette2 = ("4357ad","48a9a6","e4dfda","d4b483","c1666b")

#let color_palette = color_palette1
#let get_color(color_number) = color.rgb(color_palette.at(color_number))

#let presentation_style(paper: "a3",date: array,title:str,body, mode: str) = [
// CONFIGURATION
  //#show strong: set text(blue)
  //#set text(font: "Monofur Nerd Font")

  #set page(paper: paper, margin: 1cm)
  #set par(justify: false, leading: 0.52em)
  #let title = text(50pt,title)
  #v(2cm)
  #align(center, title)
  #set par(justify: true, leading: 0.52em)
  #let fs_1 = 22pt
  #let fs_2 = 7*fs_1/8
  #let fs_3 = 6*fs_1/8
  #let fs_4 = 5*fs_1/8
  #let mode = "presentation";

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
  #set page(numbering: "1/1", columns: 1)

  // HEADING STYLING
      // H1

  #show heading.where(level: 1): it => {
    set align(left)
    set par(justify: true, leading: 0.52em)
    set text(fs_1, weight: "bold",
    number-type: "old-style",
    )
    
    pagebreak()
    rect(smallcaps(underline(it)) + v(2cm),height: 1.2em,
    radius: .5cm,
    )

  }
      //H2
  #show heading.where(level: 2): it => {
    set align(left)
    set text(fs_2, weight: "regular",fill:  get_color(1))
    
    //colbreak()
    v(1cm) + strong(it) + v(.5cm)

  }
      //H3
  #show heading.where(level: 3): it => {
    //pagebreak()
    set align(left)
    set text(fs_3, weight: "regular",fill:  get_color(2))
    v(.5cm) + strong(it) + v(.3cm)

  }

      //H4
  #show heading.where(level: 4): it => {
    set align(left)
    set text(fs_4, weight: "regular",fill:  get_color(3))
    v(.3cm) + strong(it) + v(.3cm)

  }
       //H5
  #show heading.where(level: 5): it => {
    set align(left)
    set text(fs_4, weight: "regular",fill:  get_color(4))
    v(.3cm) + strong(it) + v(.3cm)

  }

 // FONT SIZES
 #show math.equation.where(): it =>  {
  set text(size: 17pt)
  it
 }
#set math.equation(numbering: "eq. 1", number-align: right)
 #set text(15pt)

#show link: set text(fill: color.fuchsia)

 #outline(indent: 2em)
 *Document made with typst:
 #link("https://typst.app/docs/")[Link to typst documentation]*
 #pagebreak()
 #body
]
