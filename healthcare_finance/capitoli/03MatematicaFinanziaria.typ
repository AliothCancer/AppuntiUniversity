#pagebreak()
= Matematica Finanziaria
== Unità temporali di Capitalizzazione
Il tempo finanziariamente ha senso esprimerlo non in termini di mesi o anni, ma piuttosto in termini di numero di capitalizzazioni con un determinato tasso che chiameremo $j$ nel caso di c. annuale e $j_k$ dove k è il numero di capitalizzazioni annuali per tassi non annuali. Notare $j_1$ equivale a $j$.

Capitalizzare con tasso bimestrale significa che in 1 anno si hanno 2 capitalizzazioni, ovvero t=2.

Dato un tasso annuale $j$ si ha:
#{
  let vars = (
    "Mensile",
    "Bimestrale",
    "Trimestrale",
    "Quadrimestrale",
    "ignored",
    "Semestrale",
    "7",
    "8",
    "9",
    "10",
    "11",
    "Annuale",
  )
  for (i, name) in vars.enumerate() {
    let i = i + 1
    if i in (5,7,8,9,10,11){
      continue
    }
    let k = 12/i
    [
      - #name: $ space  t= (12 "mesi")/ (#i "mesi") = #k "capitalizzazioni" \ j_#k = j / #k $

    ]
  }
}
Notare che negli esercizi il valore di interesse è il numero di capitalizzazioni

Esempi:
- $j_k = 3% "bimestrale"$ $=> k = 6$
- quindi: $ j = 3% dot 2 = #{3*2}%$
- poichè in 1 anno avvengono 2 capitalizzazioni:
$
  M_1 = C dot (1 + 3/100) "(fine primo bimestre)"\ \
  M_2 = C dot (1 + 3/100 dot 2) ("fine secondo bimestre")
$
- $M_1$

== Capitalizzazione semplice

=== Interessi
$
  I = C dot j dot t
$
- C: Capitale prestato
- j: tasso di interesse sull'unità del periodo t
- t: Numero di capitalizzazioni al tasso j


