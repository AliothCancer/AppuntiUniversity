#import "@preview/cetz:0.3.0": *
#import "../../utils/latest_style.typ": insert_image,styled_box

= Protesi Articolari

== Patologie curate

- *Osteoartrosi*

Più comune in età anziana, è una degenerazione delle cartilagini che si propaga anche nel tessuto osseo. 


== Opzioni terapeutiche
#let data = (
  [Opzioni terapeutiche],[\ \ \ Perdita\ di peso e\ Fisioterapia], [Uso di medicinali], ([Interventi chirurgici], [Di conservazione], ([Di Artroplastica],[Emiartroplastica],[Resurfacing],[\ \ #text( red,"Artroplastica\n     totale\n dell'articolazione")]),),
)

#canvas(length: 1cm, {
  import draw: *

  set-style(content: (padding: 0),
    fill: color.linear-rgb(0.37%, 27.05%, 73.05%),
    stroke: gray.lighten(70%))

  tree.tree(data, spread: 3, grow: 2, draw-node: (node, ..) => {
    
    content((), node.content)
  }, draw-edge: (from, to, ..) => {
    line((a: from, number: .6, b: to),
         (a: to, number: .6, b: from), mark: (end: ">"))
  }, name: "tree")

  
})


- *Perdita di peso e Fisioterapia*
Attraverso l'attività fisica, modifiche nello stile di vita

\

- *Uso di medicinali*

FANS, inibitori della COX (ciclossigenasi) oppure infiltrazioni di corticosteroidi, acido ialuronico

#pagebreak()


- *Interventi chirurgici*

  
  - *Di conservazione*\
    

  - *Di Artroplastica*
    - Emiartroplastica
    - Resurfacing
    - #text( red,"Artroplastica totale dell'articolazione") $->$ protesi d'anca, di gomito, di spalla, di ginocchio

== Tipologie di protesi articolari
Sistema muscoloscheletrico
- #text( red, "Protesi sostitutive articolari") (anca, ginocchio)
- Protesi per disco intervertebrale, caviglia, etc.
- #text(red,"Dispositivi per la fissazione delle fratture")
- Materiale sostitutivo dell'osso
- Sostituzione del tendine / legamento
- Sostituzione del menisco
- Protesi per cartilagine articolare

#pagebreak()

== Articolazione dell'anca

- Gradi di libertà
- Angoli limitati
- Assi di rotazione

#insert_image("../dispositivi/immagini/snodo_sferico.png")

\

-  *Unione delle superfici articolari*

È mantenuta dai legamenti, hanno appunto il compito di legare il femore al bacino.

\

- *Accoppiamento sferico*

Fra testa femorale e cavità acetabolare 


== Forze appoggio bipodalico
#grid(
  columns: 2,
  column-gutter: 1.5cm,
  styled_box(
    fill: color.linear-rgb(0.21%, 63.08%, 11.19%, 77.2%),
    contenuto: 
    [#text("\n   Quando si sta in piedi il peso della \n   colonna (C) passa al centro del\n   bacino e viene poi ripartito  sulle\n   due anche con la metà della forza\n   su ciascuna anca.

  Il peso corporeo sorretto dalle anche è\n  solo quello della parte soprastante.")

  #text(yellow,"   1. Peso della parte superiore:")
  $
  C = "Peso"_"tot" - "Peso"_"arti inf."
  $
  #text(yellow,"   2. Forza su un'anca:")
  $
  F = C / 2
  $
  ]),
  insert_image("../dispositivi/immagini/low_skeleton.png", width: 80%),
)

#pagebreak()


== Assi dell'arto inferiore
#grid(
  columns: 2,
  column-gutter: (0.8cm),
  [
    #insert_image("../dispositivi/immagini/asse_arto_inferiore.png",width: 90%)
  ],
  [
    - *Asse meccanico* (Mechanical axis)
  
  Linea passante dal centro
  dell’articolazione dell’anca e il centro
  dell’articolazione del ginocchio.

  \

  - *Asse anatomico* (Anatomic axis)
  Linea passante dal centro del grande
  trocantere al centro dell’articolazione del
  ginocchio.
  
  
  \

  - *Angolo formato tra i due assi* (Tibiofemoral angle)
    circa 7°
  ]
)

== Appoggio monopodalico

#insert_image("../dispositivi/immagini/appoggio_monopodalico.png")

== Materiali

- Lega di Titanio Ti6Al4V
- Acciaio Inox AISI 316L (Ni, Cr e Mo)
- Leghe di Cobalto Co-Cr-Mo

La densità di Ti6Al4V è pari al 50% di quella delle leghe a base di nichel e degli acciai inossidabili.

#pagebreak()

== Componenti della protesi
Le protesi più usate sono costituite principalmente da:
+ stelo femorale metallico infisso nel canale midollare del femore

+ testina sferica *metallica/ceramica*

+ elemento articolare acetabolare, in genere *polimerico*

+ *supporto metallico* (metal back) dell’elemento acetabolare





