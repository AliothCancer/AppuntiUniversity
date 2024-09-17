= Valvole Cardiache
  == Apertura e chiusura delle valvole
    L'apertura tra ogni atrio e il suo ventricolo è regolata da
    una valvola atrioventricolare (AV) (Figura 14.5C). La valvola AV è 
    formata da lembi sottili di tessuto unito alla base a un anello di 
    tessuto connettivo. I lembi sono lievemente ispessiti ai margini e 
    sono connessi al lato ventricolare attraverso tendini ricchi di collagene, le corde tendinee (Figura 14.7a,c). La maggior parte delle corde tendinee si salda ai margini dei lembi delle valvole. Le estremità opposte delle 
    corde sono inserite su estensioni di muscolo ventricolare simili a 
    montagnole, note come *muscoli papillari* [_papilla_,bottoncino]. #underline("Questi muscoli danno stabilità alle corde tendinee, ma non sono in grado di aprire e chiudere attivamente le valvole AV. Le valvole si aprono o chiudono passivamente quando vengono spinte dal sangue che scorre.")

    ===== Fonte 
    Estratto da: Silverthorn "Fisiologia umana. Un'approccio integrato" pag. 422-423 (libro del corso)

    #align(center, image("/immagini/cuore_valvole.png", width: 65%))
    #pagebreak()
  == Funzione cardiaca
  #let im0 = image("/immagini/immagine_cuore.png", width: 80%)
  #let im1 = image("/immagini/grafico_pressioni_ciclo_cardiaco.png", width: 110%)
  #grid(
    columns: 2,
    rows: 1,
    grid.cell(im0),
    grid.cell(im1),
  )
    Le valvole vengono azionate semplicemente dalle pressioni su cui agisce il cuore.

    La valvola aortica si apre quando la *pressione ventricolare* supera la pressione aortica che arriva fino ad un valore massimo di riferimento pari a 120mmHg (*pressione sistolica*), la *pressione aortica* è quindi normalmente la *pressione diastolica*, ha valore di riferimento di 80mmHg. Questo accade perchè la valvola aortica è una valvola che si apre in una sola direzione, la sua forma a "uncino" fa in modo che il flusso quando scorre nel verso opposto faccia chiudere la valvola, come si vede in figura.
    
    #align(center, image("/immagini/valvola_aortica00.png", width: 60%))

  == Criticità
    Le valvole non devono avere reflusso, cioè devono impedire lo scorrimento del sangue nel verso opposto, se questo non avviene, il ventricolo cercherà comunque di aumentare la pressione per vincere quella aortica ed aprire la valvola, si richiederà al cuore uno sforzo maggiore perchè dovrà aumentare la pressione mentre perde volume, si avrà quindi una perdita di eiezione, la ejection fraction sarà minore.

    Fondamentale quindi è il mantenimento delle proprietà meccaniche della valvola, che deve presentare la giusta resistenza alle sollecitazioni che le vengono imposte dal cuore attraverso il sangue.

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
  #pagebreak()


  == Tipologie di valvole cardiache
    === Valvole Meccaniche
      Sono costituite da una struttura principale su cui sono vincolati degli organi mobili che permettono la chiusura e la apertura. È costituita da materiali *metallici o polimerici* per quanto riguarda la struttura interna che fa da sostegno.

      
      #{
      let img0 = image("/immagini/valvola_meccanica_moderna.png", width: 50%)
      let img1 = image("/immagini/valvola_meccanica_moderna01.png", width: 100%)

      let fig0 = figure(img0, caption: "bileaflet -- A emidischi")
      let fig1 = figure(img1, caption: "altri tipi")
      grid(
        columns: 2,
        grid.cell(fig0),
        grid.cell(fig1)
      )
    }


    === Carbonio Pirolitico

      Permette di avere una superficie biocompatibile, si ha comunque la necessità di trattare il paziente con farmaci anti-coagulanti (vitamina K).
      Si ottiene tramite il *CVD* (Chemical Vapor Deposition).
      
      Questo materiale ha una composizione mista delle due forme del carbonio, *la grafite* o grafene (struttura amorfa) e *il diamante* (struttura cristallina), come per i polimeri si può avere una composizione parziale delle due forme. 

      La composizione mista si ottiene facendo legare in modo covalente alcuni strati di grafene.
      
      È sostanziale la caratteristica di isotropia del materiale, ovvero l'omogeneità delle proprietà meccaniche in tutte le direzioni.

      ==== Metodo: Forno a letto fluido
        Il rivestimento viene eseguito all'interno di un forno, detto *forno di letto fluido*, in un atmosfera composta da 2 gas: l'*elio*, gas inerte che permette la *pirolisi* (combustione in assenza di agenti ossidanti), permette inoltre di regolare il risultato del rivestimento regolando la composizione dei 2 gas, e un idrocarburo gassoso da cui poter strappare gli atomi di carbonio.
        #align(
          center, image("/immagini/pyrolitic_carbon_manifacturing.png", width: 60%
          )
        )
        
        Per strappare gli atomi di carbonio è necessaria una grande forza, viene impiegata una temperatura tra i 1000°C e i 2400°C. Per ovvie ragioni i polimerici non sono adatti.

      ==== Metodo: Sputtering catodico
        Trattamento a basse temperature e pressioni(vuoto) adatto sia a materiale *metallico* che *polimerico*.

        Il processo consiste di 3 elementi:
        - *Anodo*: filamento da cui proviene il fascio di elettroni.
        - *Catodo*: pezzo fatto di carbonio, fa da sorgente di materiale.
        - *Pezzo da rivestire*

        ===== Descrizione del processo
          A causa di un'elevata differenza di potenziale tra anodo e catodo, si genera un fascio di elettroni che si dirigono verso il catodo. Gli elettroni impattando sulla superficie di carbonio pirolitico provocano un distacco di particelle di carbonio pirolitico. Queste collidono con il pezzo da rivestire andando a formare il rivestimento superficiale.


    === Valvole Biologiche
      Le valvole cardiache biologiche hanno una struttura interna metallica che sostiene fa da scheletro al materiale biologico con cui è realizzata la valvola.

      Il tessuto con cui viene realizzata può essere *autologo* (del paziente stesso), di *orgine animale* (pericardio bovino, valvola porcina). 

    === Biologiche vs Meccaniche

      ==== Terapia anticoagulante

        *Per le meccaniche* è necessaria una terapia anticoagulante, vitamina K antagonista, per tutta la vita del paziente dal momento in cui gli viene impiantata la valvola meccanica. Aumentato rischio di emorraggia per tutta la vita a venire.

        *Per le biologiche* secondo le linee guida è necessario solamente per un breve periodo post-operazione (3-6 mesi), in assenza di controindicazioni.
    
        #let coag_terapy_link = "https://www.escardio.org/Journals/E-Journal-of-Cardiology-Practice/Volume-20/prosthetic-heart-valves-part-2-antithrombotic-management"

        #v(1cm)

        ===== Fonte 
          #link(coag_terapy_link)[European Society of Cardiology Website: "Prosthetic heart valves: Part 2 - Antithrombotic management"]


    ==== Rumore
      *Le valvole meccaniche* producono un rumore (click) dovuto alla durezza/rigidità superficiale delle palette mobili durante la loro apertura e chiusura.

      *Le biologiche* siccome sono composte da materiale biologico non producono rumori udibili dal paziente in condizioni di silenzio.

    ==== Durata
      - Biologiche: 10-15 anni
      - Meccaniche: 30+ anni

