#import "/utils/latest_style.typ": apply_my_style
#import "/utils/custom_functions.typ": def


#apply_my_style(date:(2024,9,13), title:"Protesi Vascolari")[



  #def[Protesi Vascolare][Dispositivi medici impiantati permanentemente per *ripristinare la funzione di un tratto
vascolare* non più in grado di trasportare correttamente il sangue.]

  = Condizione patologica
  - *Stenosi* (occlusione parziale)
  - *Aneurisma* (dilatazione anomala)

  = Diametri dei Vasi
  #let img = image("../immagini/diametri_vasi_var.png")
  
  #figure(
    img,
    caption: ""
  )

  \
  \
  \
  = Compliance

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

= Parte ingegneristica
Se lo sforzo massimo è generato da un momento (ad esempio in una trave o un elemento strutturale soggetto a flessione), si parla di sforzo normale massimo indotto dalla flessione. La formula principale deriva dalla teoria della flessione e considera il momento flettente massimo M_max:

$ sigma_"max"= (M_"max" dot c) / I $



- $sigma_"max"$: sforzo massimo, misurato in pascal (Pa).


- $M_"max"$: momento flettente massimo applicato, misurato in newton-metro (Nm).
- $c$: distanza dal centro della sezione al punto più lontano, misurata in metri (m).
- $I$: momento di inerzia della sezione trasversale rispetto all'asse neutro, misurato in $m^4$.

]
