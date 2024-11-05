#import "../../utils/transf_graph.typ": trasformazioni_graph


= Trasformazione Politropica <trasformazione-politropica>
  Con una trasf. politropica si può descrivere una qualsiasi trasformazione termodinamica.
$
p = p_1 (v_1/v)^(n)
$

#trasformazioni_graph(mode:"a4")

#h(1em)
  === Equazione di stato
$ p dot.op V^n = upright("costante") $

Dove:

- $p$: la pressione

- $V$: il volume

- $n$: l’indice politropico, *pari a k se* trasf. adiabatica e quasistatica(cioè isoen  tropica)

== Casi Particolari <casi-particolari>
- Per $n = 0$ $arrow.r$ #strong[Isobara]: $p = upright("costante")$

- Per $n = plus.minus oo$ $arrow.r$ #strong[Isocora]: $V = upright("costante")$

- Per $n = 1$ $arrow.r$ #strong[Isoterma]: $T = upright("costante")$

- Per $n = k$ $arrow.r$ #strong[Adiabatica]: $k = C_p / C_v$


== Lavoro massico durante una Trasformazione Politropica <lavoro-durante-una-trasformazione-politropica>
Calcolando:
$
w = integral _(v_1) ^(v_2) p dif v = p_1 v_1^n integral _(v_1) ^(v_2) v^(-n) dif v
$

Si distinguono due casi:

- #strong[Caso Generale] ($n eq.not 1$):

$ L_v = frac(p_1 dot.op V_1, n - 1) lr((lr((V_1 / V_2))^(n - 1) - 1)) $

- #strong[Caso Isotermico] ($n = 1$):

$ L_v = - p_1 dot.op V_1 ln V_2 / V_1 $

== Calore massico scambiato
Il lavoro per un'espansione è da considerare come un contributo negativo all'energia interna ma se è un'espansione allora $Delta v = v_2 - v_1 > 0$ e si avrebbe un termine positivo di lavoro quindi si aggiusta mettendo un meno.
$
Delta u = q - w #h(.7cm)\ \ \ \
=>
$
#align(center, 
  block($q = Delta u + w$,
  fill: rgb(34, 245, 55, 90),
  height: 1.2em,
  width: 5cm,
  radius: 4pt))

$ 
Delta u = c_v dot (T_2 - T_1) \
w = integral _(v_1)^(v_2) p dif v \
$
//#####
$
=> \ q = c_v dot (T_2 - T_1) + integral _(v_1)^(v_2) p dif v
$
*Due casi per il lavoro:*

- $n != 1$:
$
q = c_v dot (T_2 - T_1) + frac(p_1 dot.op V_1, n - 1) lr((lr((V_1 / V_2))^(n - 1) - 1))
$

- $n = 1$:

$
q = c_v dot (T_2 - T_1) - p_1 dot.op V_1 ln V_2 / V_1 
$
== Calori specifici gas perfetti
*N.B.*\
*NO vapore*\ *SÌ* aria umida ma solo per la parte di *aria secca*.


$
R^* = R / ("Mm")
$

- R : Costante dei gas perfetti = 8314 $J/("kmol" K) $

- Mm : Massa Molare del gas $["kg"/"kmol"]$ pari alla somma delle masse atomiche degli atomi che compongono la singola molecola.\ Esempio: N2 = N + N = 14 + 14 = 28 kg/kmol

Calcolare calori specifici con l'indice *n* della politropica.

=== A volume costante
$
c_v = 1 / (n-1) dot R^*
$
=== A pressione costante
$
c_p = n / (n-1) dot R^*
$
== Trasformazione Isoentropica
*Se* la trasformazione *è adiabatica* *e* anche *quasistatica* (deve essere specificato nella traccia dell'exe) *Allora* *n=k*. 


Dove: 
$
k = c_p / c_v
$

La quasistaticità è necessaria perchè se la trasformazione non è reversibile (presenza di forze non conservative che dissipano calore) si genera entropia. 
*Forze non conservative -> dissipazione calore \ -> generazione entropia.*
