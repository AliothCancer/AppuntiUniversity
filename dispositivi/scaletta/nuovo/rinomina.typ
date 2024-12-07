#import "@preview/ttt-lists:0.1.0": studentlist as list


#set page("a4", margin: 1cm)
#set text(14pt, font:"Bitstream Charter", weight: 300, lang: "de")

= Stent e protesi vascolari

#let data = csv("rinomina.csv")

//#{ data = list.add_check_column(data, title: "Attending") }

#list.studentlist(
  numbered: true, 
  lines: true,
  data,
);
