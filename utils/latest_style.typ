

#let styled_box(contenuto: content, fill:color.linear-rgb(3.07%, 2.12%, 10.46%, 84.5%)) = {
  context {
    let title_h1_color = color.linear-rgb(3.19%, 0%, 93.87%)
    let title_fill = fill
    let size = measure([ #contenuto])
    let it = smallcaps(contenuto)
    box([#v(0.1cm) #contenuto], fill: title_fill,
    width: size.width*1.05,
    height: size.height+.5cm,
    radius: 1cm,
    )
  }
}

// possible modes "night" or "light"

#let apply_my_style(title:str, date: array,body, mode:str) = [
  #let outline_text_color = black
  #let page_fill_color = none
  #let text_color = black
  #{
    if mode == "night"{
      outline_text_color = white
      page_fill_color = color.linear-rgb(1.1%, 0.12%, 3.95%)
      text_color = white
    } else if mode == "light"{
      page_fill_color = color.linear-rgb(88.79%, 99.11%, 98.23%)
    } else{
      outline_text_color = white
    }
  }
  #set text(text_color)
  #show math.equation: set text(text_color)
  #set page(margin: (x:0.7cm,y:.7cm))
  #set page(fill: page_fill_color)
  #let h1_fill = color.linear-rgb(42.87%, 1.52%, 44.52%, 84.5%)
  #let h1_color = color.linear-rgb(95.6%, 6.12%, 98.23%, 84.5%)
  #let h2_color = color.linear-rgb(5.61%, 65.84%, 31.4%)
  #let h3_color = color.linear-rgb(85.5%, 2.42%, 61.72%)
  #let h4_color = color.linear-rgb(53.33%, 48.51%, 2.12%)

// CONFIGURATION
  #let mode = "a4";
  //#show strong: set text(blue)
  #set par(justify: false, leading: 0.52em)
  #let title = text(color.linear-rgb(35.64%, 31.4%, 98.23%),50pt,title)

  #v(3cm)
  #styled_box(contenuto:title)

  #let (year, month, day) = (
    date.at(0),
    date.at(1),
    date.at(2),
  )
  
  #let date = datetime(year: year, month: month, day: day).display("[day]  [month repr:long] [year]")
  #align(center, text(text_color,date))

  #set par(justify: true, leading: 0.52em)
  #let fs_1 = 27pt
  #let fs_2 = 7*fs_1/8
  #let fs_3 = 6*fs_1/8
  #let fs_4 = 5*fs_1/8

  // CONTENTS STYLING
  
  #show outline.entry.where(level: 1): it => {
    v(0.5cm, weak: false)
    set text(1.9em, outline_text_color)
    strong(it)
    "\n"
  }
  #show outline.entry.where(level: 2): it => {
    //v(1pt, weak: false)
    "\n        "
    set text(1.4em, outline_text_color)
    it
  }
  #show outline.entry.where(level: 3): it => {
    //v(1pt, weak: false)
    set text(1.2em, outline_text_color)
    it
  }
  

  #set heading(numbering: "    1.1")
  #set par(leading: 0.2cm)
  #set page(numbering: "1/1", columns: 1)

  // HEADING STYLING
      // H1

  #show heading.where(level: 1): it => {
    pagebreak()
    set align(left)
    set par(justify: true, leading: 0.52em)
    set text(h1_color,fs_1, weight: "bold",
    number-type: "old-style",
    )
    let size = measure(it)
    let it = underline(smallcaps(it))
   it
    
  }
      //H2
  #show heading.where(level: 2): it => {
    //pagebreak()
    set align(center)
    set text(h2_color,fs_2, weight: "regular")
    v(1cm) + strong(it) + v(.5cm)
    
  }
      //H3
  #show heading.where(level: 3): it => {
    set align(center)
    set text(h3_color,fs_3, weight: "regular")
    v(.5cm) + strong(it) + v(.3cm)
  
  }

      //H4
  #show heading.where(level: 4): it => {
    set align(center)
    set text(h4_color,fs_4, weight: "regular")
    v(.3cm) + strong(it) + v(.3cm)
    
  }

 // FONT SIZES
 #show math.equation: set text(size: 15pt)
 #set text(17pt)

#show link: set text(fill: color.blue)

 #outline(indent: 2em, title: [#h(0.7em) Indice dei Contenuti],depth: 2)
 #text(white,[*Document made with typst: #link("https://typst.app/docs/")[Link to typst documentation]*])

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


#let presentation_style(title:str,body) = [
// CONFIGURATION
  //#show strong: set text(blue)
  //#set text(font: "Monofur Nerd Font")
  #set page(paper: "presentation-16-9")
  #set par(justify: false, leading: 0.52em)
  #let title = text(50pt,title)
  #v(2cm)
  #align(center, title)
  #set par(justify: true, leading: 0.52em)
  #let fs_1 = 27pt
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
    pagebreak()
    set align(left)
    set par(justify: true, leading: 0.52em)
    set text(fs_1, weight: "bold",
    number-type: "old-style",
    )
    rect(smallcaps(underline(it)) + v(2cm), fill: rgb("#ddd5f3"),height: 1.2em,
    radius: .5cm,
    
    )
    
  }
      //H2
  #show heading.where(level: 2): it => {
    pagebreak()
    set align(center)
    set text(fs_2, weight: "regular")
    v(1cm) + strong(it) + v(.5cm)
    
  }
      //H3
  #show heading.where(level: 3): it => {
    pagebreak()
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

#show link: set text(fill: color.blue)

 #outline(indent: 2em)
 *Document made with typst: 
 #link("https://typst.app/docs/")[Link to typst documentation]*
 #body
]

#let insert_image(path,width:100%,fill:white) ={
  align(center,
    box(
      fill: fill,
      stroke: color.linear-rgb(30.95%, 18.78%, 84.69%) + .1cm,
      radius:.1cm,
      image(path,width: width)
    )
  )
}