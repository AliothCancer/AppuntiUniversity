#import "../../../utils/custom_functions.typ": c

// diminutivo di energy mass
#let em() = $"kJ"/"kg"$

#set math.equation(numbering: "1.1")

= Esercitazione 4: Miscele bifasiche
== Problema n.4
#image("immagini/E4P4_obscured.png", width: 115%)

=== D01) Potenza meccanica prima trasf.
Formula:
$
w_t = integral_(p_1)^(p_2) v space dif p \ \
$<eq1>
oppure
$
w = h_2 - h_1
$<eq2>

- Si nota che $v_1 = v_("ls")$ quindi x=0:
- Siccome è liquido e viene compresso, il volume massico non varia(variazione trascurabile) $=> v_1 = v_2$.
- La potenza meccanica si calcola con il lavoro tecnico perchè un fluido incomprimibile non può subire lavoro volumico.



Compressione da liquido saturo $=>$ liquido sottoraffreddato, si sceglie quindi la  @eq1, poichè non abbiamo tabelle per liquidi sottoraffreddati.

$
w_t = v_1 dot (p_2 - p_1)\ \
= 0.0010434 m^3/"kg" dot (10 - 1)"bar" dot 100"kPa"/("bar") dot 1000 J/"kJ" \ \ = #c({0.0010434 * (10-1)*100 * 1000}) "J"/"kg" \ \
#v(1cm)
dot(W) = w dot dot(m) = 939.06 "J"/"kg" dot 1 "kg"/s  = 939.06 W
$

Risultato: 936.1 W (errore accettabile?)

#set math.equation(numbering: none)

=== D02) Potenza termica scambiata 2° trasf.
*trasformazione*\
2 → 3: riscaldamento isobaro fino a T3 = 300°C;

#table( columns: 3,
  "","2", "3",
  "p","1000 kPa","1000 kPa",
  "T","99.632C°","300 C°"
)

- $T_"sat"$ = 179.88 C°
$
q = h_"3 surr." - h_2 = h_"3 surr." - (h_1 + w_"t 1→2")  
$
$
dot(Q) = q dot dot(m) = (3052.1 - (417.51 + 0.93906))dot 1 = #c({3052.1 - (417.51 + 0.93906)}) space k W
$

=== D03) Determinare la potenza prodotta durante la prima espansione.
#grid(columns: 2, rows: 3,
  circle(stroke: black)[
    #set align(center + horizon)
    3
  ],
  box(grid(columns: 2,h(1em), [
    p = 1000 kPa \ T = 300 C° \ Vapore surriscaldato
  ])),
  box(v(.5cm)), box(),
  circle(stroke: black)[
    #set align(center + horizon)
    4
  ],
  box(grid(columns: 2,h(1em), [
    p = 500 kPa \ T($s_3$ = 7.1251) = 200C°(7.0592) < T < 250C°(7.2721)\ Vapore surriscaldato
  ])),
  ) 

Espansione isoentropica fino a p4 = 5bar = 500 kPa
- Di un vapore surriscaldato fino 
$
"Isoentropica" => q = 0 => d q = 0\
d u = d q - p dot d v \
d u = - p dot d v
$

$
d h = d u + p dot d v + v dot d p\
d h = -cancel(p dot d v) + cancel(p dot d v) + v dot d p \
d h = v dot d p = w_t  
$
Il motivo per cui si usa $Delta h$ è che questo è pari al lavoro tecnico, ed esso è il lavoro prodotto dalla turbina. Nella turbina viene le due sezioni differiscono per pressione, 