= Domande Orale
1. Pancreas artificiale
   - *Costruzione e funzionamento:*
     
     - Cos'è e come funziona un pancreas artificiale e quali componenti sono necessari?\
      È composto da una pompa di infusione dell'insulina, da un sensore di glicemia e da un microntrollore.

      *Il microntrollore* riceve informazioni dal *sensore di concentrazione del glucosio*, e invia un segnale attuatore alla *pompa di infusione*, regolando la velocità di infusione dell'insulina. Per il controllo viene utilizzato un algoritmo di controllo chiamato PID. Un algoritmo basato sui 3 tipi di errore, il *Proporzionale*, cioè basato sull'attuale errore rispetto al valore target di concentrazione. L'*Integrativo* (controllo) che tiene conto dell'errore cumulato (passato). *Derivativo*, tiene conto dell'andamento, quindi tiene conto dei futuri valori dell'errore. 

   - *Sistema di infusione di insulina:*
     - Come funziona il sistema di infusione?\
      La pompa è sostanzialmente una siringa, il cui stantuffo è collegato ad una vite che è possibile regolare in avanzamento tramite uno stepper motor e l'ingranaggio per la trasmissione del moto. 
     - In che unità si misura il glucosio? (mg/dL)
     - Sensore del glucosio: come funziona e dove si posiziona nel corpo?\
     I sensori al glucosio si basano sulla misura di una corrente generata da una reazione di ossido-riduzione che avviene tra il glucosio e un'enzima apposito chiamato glucosio ossidasi, la corrente generata è legata alla concentrazione di glucosio poichè più glucosio viene ossidato e più elettroni vengono liberati. 
     
     Per la prima generazione di sensori che sono stati sviluppati, l'elettrone liberato riduce l'acqua generando H2O2 (acqua ox, perossido di idrogeno) la quale a contatto con l'elettrodo va a scindersi in ioni idrogeno, ossigeno O2 e 2 elettroni.
     
     La seconda generazione perfeziona la reazione utilizzando un mediatore più stabile dell'ossigeno, il ferrocene, che evita la produzione di perossido di idrogeno che è sconveniente perchè essendo più reattivo potrebbe dare gli elettroni, non all'elettrodo, ma ad altre specie falsando così la concentrazione di glucosio misurata. 
     
     Ovviamente non serve che tutto il glucosio si ossidi per sapere la concentrazione di glucosio, ma si sfrutta la cinetica della reazione, per cui si sa che più glucosio è presente e più alta sarà la concentrazione, per sapere esattamente la concentrazione si userà una curva di calibrazione. Cioè si associano livelli di concentrazione di glucosio conosciuti ad un valore di corrente generato. 

     In poche parole, la glucosio-ossidasi ossida il glucosio con l'aiuto della ddp degli elettrodi, l'enzima abbassa la ddp da applicare per far avvenire la reazione, questo è molto importante perchè abbassare la ddp significa che riduce la possibilità di interferire con altri specie elettroattive come l'acido urico e l'acido ascorbico (vitamina C).
     
    Il ferrocene nelle vicinanze (della reazione di ossidazione) ha carenza di elettroni quindi cattura l'elettrone che viene rilasciato dall'ossidazione del glucosio, dopodichè il ferrocene viene attratto dall'elettrodo, al contatto rilascia l'elettrone ed libero di catturare un nuovo elettrone dall'ossigenazione di un'altra molecola di glucosio.  

   - *Aspetti fisiologici del diabete:*
     - Perché i pazienti diabetici hanno problemi con i trasportatori del glucosio?
     
    
    Il perchè i trasportatori non funzionano come dovrebbero può risiedere nella sintesi di trasportatori difettosi, oppure alla presenza di stati patologici come quello infiammatorio, in cui il trasportatore anche se non è difettoso si comporta in modo non fisiologico.

    Meccanismo di ingresso del glucosio:
    1. *Rilascio insulina*\
      Viene rilasciata dalle cellule $beta$ del pancreas in funzione della concentrazione di glucosio nel sangue.\      
      L'insulina è il messaggero per l'avvio del processo di immagazzinamento del glucosio.
    2. *Ricezione dell'insulina e avvio della costruzione del complesso*\
     L'insulina libera nel sangue si lega selettivamente alle cellule che hanno i recettori appositi per l'insulina, miociti(tessuto muscolo-scheletrico), epatociti e adipociti.
    3. *Traslocazione del glut-4*\
     Il glut-4 è immagazzinata all'interno delle cellule stesse, all'interno di vescicole, il processo per cui queste vescicole vengono spinte sulla membrana si chiama traslocazione.
    4. *Cattura e trasporto del glucosio*\
     Una volta che la costruzione del complesso è pronta, il glucosio viene spinto all'interno della cellula.
    
     Le cellule principalmente coinvolte nell'immagazzinamento di glucosio sono quelle muscolari scheletriche (quelli necessari al movimento), dopodichè ci sono le cellule epatiche e infine gli adipociti.


     - Come l’insulina abbassa la glicemia?
     - Il meccanismo d'azione dell'insulina: come aiuta il glucosio ad entrare nelle cellule?
   - *Dosaggio dell'insulina:*
     - Come si calcola la quantità di insulina necessaria in base ai carboidrati del pasto?\
      Con una formula apposita è possibile stimare una dose di insulina da iniettare per via sottocutanea. La formula tiene conto della quantità stimata di carboidrati assunti, livello attuale di glucosio, livello target di glicemia, quantità di insulina precedentemente iniettata ma non ancora assimilata e alcuni parametri specifici del paziente stabiliti dal medico.

1. Emodialisi e variazione di fluidi
   - *Liquidi nel processo di emodialisi:*
     - Come varia il liquido di dialisi e il sangue durante il processo?\
      Questa domanda non ha senso

     - Definizione del flusso ematico e del liquido di dialisi.\
     In generale un flusso è una grandezza per unità di superficie.
   - *Andamento della concentrazione di urea:*
     - Perché l'andamento della concentrazione di urea controcorrente non è lineare, ma esponenziale?
   - *Parametri di concentrazione:*
     - Come influisce la differenza di concentrazione (ΔC) sul flusso Js e sulla concentrazione superficiale?

2. Membrane e trasporto durante la dialisi
   - *Albumina e dimensioni dei pori:*
     - Dimensione dell'albumina rispetto ai pori della membrana (r = 3,6 vs R = 4)
     - Perché l'albumina non passa attraverso la membrana?
   - *Parametri di diffusione:*
     - Cosa rappresenta il parametro λ (lambda) e perché è importante?
     - Relazione tra volume dei pori e volume interno del cilindro.
     - Definizione e calcolo del parametro ε come rapporto tra volumi.

3. Misura e monitoraggio durante la dialisi
   - *Conducibilità:*
     - Perché monitorare la conducibilità durante la dialisi?
     - Come si misura la conducibilità e perché è rilevante per la sicurezza del paziente?
   - *Concentrazione degli elettroliti:*
     - Perché è importante mantenere livelli corretti di elettroliti per evitare rischi letali?
   - *Resistenza elettrica e conducibilità:*
     - Come viene misurata la resistenza e in che modo i ioni influenzano la corrente elettrica?

4. Circuito di emodialisi e componenti
   - *Componenti principali:*
     - Descrivere il circuito di emodialisi.
     - Funzionamento della pompa peristaltica e della trappola per bolle.
   - *Rischi:*
     - Quali rischi comporta l’ingresso di aria nel circuito?
   - *Pressioni:*
     - Qual è la differenza di pressione a monte e a valle della pompa?
   - *Misurazione della conducibilità:*
     - Spiegare il funzionamento del Ponte di Wheatstone per misurare la conducibilità e come bilanciarlo.

5. Emolisi e pompe peristaltiche
   - *Emolisi:*
     - Come si stima e si verifica la presenza di emolisi nel circuito?
   - *Differenza tra pompe per emodialisi e CEC:*
     - Differenze tra pompe peristaltiche utilizzate in emodialisi e nella circolazione extracorporea (CEC).
     - Portata attesa e unità di misura per le pompe di CEC.
   - *Caratteristiche del circuito CEC:*
     - Volume di sangue (7L) e dimensioni dei tubi.
     - Necessità di meati adeguati per evitare emolisi.
     - Metodo per calcolare la grandezza dei meati.

6. Curve caratteristiche delle pompe
   - *Prevalenza e punto di funzionamento:*
     - Cos’è la prevalenza di una pompa?
     - Come identificare il punto di funzionamento su un grafico della curva caratteristica.
