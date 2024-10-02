#import "latest_style.typ": apply_my_style


#apply_my_style(title: "Formulario di Fisica Tecnica ITPS")[


= Trasformazioni <trasformazioni>
== Trasformazione Politropica <trasformazione-politropica>
$ p dot.op V^n = upright("costante") $

Dove:

- $p$: la pressione

- $V$: il volume

- $n$: l’indice politropico

== Casi Particolari <casi-particolari>
- Per $n = 0$ $arrow.r$ #strong[Isobara]: $p = upright("costante")$

- Per $n = plus.minus oo$ $arrow.r$ #strong[Isocora]: $V = upright("costante")$

- Per $n = 1$ $arrow.r$ #strong[Isoterma]: $T = upright("costante")$

- Per $n = k$ $arrow.r$ #strong[Adiabatica]: $k = C_p / C_v$

== Lavoro durante una Trasformazione Politropica <lavoro-durante-una-trasformazione-politropica>
#strong[Caso Generale] ($n eq.not 1$):

$ L_v = frac(p_1 dot.op V_1, n - 1) lr((lr((V_1 / V_2))^(n - 1) - 1)) $

#strong[Caso Isotermico] ($n = 1$):

$ L_v = - p_1 dot.op V_1 ln V_2 / V_1 $

= Macchine <macchine>
== Rendimenti <rendimenti>
\*rendimenti isoentropici

=== Turbina adiabatica <turbina-adiabatica>
$ eta = upright("Lavoro")_(upright("Reale")) / upright("Lavoro")_(upright("Isoentropico")) = frac(h_2 - h_1, h_2^(upright("iso")) - h_1) $

=== Pompa <pompa>
$ eta = upright("Lavoro")_(upright("tecnico isoentropico")) / upright("Lavoro")_(upright("tecnico reale")) = frac(h_2^(i s o) - h_1, h_2 - h_1) $

= Cicli Termodinamici <cicli-termodinamici>
== Cicli Simmetrici <cicli-simmetrici>
Per i cicli simmetrici valgono le seguenti equazioni: $ v_1 v_3 = v_2 v_4 $ $ p_1 p_3 = p_2 p_4 $ $ T_1 T_3 = T_2 T_4 $ \
Seguono lo schema: $i n d i c i$ $d i s p a r i$ \= $i n d i c i$ $p a r i$

== Rendimenti <rendimenti-1>
Formula generale (cicli diretti): $ eta = lr(|w_(upright("utile"))|) / q_H $

=== Carnot (Gas) <carnot-gas>
- 2 isoterme + 2 adiabatiche isoentropiche $ eta = 1 - T_(m i n) / T_(m a x) $ Si ricorda che 4 $arrow.r$ 1 e 2 $arrow.r$ 3 sono trasformazioni isoterme.

=== Ciclo frigorifero Carnot (Gas) (Indiretto) <ciclo-frigorifero-carnot-gas-indiretto>
Coefficient Of Performance (COP): $ C O P_(upright("frigo")) = frac(
  Delta s_12 dot.op T_(upright("min")),
  Delta s_34 dot.op T_(upright("max")) - Delta s_12 dot.op T_(upright("min")),

) $ $ C O P_(upright("frigo")) = frac(T_(upright("min")), T_(upright("max")) - T_(upright("min"))) $ N.B. $Delta s_12 = Delta s_34$

=== Pompa di Calore (Gas) (Indiretto) <pompa-di-calore-gas-indiretto>
Si ottiene invertendo il cicli di Carnot diretto. \
\
Coefficient Of Performance (COP): $ C O P_(upright("pompa calore")) = frac(
  Delta s_34 dot.op T_(upright("max")),
  Delta s_12 dot.op T_(upright("min")) - Delta s_(34 = 12) dot.op T_(upright("max")),

) $ $ C O P_(upright("frigo")) = frac(T_(upright("max")), T_(upright("max")) - T_(upright("min"))) $ N.B. $Delta s_12 = - Delta s_34$

=== Brayton Joule (Gas) <brayton-joule-gas>
2 adiab. isoentropiche: \
(pompa 1$arrow.r$2 + turbina 3$arrow.r$4) \
\
\+ 2 isobare: \
$q_h$: 2$arrow.r$3 \
$q_c$: 4$arrow.r$1

$ eta = 1 - frac(c_p dot lr((T_4 - T_1)), c_p dot lr((T_3 - T_2))) = 1 - frac(T_4 - T_1, T_3 - T_2) $

=== Brayton Joule con rigenerazione (Gas) <brayton-joule-con-rigenerazione-gas>
La rigenerazione la si può sfruttare se T4>T2, sostanzialmente il gas uscente dalla turbina è più caldo di quello uscente dal compressore.

*Dall'uscita della turbina* senza rigenerazione si deve portare il gas da T4 a T1, la rigenerazione permette di raffreddare da T4 a Ty (con T1\<Ty\<T4) quindi il calore da cedere sarà solo quello per portare il gas da Ty a T1.

*Dall'uscita del compressore* senza rigenerazione si deve portare il gas da T2 a T3, la rigenerazione permette di riscaldare da T2 a Tx (con T2\<Tx\<T3) quindi si riesce a recuperare del calore che altrimenti verrebbe disperso nell'ambiente per alimentare la trasformazione T2 $arrow$ T3
$
eta = (Q_ "prodotto" - Q_ "ceduto") / Q_ "prodotto" \
= 1 - (c_p dot (T_y - T_1)) / (c_p dot (T_3 - T_x))
$
- Ty: temperatura di uscita dallo scambiatore lato turbina. (parte raffreddata)
- Tx: temperatura di uscita dallo scambiatore lato compressore (parte riscaldata)
==== Come calcolare Tx e Ty
Nello scambiatore verrà scambiata una *quantità di calore che dipende in primo luogo dal $Delta$ di temperatura* tra uscente dalla turbina e uscente dal compressore, ammesso che abbiano stessa portata massica e dovrebbe visto che il circuito è chiuso e la massa si conserva, la velocità dovrebbe varia solo la sezione dei due condotti. 

In secondo luogo *dipende dall'efficienza dello scambiatore $epsilon$(epsilon)*. 

$
epsilon = Q_ "scambiato \n effettivamente" / Q_ "potenzialmente \n scambiabile \n se efficienza = 100% "
$

*Massimo calore scambiabile:*
$
Q_ "max" = c_p (T_4 - T_2)
$
*Calore scambiato effettivamente:*
$
Q_ "rigenerato" = c_p |T_x - T_2| = c_p |T_1 - T_y|
$
Il $Delta T$ causato dallo scambiatore è uguale da ambe due le parti. Perciò:
$
T_x = T_2 + Delta T_ "scambiatore" \
T_y = T_4 - Delta T_ "scambiatore"
$
Dove $Delta T_ "scambiatore"$ è calcolabile come:
$
Delta T_ "scamb." = epsilon dot (T_4 - T_2)
$
==== Efficienza
$
eta_ "rig." = 1 - (|T_1 - T_y|) /(T_3 - T_x) 
$
Oppure:
$
eta_ "rig." = 1 - (|T_1 - (T_4 - Delta T_ "scamb.")|) /(T_3 - (T_2 + Delta T_ "scamb.")) 
$

=== Rankine (Vapore) <rankine-vapore>
$ eta = lr(|w|) / q_H = 1 - frac(lr(|h_1 - h_4|), h_3 - h_2) $

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

= Scambiatori di Calore <scambiatori-di-calore>
== Temperatura Media Logaritmica <temperatura-media-logaritmica>
$ Delta T_(m l) = frac(Delta T_i - Delta T_u, ln frac(Delta T_i, Delta T_u)) $

$ Delta T_i = T_(m a x \_ i n g r e s s o) - T_(m i n \_ i n g r e s s o) $ $ Delta T_u = T_(m a x \_ u s c i t a) - T_(m i n \_ u s c i t a) $ \
$i$: ingresso \
$u$: uscita

== Potenza terminca scambiata dal fluido freddo <potenza-terminca-scambiata-dal-fluido-freddo>
fluido freddo: $ dot(Q) = dot(m) dot.op c_(p f) dot.op lr((T_(f u) - T_(f i))) $ $f u$: fluido Freddo-Uscita \
$f i$: fluido Freddo-Ingresso \
\
fluido caldo: $ dot(Q) = dot(m) dot.op c_(p c) dot.op lr((T_(c u) - T_(c i))) $ $c u$: fluido Caldo-Uscita \
$c i$: fluido Caldo-Ingresso

== Coefficiente globale di scambio <coefficiente-globale-di-scambio>
$ U_(t o t) = frac(Delta T_(m l), dot(Q)) med med med med lr([K / W]) $

]