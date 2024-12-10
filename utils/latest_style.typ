

#let styled_box(contenuto: content) = {
  context {
    let title_h1_color = color.linear-rgb(3.19%, 0%, 93.87%)
    let title_h1_fill = color.linear-rgb(38.13%, 0%, 100%, 22.3%)
    let size = measure([ #contenuto])
    let it = smallcaps(contenuto)
    box([#v(0.3cm) #contenuto], fill: title_h1_fill,
    width: size.width*1.8,
    height: size.height+1cm,
    radius: 1cm,
    )
  }
}

#let apply_my_style(title:str, date: array,body) = [

  #set page(fill: black)
  #let outline_text_color = white
  #let title_h1_color = color.linear-rgb(3.19%, 0%, 93.87%)
  #let title_h1_fill = color.linear-rgb(38.13%, 0%, 100%, 22.3%)

  #let h2_color = color.linear-rgb(11%, 56.5%, 100%, 100%)
  #let h3_color = color.linear-rgb(12.74%, 8.65%, 81.48%)


  #let h4_color = color.linear-rgb(54.1%, 16.9%, 88.2%, 100%)

// CONFIGURATION
  #let mode = "a4";
  //#show strong: set text(blue)
  #set par(justify: false, leading: 0.52em)
  #let title = text(title_h1_color,50pt,title)

  #v(3cm)
  #styled_box(contenuto:title)

  #let (year, month, day) = (
    date.at(0),
    date.at(1),
    date.at(2),
  )
  
  #let date = datetime(year: year, month: month, day: day).display("[day]  [month repr:long] [year]")
  #align(center, text(color.linear-rgb(0.06%, 4.67%, 100%),date))

  #set par(justify: true, leading: 0.52em)
  #let fs_1 = 27pt
  #let fs_2 = 7*fs_1/8
  #let fs_3 = 6*fs_1/8
  #let fs_4 = 5*fs_1/8

  // CONTENTS STYLING
  
  #show outline.entry.where(level: 1): it => {
    v(0.5cm, weak: false)
    set text(19pt, outline_text_color)
    strong(it)
  }
  #show outline.entry.where(level: 2): it => {
    //v(1pt, weak: false)
    set text(16pt, outline_text_color)
    it
  }
  #show outline.entry.where(level: 3): it => {
    //v(1pt, weak: false)
    set text(14pt, outline_text_color)
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
    set text(title_h1_color,fs_1, weight: "bold",
    number-type: "old-style",
    )
    let size = measure(it)
    let it = smallcaps(it)
    box([#v(0.3cm) #it], fill: title_h1_fill,
    width: size.width*1.8,
    height: size.height+1cm,
    radius: 1cm,
    )
    
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
 #show math.equation: set text(size: 17pt)
 #set text(15pt)

#show link: set text(fill: color.blue)

 #outline(indent: 2em, title: [#h(0.7em) Indice dei Contenuti])
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

