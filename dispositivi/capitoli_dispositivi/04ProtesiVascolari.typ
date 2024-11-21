#import "../../utils/custom_functions.typ": def

= Protesi Vascolari
  #def[Protesi Vascolare][Dispositivi medici impiantati permanentemente per *ripristinare la funzione di un tratto
vascolare* non più in grado di trasportare correttamente il sangue.]

  == Condizione patologica
  - *Stenosi* (occlusione parziale)
  - *Aneurisma* (dilatazione anomala)

  == Diametri dei Vasi
  #let img = image("../immagini/diametri_vasi_var.png")
  
  #figure(
    img,
    caption: ""
  )

  \
  \
  \
  == Compliance

  #def("Compliance o Capacitanza")[
    È l'equivalente idraulico della capacità elettrica. È la quantità di energia che può essere immagazzinata sottoforma di energia potenziale elastica da un segmento di vaso.

    *Definizione matematica:*
    $
      C = "dV"/ "dP"
    $
    *dV*: Variazione del volume del segmento di vaso considerato\
    *dP*: Variazione della pressione del vaso del segmento di vaso considerato

    Siccome il flusso è di tipo pulsatile, l'elasticità del vaso ha il compito di trasmettere l'impulso pressorio attraverso una dilatazione locale del vaso.
  ]
  
  L'impianto di una protesi vascolare modifica la compliance del vaso poichè la compliance è una caratteristica data dalle proprietà meccaniche del vaso, in particolare è data dalla geometria e dal materiale, modifica quindi la caduta di pressione a valle e quindi anche il flusso.

