#import "custom_functions.typ": c
#import "@preview/cetz:0.3.1" as cetz

= Correzione esami
\*Si tenga conto che alcune risposte possono non essere testualmente uguali a quelle dell'esame, ma il significato è uguale. 

== Esame del 14/11/2024

=== Crocette
1. *Come si determina la costante di affinità di una proteina?*\ Dal reciproco della concentrazione della proteina nella soluzione che satura il 50% dei legami

2. *Da cosa dipende l'assorbanza di un campione?*\ Dalla concentrazione del soluto

3. *Valori tipici della portata ematica?*\ 300-400 ml/min

4. *Qual è l'effetto di un aumento della pressione in ingresso del sangue in un dializzatore a parità di portata?*\ Un aumento della portata di acqua plasmatica filtrata (trasporto convettivo)

5.* Come varia la pressione idraulica nel lato sangue lungo la fibra di un dializzatore?*\
La pressione ha un andamento lineare decrescente nel verso di scorrimento del sangue. 

note:\
Si capisce dalla legge di Poiseuille dove $Delta p$ ha una dipendenza lineare alla lunghezza L:
$
Delta p = (8 mu L Q) / (pi R^4) prop L 
$

6. *Per quale motivo serve la trappola per le bolle in un circuito di emodialisi?*\ 
 Per il pericolo di aspirazione dalla linea arteriosa.

note:\
Il dializzatore è a valle della pompa, ciò implica che nel condotto della *linea del dializzatore* vi sia una pressione positiva che tende a far uscire il contenuto, nel caso una guarnizione del dializzatore non tenesse, si avrebbe fuoriuscita di liquido, non verrebbe aspirata aria, per cui non c'è pericolo bolle dalla linea del dializzatore.

Nella linea sangue, il sangue viene aspirato dalla *linea arteriosa* e spinto nella *linea venosa* (di ritorno al paziente). La pompa aspira dalla arteriosa, essendo a valle rispetto a questa, e spinge nella venosa, essendo a monte di questa. Per cui il problema si aspirazione di aria si può avere nella linea arteriosa dove viene aspirato sangue dal paziente.

7. *Come può essere ottenuta la concentrazione di elettroliti richiesta per il liquido di dialisi?*
Ci deve essere una certa concentrazione di sali e di bicarbonato. (risposta non testuale)

nota:\
La forma dissociata del bicarbonato è $"HCO"_3^-$

8. *Formula del Sieving Coefficient*\ Rapporto tra concentrazione del soluto prima e dopo la membrana

9. *Come viene prelevato il sangue in uscita dal paziente in un circuito per la circolazione extracorporea?*\ Mediante la gravità

10. *Qual è l'effetto di un aumento delle resistenze periferiche in un paziente trattato con circolazione extracorporea con pompa peristaltica?*\ Aumenta la pressione a valle

11. *Come può essere ridotta la PCO2 nel sangue in un circuito ECMO?*\ Si aumenta la portata di gas

note:\
Non si può cambiare la portata di sangue perchè cambia l'emodinamica.

12. *Cosa genera la pulsatilità del flusso di sangue nel VAD?*\ La variazione della differenza di pressione tra atrio e ventricolo

13. *Qual è l'effetto di una pompa (centrifuga?) sul fattore di Von Willebrandt?*\ Riduce i multimeri ad Alto peso molecolare

14. *Quale dei seguenti fattori aumenta la prevalenza di una pompa di centrifuga per la circolazione extracorporea?* L'angolo della palettatura in uscita dal rotore

note:\ Dato dalla formula della prevalenza

15. *Cosa si intende con pancreas artificiale?*\  È il sistema di rilevamento della glicemia in continuo con la perfusione di glicemia automatica. 


=== Esercizio 1
Calcolare la concentrazione di albumina nel liquido di dialisi all'uscita del dializzatore in microgrammi millilitri, assumendo che sia rimossa per sola diffusione attraverso una membrana di 50 µm e di spessore 1 m², in cui sono presenti i pori cilindrici del diametro di 10 nm, che occupa il 2,5% della superficie della membrana, si assuma che la portata del liquido di dialisi 500 mL/min, la concentrazione del plasma dell'albumina è 3,6 g/dL, la diffusività è $9.28 dot 10^(-7)("cm"²)/s$  e il raggio dell'albumina sono 3,54 nm. 

Si usi la seguente formula per il fattore di Hindrance:
$
epsilon = (1- lambda)^2 (1 - 2.104lambda + 2.09lambda^3 - 0.95lambda^5)
$
valore di verifica: ~0.143 facendo l'errore di considerare il diametro anzichè il raggio ($lambda=3.54/10$)

Inoltre si disegni il grafico dell'andamento della concentrazione in funzione dello spessore della membrana.


=== Esercizio 2

All'inizio della seduta dialitica la concentrazione dell'urea è di 136 mg/dL, la portata è di 300 ml/min. Il liquido di dialisi si muove controcorrente ad una portata di 500 ml/min. Si calcoli quali sono le concentrazione dell'urea in mg/dL nel liquido di dialisi e nel plasma all'uscita dal dializzatore e si presenti graficamente l'andamento della concentrazione di urea del sangue e nel liquido di dialisi lungo il dializzatore. Nel caso si colleghi il dializzatore alle linee in modo che i fluidi si muovano in equicorrente si calcoli quale sarebbe la massima clearance dell'urea ottenibile e si rappresenti il diagramma delle concentrazione dell'urea nel plasma e nel liquido lungo il dializzatore in questa configurazione.

[Grafico]\
il grafico mette in relazione portata ematica e clearance e mostra che la clearance aumenta linearmente fino a raggiungere un plateau per cui si satura (rimane costante). 

Da cui per 300 ml/min di portata di sangue si ottiene una clearance di 262 ml/min.

==== Soluzione
1. Si può calcolare la portata massica di urea ceduta al liquido di dialisi con la clearance K e la concentrazione C di urea nel sangue:$ dot(m) = K dot C_"sangue" = \ = 262 "ml"/"min" dot 136/100 "mg"/"ml" = \ =#c(262*136/100) "mg"/"min" $

2. Quindi si può ricavare la concentrazione di urea nel liquido di dialisi all'uscita con la portata della dialisi e la portata massica: $ C_"ld" = dot(m) / Q_"ld" = (356.32 "mg"/"min")/ (500 "ml"/"min") = #c(356.32/500) "mg"/"ml" = #c(356.32/500*100) "mg"/"dl" $

3. Per il sangue, siccome la cleareance è la portata di sangue totalmente pulita si può calcolare considerando la massa di soluto che è presente solo nella portata di sangue sottratta alla clearance: $ C_"sangue fin." = (Q_"sangue" - K)/Q_"sangue" dot C_"sangue iniz."= \ = ((300 -262)"ml"/"min") /( 300 "ml"/"min") dot 136 "mg"/"dl" =\ = #c((300-262)*136/300) "mg"/"dl" $

4. Nel caso di configurazione equicorrente, la concentrazione finale sarà uguali per sangue e liquido di dialisi, pari a: $ C_"finale" = (Q_"sangue")/(Q_"sangue" + Q_"ld") dot C_"iniziale" = (300 "ml"/"min") / ((300 + 500) "ml"/"min") dot 136/100 "mg"/"ml"= \ = #c(300/(500+300)*136/100) "mg"/"ml" = #c(300/(500+300)*136) "mg"/"dl"  $

5. Per calcolare la K per l'equicorrente, si divide la portata del sangue in una completamente pulita K e una che deve trasportare tutta la portata massica di soluto che è presente all'inizio: $ Q_"parziale" + K = Q_"sangue" $ Usando il bilancio di massa: $ C_"finale"dot Q_"sangue" = Q_"parziale" dot C_"iniziale" + K dot C_"nulla" = Q_"parziale" dot C_"iniziale"\ Q_"parziale" = C_"finale" / C_"iniziale" dot Q_"sangue"\ K = Q_"sangue" - Q_"parziale" = Q_"sangue" (1- C_"finale"/C_"iniziale")\ = 300 "ml"/"min" dot (1- (51 "mg/dl")/(136 "mg/dl")) = #c(300*(1 - 51/136) ) "ml"/"min"  $ 

=== Risultati
- Clearance iniziale = 262 mL/min
- Concentrazione nel liquido di dialisi = 0.71 mg/mL (71.26 mg/dL)
- Concentrazione nel plasma dopo dialisi = 0.17 mg/mL (17.227 mg/dL)
- Concentrazione finale nell'equilibrio = 51 mg/mL
- Clearance finale con bilancio di massa = 187.5 mL/min

*Conclusione:*\
Il dializzatore con controcorrente risulta più efficiente, con una clearance di 262 mL/min rispetto alla clearance dell'equicorrente di 187.5 mL/min.




=== Esercizio 3
L'angolo acuto tra l'asse delle palette e la circonferenza dell'ingresso è 30°. Il raggio interno del rotore è di 12 mm. L'altezza della palettatura è di 2 mm. Si calcoli a che velocità di rotazione della pompa si ottiene il massimo rendimento quando la portata è 5400 mL/min. Si assume che la velocità in ingresso sia uniforme lungo l'altezza della palettatura. Si rappresenti graficamente la vista in pianta della palettatura dei vettori di velocità ingresso e uscita dal rotore nel caso che la palettatura formi un angolo di 90° con la circonferenza esterna del rotore.

#figure(align(center,cetz.canvas(background: white, {
    import cetz.draw: *
    import cetz.draw: line

    set-style(
    mark: (fill: black, scale: 1.2),
    stroke: (thickness: 1.4pt, cap: "round"),
    angle: (
      radius: .8,
      label-radius: .22,
      fill: green.lighten(80%),
      stroke: (paint: green.darken(50%))
    ),
    content: (padding: 1pt)
  )
    let scale_f = 20
    let start = (0,0)

    // vettori
    let (u_x,u_y) = (0,calc.sqrt(calc.pow(119.364/scale_f, 2)- calc.pow(59.682/scale_f,2)));
    let u_v = (u_x,u_y);

    let (c_x,c_y) = (-59.682/scale_f, 0);
    let c_v = (c_x,c_y);

    let (v_x,v_y) = (c_x, -u_y);
    let v_v = (v_x,v_y);

    let U = line(name: "U",start, u_v, stroke: (paint: red),mark: (end: "stealth"))

    let V = line(name: "V", start, v_v, stroke: (paint: blue),mark: (end: "stealth"))

    let C = line(name: "C", start, c_v, stroke: (paint: green), mark: (end: "stealth"))

    let calc_angle(x1,x2, y1, y2) = {

      let mod_prod = x1 * y1 + x2 * y2
      let prod_mod = calc.sqrt(
        calc.pow(x1,2) + calc.pow(x2,2)
      ) * calc.sqrt(
        calc.pow(y1,2) + calc.pow(y2,2)
      );
      return calc.acos(mod_prod / prod_mod).deg()
    }
    // circonferenza
    cetz.draw.circle((2,0),radius: 2, name:"rotore")
    content("rotore.start",[#v(4cm) #text("rotore\nraggio\ninterno\nr=12mm")])


    // ANGOLI
    cetz.angle.angle(
      (0,0), (u_x,u_y), (c_x, c_y),
      label: text(green, [#v(-1.2cm) #h(-3.5cm) $#c(calc_angle(u_x,u_y,c_x,c_y))° = alpha_1$])
    )

    cetz.angle.angle(
      (0,0), (v_x, v_y), (u_x, -u_y),
      label: text(blue, [#v(2.2cm) #h(-2.9cm) $beta_1 = #c(calc_angle(v_x,v_y,0,-u_y))°$]),
      radius: 1,
      fill: blue.lighten(50%)
    )
    line(name: "U",start, (0,-3), stroke: (paint: black))
    U;C;V
    content(("U.start", 70%, "U.end"), text(red, "    U"), anchor: "north")
    content(("C.start", 70%, "C.end"), text(green, "    C       "), anchor: "south")
    content(("V.start", 70%, "V.end"), text(blue, "        V"), anchor: "north")

    
  }
)), caption: "Rappresentazione del triangolo delle velocità in ingresso per il problema presentato. Proporzioni rispettate."
)
=== Risultati
$omega$ = 822 RPM 

=== Soluzione
===== Calcolo della Velocità di Ingresso <calcolo-della-velocità-di-ingresso>
La portata della pompa è di 5.400 mL/min, che corrisponde a 5,4 L/min. La velocità di ingresso $C_1$ può essere calcolata con la seguente formula:

$ C_1 = upright("Portata") / upright("Area") $

Dove l’area dell’ingresso è data dalla formula:

$ upright("Area") = 2 pi r h $

Con:

- Raggio $r = 12 thin upright("mm") = 1 , 2 thin upright("cm")$,

- Altezza della palettatura $h = 2 thin upright("mm") = 0 , 2 thin upright("cm")$.

Calcoliamo l’area:

$ upright("Area") = 2 pi dot.op 1 , 2 dot.op 0 , 2 = #c(2*calc.pi*1.2*0.2) thin upright("cm")^2 $

Ora possiamo calcolare la velocità di ingresso:

$ C_1 = frac(
  5400 thin upright("cm")^3 \/ 60 upright("sec") ,
  1.508 "cm²"

) = #c(5400/1.508/60) thin upright("cm/s") $

===== Calcolo della Velocità di Uscita per il Massimo Rendimento <calcolo-della-velocità-di-uscita-per-il-massimo-rendimento>
Per ottenere il massimo rendimento, la velocità assoluta $C_1$ deve essere allineata con le palette:

//#{line(start:(0cm,0cm), angle: 30deg, length: 2cm)}

//#image("../../applicazioni/immagini/ex_gi.gif")

#cetz.canvas(length: 3cm, {
  import cetz.draw: *
  import cetz.draw: line as cline
  set-style(
    mark: (fill: black, scale: 2),
    stroke: (thickness: 0.4pt, cap: "round"),
    angle: (
      radius: 0.3,
      label-radius: .22,
      fill: green.lighten(80%),
      stroke: (paint: green.darken(50%))
    ),
    content: (padding: 1pt)
  )

  grid((-1.5, -1.5), (1.4, 1.4), step: 0.5, stroke: gray + 0.2pt)

  circle((0,0), radius: 1)


  cetz.draw.line((-1.5, 0), (1.5, 0), mark: (end: "stealth"))
  content((), $ x $, anchor: "west")
  line((0, -1.5), (0, 1.5), mark: (end: "stealth"))
  content((), $ y $, anchor: "south")

  for (x, ct) in ((-1, $ -1 $), (-0.5, $ -1/2 $), (1, $ 1 $)) {
    line((x, 3pt), (x, -3pt))
    content((), anchor: "north", ct)
  }

  for (y, ct) in ((-1, $ -1 $), (-0.5, $ -1/2 $), (0.5, $ 1/2 $), (1, $ 1 $)) {
    line((3pt, y), (-3pt, y))
    content((), anchor: "east", ct)
  }

  // Draw the green angle
  cetz.angle.angle((0,0), (1,0), (1, calc.tan(30deg)),
    label: text(green, [#sym.alpha]))

  line((0,0), (1, calc.tan(30deg)))

  set-style(stroke: (thickness: 1.2pt))

  line((30deg, 1), ((), "|-", (0,0)), stroke: (paint: red), name: "sin")
  content(("sin.start", 50%, "sin.end"), text(red)[$ sin alpha $])
  line("sin.end", (0,0), stroke: (paint: blue), name: "cos")
  content(("cos.start", 50%, "cos.end"), text(blue)[$ cos alpha $], anchor: "north")
  line((1, 0), (1, calc.tan(30deg)), name: "tan", stroke: (paint: orange))
  content("tan.end", $ text(#orange, tan alpha) = text(#red, sin alpha) / text(#blue, cos alpha) $, anchor: "west")
})
\ \
\ \
La velocità di uscita $V_1$ è:

$ V_1 = C_1 / (cos (beta_1-90°)) = (C_1) / cos(30°-90°) = (C_1) / cos(60°)=\ = (C_1) / (1/2)= 2 C_1 = 2 dot 59.682= #c(2*59.682) thin upright("cm/s") $

===== Calcolo della Velocità Angolare della Pompa <calcolo-della-velocità-angolare-della-pompa>
Siccome il triangolo delle velocità è un triangolo rettangolo ipotenusa C1, si calcola U1 con il teorema di pitagora:
$
V_1^2 = U_1^2 + C_1^2
$
Per cui:
$
U_1^2 = V_1^2 - C_1^2\
U_1 = sqrt(V_1^2 - C_1^2) =\
= sqrt((119.364 "cm/s")^2 - (59.682 "cm/s")^2)\
= #c(calc.sqrt(calc.pow(119.364, 2) - calc.pow(59.682, 2))) "cm/s"
$

Da cui si ottiene la velocità angolare con:

$
omega = U_1 / r = (103.372 "cm/s") / (1.2 "cm") = #c(103.372/1.2) "rad/s"
$


===== Conversione in Giri al Minuto <conversione-in-giri-al-minuto>
Per ottenere la velocità angolare in giri al minuto (rpm), convertiamo i radianti in giri. Sappiamo che 1 giro corrisponde a $2 pi$ radianti, dopodichè si converte da secondi a minuti. Pertanto, la velocità angolare in giri al minuto è:

$
"RPM" = omega("rad/s") dot ( 60 s/"min") / (2pi ("rad/giro"))\
= 86.143 "rad/s" dot (60 "s/min")/(2pi "rad/giro") = #c(86.143* 60 / (2 * calc.pi)) "giri/min"
$

