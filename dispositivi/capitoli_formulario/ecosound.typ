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
- Da cui si ha: $ S = i_1 - i_2 $
],
[
  #insert_image("../dispositivi/immagini/eco_sound_scheme02.png", width: 100%)
 -  $Delta t_1$ è il tempo che impiega il primo cristallo a raggiungere un fronte d'onda comune a tutti i cristalli.
  
 - $Delta t_2$ è invece il tempo che necessita l'onda del cristallo adiacente a raggiungere lo stesso fronte.
 - Da qui è facile vedere che il ritardo (che indico con R) è dato da: $ R = Delta t_1 - Delta t_2 $
]
)


