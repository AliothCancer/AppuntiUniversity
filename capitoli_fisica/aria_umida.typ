= Aria Umida (miscela bicomponente) <aria-umida-miscela-bicomponente>
== Umidità Assoluta <umidità-assoluta>
$ U_A = 0.622 dot.op frac(p_(v a p o r e %), p_(t o t a l e) - p_(v a p o r e %)) = 0.622 dot.op frac(phi dot.op p_S, p_(upright("totale")) - phi dot.op p_S) $

- $U_A$: Umidità assoluta

- $phi$: Umidità relativa

- $p_S$: Pressione di saturazione del vapore alla data T

- $p_(upright("totale"))$: Pressione totale

Formule correlate : $ U_A = m_(H 2 O) / m_(A r i a med S e c c a) $ $ 0.622 = frac(R, M m_(H 2 O)) dot.op frac(M m_(A r i a med S e c c a), R) $

== Umidità Relativa <umidità-relativa>
$ phi = P_v / P_(s a t) $

- $phi$: Umidità relativa

- $P_V$: Pressione parziale vapore

- $P_(upright("sat"))$: Pressione di saturazione del vapore

== Entalpia <entalpia>
Se $U_a < U_(s a t)$ $ h = c_(p_(A S)) dot.op T med + med U_a dot.op lr((c_(p_v) T + h_(0 , v))) $

Dove:

- $c_(p_(A S)) = 1.007 frac(k J, k g)$ : calore specifico aria secca

- $c_(p_v) = 1.86 frac(k J, k g)$ : calore specifico vapore

- $h_(0 , v) = 2506.1 frac(k J, k g)$ : entalpia vapore a 0 C°

- $T$ : temperatura in Celsius

- $U_a$ : umidità assoluta

== Temperatura di Rugiada
È la temperatura alla quale il vapore contenuto nell'aria inizia condensarsi.

Esempio:
- Umidità relativa = 60%
- Pressione totale = 1 bar = $10^5$ Pa = 100 kPa

Da questi dati si può ricavare qual è la *pressione parziale di vapore*. Cioè quella parte della pressione totale data dalla presenza di vapore, secondo la legge delle pressioni parziali, la pressione totale di un volume contenente gas/vapore è dato dalla somma delle pressioni parziali. Quindi:

$
P_"tot" = P_v + P_"as"
$
- Pv : pressione parziale del vapore
- Pas : pressione parziale dell'Aria Secca 

Per calcolare la pressione parziale di vapore si può usare la definizione di umidità relativa:
$
phi = P_v / P_"sat"(T=20 C°) \ \ => \ \
P_v = phi dot P_"sat"(T=20 C°) \
$

Quindi la Pv sarà il 60% della *attuale pressione di saturazione* cioè quella a 20C°, la *$P_"sat"$ dipende solamente dalla temperatura*.

- Come si ricava la $P_"sat"$?\ Ad ogni valore di pressione di saturazione del vapore corrisponde una temperatura di saturazione.\ Quindi basta vedere la pressione associata alla temperatura attuale, in questo caso 20C° sulla tabella di vapore-acqua satura. Da cui 20C° $=>$ 2.337 kPa.

#let p_v = {
  0.6 * 2.337
}
$
P_v = 0.6 dot 2.337 space k P a = #str(p_v,).slice(0,6) space k P a
$

Se ora ci mettiamo nel caso in cui la P di saturazione del vapore è proprio 1.4022 kPa possiamo andare a vedere a che temperatura corrisponde questa condizione. Dalla tabella non c'è il valore esatto corrispondente a 1.4022 kPa ma ci sono valori in cui è compreso 1.227kPa (10C°) e 1.7039kPa (15C°), si procede con l'interpolazione lineare:

$
T_r = (T_2 - T_1) / (P_2 - P_1) (P_x - P_1) + T_1 = 11.8368 space C°
$
Si potevano usare anche i valori della tabella con i valori di pressione tra 1 e 1.5 kPa, il risultato esce leggermente diverso. Essendo un'interpolazione sono entrambe approssimazioni, con l'assunzione che tra due valori vicini si può approssimare l'andamento lineare (come una retta).

*L'umidità relativa* _dipende_ dalla *temperatura* (che varia la $P_"sat"$) e dalla *quantità di vapore nell'aria* (rappresentata dalla pressione parziale di vapore).

È la relazione che c'è tra temperatura e pressione parziale di vapore