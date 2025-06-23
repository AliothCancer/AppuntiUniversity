= Matematica Finanziaria
== Unità temporali di Capitalizzazione
Il tempo finanziariamente ha senso esprimerlo non in termini di mesi o anni, ma piuttosto in termini di numero di capitalizzazioni con un determinato tasso che chiameremo $j$ nel caso di c. annuale e $j_k$ dove k è il numero di *PERIODI* in un anno. Notare $j_1$ equivale a $j$.

Capitalizzare con tasso bimestrale significa che in 1 anno si hanno 2 capitalizzazioni, ovvero t=2.\

nota. Il numero di capitalizzazioni ad anno sono equivalenti al numero di periodi k (in un anno) \ 
- Varianti del *PERIODO*:
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

=== Montante
$
  M_0 = C\
  M_1 = C + C dot j_k dot 1\ 
  M_2 = C + C dot j_k dot 2
$
Quindi:
$
  M_n = C ( 1 + j_k dot t)
$

#colbreak()
=== Relazione t e k
$
  t = k dot "anni"
$

=== Conversione tassi di interesse
Esempio:
- Convertire un tasso del 17% bimestrale($j_n$) in un tasso semestrale ($j_m$)
$
  & #strong("Dati")\
    &"bimestrale" = "2 mesi"\
    &j_n = 17% " bimestrale"\
    &"semestrale" = 6 "mesi"\
    &j_m = ...?
$
Soluzione:
$
  &n = (12 "mesi"/"anno")/ (2 "mesi"/"bimestre") = 6 "bimestri"/"anno"\
  \
  &m = 12/6 = 2 "semestri"/"anno"\
  &j_1 = j_n dot 6 = j_m dot 2\ \
$

=== Conversione in tasso annuale
Da un tasso con $k>=1$ a tasso equivalente annuale (TAE):
$
  j = j_k dot k
$
Essendo valido per tutti i k
$
    &j_n dot n = j_m dot m\ 
$
=== Formula di conversione
$
  &j_n = j_m dot m/n
$

== Capitalizzazione Composta
Gli interessi sono calcolati sul montante precedente anzichè solo sul capitale iniziale.

$ M_0 = C \
$
$
  M_1 = C + C dot j_k $
$
  M_2 &= M_1 + M_1 dot j_k\
    &= M_1 (1 + j_k) \ 
    &= C dot (1 + j_k) (1 + j_k) \
    &= C dot (1 + j_k)^2
$

Quindi:
$
  M_n = C dot (1 + j_k)^n
$

=== Tassi di interesse

$
  (1 + i_k)^k = (1 + i_1)^1 = (1+ i_n)^n
$<eq31>

==== TAE
#align(center,
[*T* asso
*A* nnuale
*E* ffettivo])\ \

Ricavato dalla @eq31:
$
  i = (1 + i_k)^k - 1
$

==== Conversione
Sempre ricavando dalla @eq31:

$
    (1 + i_k)^k &= (1+ i_n)^n \
    (1 + i_k)^(k/k) &= (1+ i_n)^(n/k) "   " (k<0)\
    1 + i_k &= (1+ i_n)^(n/k) \
    i_k &= (1+ i_n)^(n/k) -1\
$

===== Formula
$
  i_k &= (1+ i_n)^(n/k) -1
$

== Relazione TAN e TAE

$
  1 + "TAE" = (1 + "TAN"/k)^k 
$
Cioè il TAN è un tasso che non viene scontato per il regime di capitalizzazione considerato ed è quindi pari al TAE solamente quando k=1 quindi il regime di capitalizzazione è annuale, interessi annuali.

Nota. In tutti gli altri casi (k>1) si ha $"TAE" > "TAN"$

=== Conversione TAN $=>$ TAE
$
  "TAE" = (1 + "TAN"/k)^k - 1
$
$
  (1+"TAE")^(1/k) = (1 + "TAN"/k)^(k/k)\
  (1+"TAE")^(1/k) = 1 + "TAN"/k\
  (1+"TAE")^(1/k) - 1 ="TAN"/k\
  ((1+"TAE")^(1/k) -1 ) k= "TAN"\
$
#colbreak()

== Attualizzazione dei flussi di cassa
Formula per il valore attuale dei flussi di cassa $F_i$ al tasso di sconto $i$.

Nota. $i$ è di solito il costo del capitale

Esempio con 5 flussi di cassa:
#align(center,{
  $"VA" = $
  let len = 5
  for n in range(1,len+1){
    if n!=len{
      $F_#n / (1 + i)^#n +$
    }else{
      $F_#n / (1 + i)^#n$
    }
  }
}
)
== Perpetuity
Un flusso di cassa costante per sempre: $F_n = F$

$"Con:"\ p: "tasso finale di perpetuity"$
$ 
  "VA"_"perp" &=  F dot p\
  "VA"_"perp" &=  F dot (1 / (1+ i) + ... + 1 / (1+ i)^inf )\
$
Grazie ai risultati sulle serie geometriche o telescopiche si ha:
$
  p = 1/i
$
Quindi:
$
  "VA"_"perp" &=  F dot p\
  "VA"_"perp" &=  F/i\
$

== Annuity
Flussi di cassa costanti come la perpetuity ma per un tempo Finito.

Le formule di annuity e perpetuity forniscono il valore attuale delle rispettive serie di flussi di cassa al periodo antecedente il primo pagamento cioè il primo flusso di cassa $F_1$.

$
  "VA"_"perp" &=  F dot (1 / (1+ i) + ... + 1 / (1+ i)^n )\
$

=== Formula
Di gran lunga più realistica:
$
  "VA"_"annuity"&= F dot a_"n|i"\
    &= F dot (1 - (1+i)^(-n))/i
$

Con:
- $n$: numero di flussi di cassa
- $i$: tasso di sconto (costo-opportunità) 
$
  a_"n|i" = 1/i - 1/(i (1+i)^n)\ \
  "O anche:"\
  a_"n|i" = i^(-1) - (i^(-1))/(1+i)^n\ \
$

== Present & Future value
=== Relazione
$
  "PV" = "FV" / (1+ i)^n  
$

È il valore finanziario attuale di una somma di denaro.
- *ATTUALE*: 100 euro oggi sono 100 euro finanziari (oggi) ma sono meno di 100 euro finanziari (domani)

Portare al presente delle somme di denaro significa scontarle di un tasso.

Scontare significa ridurre, quindi le somme che verranno date in futuro hanno un valore finanziario più piccolo rispetto a quello nominale.

Le somme che sono state date in passato, sono capitalizzate e quindi hanno un valore finanziario maggiore rispetto a quello nominale.

