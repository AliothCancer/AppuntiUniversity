= Trasmissione del calore: Regime Stazionario

== Coefficiente di conduzione (k)
- *Si indica con* $k$

- *Si misura in* $W / (m K)$

- Si usa per i vari strati della parete

- Differente per ogni materiale, gas, solido, liquido.

- È una misura di quanto velocemente un materiale scambia calore (Potenza termica $dot(Q)$), *indipendentemente* *dalla superficie di scambio* e *dalla differenza di temperatura* che viene applicata alle estremità considerate.

== Coefficiente di convezione (h)
- *Si indica con* $h$

- *Si misura in* $W / (m^2 K)$

- Si usa per i fluidi convettivi
  - prima della parete
  - dopo la parete

== Coefficiente di scambio termico globale (U)

- È un coefficiente equivalente che tiene conto dei vari coefficienti di convezione e conduzione.

- *Si indica con U*
- *Si misura in* $W / (m^2 K)$


== Conduttanza termica
- *Si misura in* $W/K$
- È l'inverso della resistenza termica


== Caso: Parete Piana
=== Resistenza alla Conduzione
- *Si indica con* $R_k$
- *Si misura in* $K/W$

$
  R_k = L / (S dot k)
$
- L $[m]$: spessore dello strato della parete

- k $[W/ (m K)]$: coeff. di conduzione

- S $[m^2]$: superficie di scambio dello strato

=== Resistenza alla Convezione
- *Si indica con* $R_h$
- *Si misura in* $K/W$

$
  R_h = 1 / (S dot h)
$

- h $[W/ (m^2 K)]$: coeff. di conduzione

- S $[m^2]$: superficie di scambio dello strato


=== Potenza Termica
$
  dot(Q) = (Delta T) / R_"tot"
\ \
  dot(Q) = U dot S dot  Delta T
$
Dove $S$ è una superficie rettangolare:
$
  S = a dot b
$

== Caso: Parete Cilindrica
=== Resistenza alla Conduzione
- *Si indica con* $R_k$
- *Si misura in* $K/W$

$
  R_k = ln(r_e / r_i) / (2 pi L k)
$
- L $[m]$: spessore dello strato

- k $[W/ (m K)]$: coeff. di conduzione

- S $[m^2]$: superficie di scambio dello strato

=== Resistenza alla Convezione
- *Si indica con* $R_h$
- *Si misura in* $K/W$

$
  R_h = 1 / (S dot h)
\
  S = 2 pi r c
$
\**Nota*: ci sarà una superficie interna ed una esterna.

- c $[m]$ : altezza del cilindro

- h $[W/ (m K)]$: coeff. di conduzione

- S $[m^2]$: superficie di scambio dello strato

=== Potenza Termica

$
  dot(Q) = (T_"e" - T_"i") / R_k = -(2 pi L k dot (T_"e" - T_"i")) / ln(r_"e" / r_"i")
$
\* è positivo se $T_i$ > $T_e$ cioè uscente rispetto all'interno del cilindro


- *SEGNO :* Per il II° principio della term. il calore va da un corpo più caldo a uno più freddo. Una volta che si sa quale delle temperature tra esterne ed interna si capisce qual è il verso. In alternativa si assume un verso a scelta e se esce negativo il verso effettivo è l'opposto rispetto a quello scelto.

== Calcolo resistenze 
- Valide sia per *conduzione* che per *convezione*
=== Serie
$
R_"tot" = R_1 + R_2 + ... + R_i
$

=== Parallelo
$
R_"tot" = (1 / R_"tot")^(-1) = (1/R_1 + 1/R_2 + ... + 1/R_i)^(-1)
$


=== Complessiva


- *Si misura in* $K/W$

$
  R_"tot" = 1 / (S dot U) = sum R_"serie" + sum R_"parallele"
$

- S: superficie di scambio
- U: coeff. globale di scambio
$
  R_"tot" = (Delta T) / dot(Q)
$
- $dot(Q):$ potenza termica scambiata

- $Delta T:$ differenza di temperatura tra interno ed esterno

