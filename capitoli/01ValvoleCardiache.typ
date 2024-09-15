#set par(leading: .65em)
= Valvole Cardiache
  == Funzione cardiaca
#let im0 = image("/immagini/immagine_cuore.png", width: 80%)
#let im1 = image("/immagini/grafico_pressioni_ciclo_cardiaco.png", width: 110%)
#grid(
  columns: 2,
  rows: 1,
  grid.cell(im0),
  grid.cell(im1),
)
  Le valvole vengnono azionate semplicemente dalle pressioni su cui agisce il cuore.

  La valvola aortica si apre quando la *pressione ventricolare* supera la pressione aortica che arriva fino ad un valore massimo di riferimento pari a 120mmHg (*pressione sistolica*), la *pressione aortica* è quindi normalmente la *pressione diastolica*, ha valore di riferimento di 80mmHg. Questo accade perchè la valvola aortica è una valvola che si apre in una sola direzione, la sua forma a "uncino" fa in modo che il flusso quando scorre nel verso opposto faccia chiudere la valvola, come si vede in figura.
  
  #align(center, image("/immagini/valvola_aortica00.png", width: 60%))

  == Criticità
  Le valvole non devono avere reflusso, cioè devono impedire lo scorrimento del sangue nel verso opposto, se questo non avviene, il ventricolo cercherà comunque di aumentare la pressione per vincere quella aortica ed aprire la valvola, si richiederà al cuore uno sforzo maggiore perchè dovrà aumentare la pressione mentre perde volume, si avrà quindi una perdita di eiezione, la ejection fraction sarà minore.

  Fondamentale quindi è il mantenimento delle proprietà meccaniche della valvola, che deve presentare la giusta resistenza alle sollecitazioni che le vengono imposte dal cuore.

  Le caratteristiche meccaniche possono variare a causa di risposte immunitarie che vanno a modificare la composizione del tessuto a causa dell'azione delle cellule immunitarie. Questo può essere causato da: *febbre reumatica*, *endocardite*. Di seguito un elenco delle cause delle patologie valvolari: 

  + *Febbre reumatica*
    + Condizione infiammatoria che spesso inizia con un'infezione batterica streptococcica.
    + Il danno non è causato dai batteri stessi, ma da una risposta autoimmune.
    
  + *Endocardite*
    + Infezione dell'endocardio e delle valvole causata da batteri, virus, funghi o altri agenti infettivi.
    
  + *Degenerazione mixomatosa*
    - Processo degenerativo del tessuto connettivo, con aumento dei glicosaminoglicani.
    - Colpisce prevalentemente la valvola mitralica.
    - Il tessuto della valvola perde l’elasticità e diventa meccanicamente debole.
    
  + *Degenerazione calcifica*
    - Causa comune della malattia della valvola cardiaca negli anziani.
    - E’ la causa più frequente di stenosi aortica.
    
  + *Anomalie congenite*
    - Il difetto più comune è una valvola aortica deformata, con due foglietti invece di tre (valvola bicuspide).
  
  == Patologie (TODO!)


  == Tipologie di valvole cardiache
  
    === Meccaniche
    Sono costituite da una struttura principale su cui sono vincolati degli organi mobili che permettono la chiusura e la apertura.
    #grid(
      columns: 2,
      grid.cell(image("/immagini/valvola_meccanica_moderna.png", width: 50%)),
      grid.cell(image("/immagini/valvola_meccanica_moderna01.png", width: 100%)
)
    )
    
    Costituita da materiali metallici, ceramici e polimerici.

    === Carbonio Pirolitico
    Trattamento per protesi meccaniche. Permette di avere una superficie biocompatibile, si ha comunque la necessità di trattare il paziente con farmaci anti-coagulanti (vitamina K).
    Si ottiene tramite il *CVD* (Chemical Vapor Deposition).
    
    Questo materiale ha una composizione mista delle due forme del carbonio, *la grafite* o grafene (struttura amorfa) e *il diamante* (struttura cristallina), come per i polimeri si può avere una composizione parziale delle due forme. 

    La composizione mista si ottiene facendo legare in modo covalente alcuni strati di grafene.
    
    È sostanziale la caratteristica di isotropia del materiale, ovvero l'omogeneità delle proprietà meccaniche in tutte le direzioni.

    Questo materiale viene utilizzato come rivestimento della valvola cardiaca. Il rivestimento viene eseguito all'interno di un forno, detto *forno di letto fluido*, in un atmosfera composta da 2 gas: l'*elio*, gas inerte che permette la *pirolisi* (combustione in assenza di agenti ossidanti), e un idrocarburo gassoso da cui poter strappare gli atomi di carbonio.
    #align(
      center, image("/immagini/pyrolitic_carbon_manifacturing.png", width: 60%
      )
    )
    
    Per strappare gli atomi di carbonio è necessaria una grande forza,, viene infatti impiegata una temperatura tra i 1000°C e i 2400°C.

    
  
    === Valvolve Biologiche
    Le valvole cardiache biologiche hanno una struttura interna metallica che sostiene fa da scheletro al materiale biologico con cui è realizzata la valvola.

    Il tessuto con cui viene realizzata può essere autologo (del paziente stesso). 