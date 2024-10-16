#import "../../custom_functions.typ": c

// diminutivo di energy mass
#let em() = $"kJ"/"kg"$

#set math.equation(numbering: "1.1")

= Esercitazione 4: Miscele bifasiche
== Problema n.4
#image("immagini/E4P4_obscured.png", width: 115%)

== D01: Potenza meccanica prima trasf.
Formula:
$
w = integral_(p_1)^(p_2) v space dif p \ \
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
w = v_1 dot (p_2 - p_1)\ \
= 0.0010434 m^3/"kg" dot (10 - 1)"bar" dot 100"kPa"/("bar") dot 1000 J/"kJ" \ \ = #c({0.0010434 * (10-1)*100 * 1000}) "J"/"kg" \ \
#v(1cm)
dot(W) = w dot dot(m) = 939.06 "J"/"kg" dot 1 "kg"/s  = 939.06 W
$
