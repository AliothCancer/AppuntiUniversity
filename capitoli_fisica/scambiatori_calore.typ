#import "@preview/cetz:0.2.2": plot, canvas

= Scambiatori di Calore <scambiatori-di-calore>
== Temperatura Media Logaritmica <temperatura-media-logaritmica>
=== Caso: $C_"caldo" = C_"freddo"$

$
  Delta T_"ml" = Delta T_"ingresso" = Delta T_"uscita" 
$

=== Tutti gli altri casi

$
  Delta T_"ml" = (Delta T_1 - Delta T_2) / ln((Delta T_1) / (Delta T_2))
$

dove:
- $Delta T_1:$ differenza di temperatura tra le due linee da una parte del grafico. \ #h(13.5cm)  (@scamb_graph)

- $Delta T_2:$ differenza di temperatura tra le due linee dall'altra parte del grafico (@scamb_graph).

#figure(image("/immagini/scamb_graph_temp.png", height: 6cm),
caption: "Valido tranne nel caso di capacità termiche uguali per le due parti dello scambiatore." 
)<scamb_graph>
== Potenza termica scambiata dal fluido freddo <potenza-terminca-scambiata-dal-fluido-freddo>
*fluido freddo:* $ dot(Q) = dot(m) dot.op c_(p f) dot.op lr((T_(f u) - T_(f i))) \ \ C = dot(m) dot c_(p f) $ 

$f u$: fluido Freddo-Uscita\
$f i$: fluido Freddo-Ingresso\
$C:$ capacità termica\
\
*fluido caldo:* $ dot(Q) = dot(m) dot.op c_(p c) dot.op lr((T_(c u) - T_(c i))) $
$c u$: fluido Caldo-Uscita\
$c i$: fluido Caldo-Ingresso

== Bilancio

$
  dot(Q)_"freddo" = - dot(Q)_"caldo"   
$
\*Nota: freddo e caldo sono riferiti ai liquidi delle due parti dello scambiatore. 

== Coefficiente globale di scambio <coefficiente-globale-di-scambio>
$ U_(t o t) = frac(dot(Q), S dot Delta T_(m l)) med med med med lr([W / (m^2 K)]) $



  


