
= Conduzione del calore: Regime non Stazionario <conduzione-del-calore-regime-non-stazionario>

== Numero di Biot <numero-di-biot>
$ upright("Bi") = R_k / R_h = frac(h L_(c a r a t t e r i s t i c a), k) $

- $h med med frac(W, m^2 K)$ : coeff. di scambio termico convettivo (fluidi)

- $k med med frac(W, m K)$ : coeff. di scambio termico conduttivo (solidi)

- L: lunghezza caratteristica

- $R_k$ : Resistenza alla conduzione

- $R_h$ : Resistenza alla convezione

== Lunghezza Caratteristica <lunghezza-caratteristica>
$ L_(upright("car.")) = V / S $

- V : Volume dell’oggetto

- S: Superficie dell’oggetto \
  #underline[a contatto con il fluido termovettore]

== Tempo di Raffreddamento <tempo-di-raffreddamento>
N.B. \
Valida solamente se \
il numero di Biot $lt.eq 0.1$

$ t = tau ln frac(T_i - T_oo, T_f - T_oo) $ \
$T_i$: iniziale \
$T_f$: finale \
$T_oo$: temperatura riferita al fluido in cui è immerso il corpo. \
\
Con $ tau = frac(rho c, h) L_(upright("caratteristica")) $ $ tau = frac(M dot.op c, h dot.op S) $

== Temperatura finale al tempo t <temperatura-finale-al-tempo-t>
Dato l’istante t, data $T_oo$ (temperatura fluido convettivo) e $tau$. La temperatura finale è pari a:~~$ T_f = lr((T_i - T_oo)) dot.op e^(- t / tau) + T_oo $
