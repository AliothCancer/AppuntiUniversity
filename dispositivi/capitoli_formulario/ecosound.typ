#import "../../utils/latest_style.typ": insert_image
#import "../../utils/custom_functions.typ": two_col

= Ecografia

I cristalli si attivano in sequenza, da una parte all'altra. Ci si riferisce ad un array (schieramento) di cristalli uno posizionato accanto all'altro, non c'è spazio tra un cristallo e l'altro.

== Schema
#insert_image("../dispositivi/immagini/eco_sound_scheme00.png", width: 80%)
== Ritardo di attivazione
=== Descrizione
Il ritardo di attivazione dei cristalli per generare un'onda inclinata.

In funzione di angolo di deflessione, spessore del cristallo e velocità di propagazione del suono nel mezzo specifico.

=== Formula
$
R = S/v sin alpha
$
- *R:* ritardo
- *S:* spessore cristallo (i cristalli sono adiacenti senza spazi tra loro)
- *v:* velocità di propagazione del suono
- *$alpha: $* angolo di deflessione (inclinazione del fronte d'onda rispetto alla normale della superficie di schieramento dei cristalli)Il ritardo di attivazione dei cristalli per generare un'onda inclinata.


=== Come è stata ricavata

#grid(
  columns: 2,
  column-gutter: 0.5cm,
[
  #insert_image("../dispositivi/immagini/eco_sound_scheme01.png", width: 100%)
- S1 e S2 sono gli spessori dei cristalli, ma sono tutti uguali a S, quindi la distanza tra il centro di due cristalli è pari allo spessore S.
1. Da cui si ha: $ S = i_1 - i_2 $
],
[
  #insert_image("../dispositivi/immagini/eco_sound_scheme02.png", width: 100%)
 -  $Delta t_1$ è il tempo che impiega il primo cristallo a raggiungere un fronte d'onda comune a tutti i cristalli.
  
 - $Delta t_2$ è invece il tempo che necessita l'onda del cristallo adiacente a raggiungere lo stesso fronte, deve essere compreso nel tempo che impiega il primo cristallo perchè devono raggiungere il fronte allo stesso tempo t\*.
 2. Da qui è facile vedere che il ritardo (che indico con R) è dato da: $ R = Delta t_1 - Delta t_2 $
]
)

3. I tempi di arrivo al fronte per definizione sono definiti come il tempo necessario all'onda generata dal cristallo a percorrere la distanza fino al fronte: $ Delta t_1 = d_1 / v #h(2cm)  Delta t_2 = d_2 / v $

\*Con v velocità di propagazione del suono nel mezzo specifico e le relative distanze d1 e d2 che si trovano nell'immagine a sinistra

4. Andando a sostituire queste definizioni nella formula del ritardo:
$
R = (d_1/v - d_2/v) = 1/v (d_1 - d_2)
$

5. Si può notare la relazione dello spessore dei cristalli con i lati $i_1 " e " i_2$:
$
S = i_1 - i_2
$

6. Si può ricavare $i$ in funzione della distanza $d$ come segue: $ i = d / (sin alpha) $

7. Sostituendo nella relazione di S, si ottiene: $ S = 1/(sin alpha) (d_1 - d_2) $

8. Si può quindi isolare $(d_1- d_2)$ e sostituirlo in R: $ (d_1 - d_2) = S dot sin alpha  $ $ R = 1 / v (S dot sin alpha) = S / v sin alpha  $
 



