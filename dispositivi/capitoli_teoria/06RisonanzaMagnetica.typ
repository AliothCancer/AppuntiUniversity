= Risonanza Magnetica Nucleare
== Acquisizione immagine in 3 fasi
1. *Fasamento* -- Viene fornita energia agli atomi di idrogeno tramite il fenomeno della risonanza magnetica nucleare utilizzando un potente campo magnetico e una bobina in grado di emettere segnali in RF -- radiofrequenza -- (freq. di Larmor). L'impulso RF crea un secondo campo magnetico B1, che attivato alla frequenza di Larmor riesce a sincronizzare la fase dei momenti magnetici di tutti i nuclei di idrogeno. Inoltre viene applicato un numero di pulsazioni precise necessarie a rendere perpendicolari i momenti magnetici M rispetto a B0, in modo da sapere quando questi momenti magnetici raggiungono i 90° di *angolo di flip*.
2. *Rilassamento* -- Quando i momenti magnetici formano 90° con le linee di flusso di B0 viene cessata la pulsazione RF e viene iniziato l'ascolto del segnale emesso dai momenti magnetici degli atomi di idrogeno che tornano ad allinearsi con B0 emettendo energia sottoforma di segnale RF che viene rilevato dalla bobina. Può anche essere la stessa della pulsazione.
3. *Elaborazione* --  Il segnale registrato viene usato per formare un'immagine nel k-spazio, la quale viene successivamente elaborata con la trasformata di Fourier discreta veloce, per ottenere l'immagine medica finale delle sezioni del paziente. 


== Campo Magnetico B0
Un campo magnetico statico, le linee di flusso sono parallele all'asse di movimento del lettino.

Il suo compito è quello di instaurare il *moto di precessione*. Questo come viene fatto? 

Inizialmente gli atomi di idrogeno (protoni), che si trovano nei tessuti del paziente, hanno un *momento magnetico* in direzione casuale. 

*Piccola premessa*: Il momento magnetico è visualizzato come un vettore con centro nel protone.

 Quando il campo magnetico B0 viene attivato, i vettori dei momenti magnetici sono influenzati da B0, e tentano quindi di allinearsi con B0.

Il totale allineamento non avviene mai, invece il vettore del momento magnetico (M), inizia un movimento oscillatorio attorno alle linee di flusso di B0. Questo moto viene chiamato *Moto di Precessione* ed è del tutto analogo al moto dell'asse di rotazione di una trottola.

La frequenza con il quale M oscilla attorno alle linee di flusso di B0 viene chiamata *Frequenza di Larmor*. Essa dipende dall'intensità B0, secondo la legge:

$
omega = gamma dot B_0 
$

Dove $gamma$ è il rapporto giromagnetico che per gli atomi di idrogeno vale 42.6 MHz/T.
\
\
== Codifica della posizione
Per poter discriminare un segnale generato nello spazio ogni punto deve avere un segnale con unico.

*La sezione* quindi è fatta da due dimensioni, poniamo x e y. Per queste due dimensioni viene usata la frequenza di risonanza che è unica per ogni punto a causa di B0 che ha un gradiente di intensità e di conseguenza ogni punto