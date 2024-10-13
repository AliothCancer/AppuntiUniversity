= Trasmissione del calore: Regime Stazionario

== Coefficiente di conduzione (k)
- *Si indica con* $k$

- *Si misura in* $W / (m K)$

- Si usa per i vari strati della parete

- Differente per ogni materiale, gas, solido, liquido.

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

$
  U = sum_j (1/h_j) + sum_i (s_i / k_i)  
$
- In genere ci sono solamente due convezioni, *una interna* e *una esterna* che rappresentano i fluidi dentro e fuori un'ipotetica stanza. *Convezione fuori parete*.
- Mentre ci possono essere tanti più strati di conduzione nella parete. *Conduzione dentro parete*.

Quindi la formula si riduce a:

$
  U = 1/h_i + sum_i (s_i / k_i)  + 1/h_e
\
  "convezione"_"interna" + "conduzione" + "convezione"_"esterna"
$

== Conduttanza termica
- *Si misura in* $W/K$
- È l'inverso della resistenza termica

== Resistenza termica
=== Di Conduzione
- *Si indica con* $R_k$
- *Si misura in* $K/W$

$
  R_k = L / (S dot k)
$
- L $[m]$: spessore dello strato

- k $[W/ (m K)]$: coeff. di conduzione

- S $[m^2]$: superficie di scambio dello strato

=== Di Convezione
- *Si indica con* $R_h$
- *Si misura in* $K/W$

$
  R_k = 1 / (S dot h)
$

- h $[W/ (m K)]$: coeff. di conduzione

- S $[m^2]$: superficie di scambio dello strato

=== Complessiva
- *Si misura in* $K/W$
$
  R_"tot" = 1 / (S dot U)
$

- S: superficie di scambio
- U: coeff. globale di scambio
$
  R_"tot" = (Delta T) / dot(Q)
$
- $dot(Q):$ potenza termica scambiata

- $Delta T:$ differenza di temperatura tra interno ed esterno

== Caso: Parete Piana


== Caso: Parete Cilindrica


== Calcolo resistenze 
=== Serie
=== Parallelo