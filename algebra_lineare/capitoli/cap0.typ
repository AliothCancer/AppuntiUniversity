#import "../style.typ": *

= Sistemi Lineari

#def[Teorema Fondamentale dell'algebra][
Considerando un polinomio di grado n, a coefficienti complessi:

- $P(z) = a_n z^n + dots + a_1 z + a_0$ #h(1cm) Dove $a_i in CC, space z_n eq.not 0$

Si dice che $z_0 in CC$ è una radice di $P$ se:
$
  P(z_0) eq 0
$

In tal caso esiste un polinomio $Q$ di grado $n-1$ tale che: 
$
  P(z) eq (z - z_0) Q(z)
$
]

#def[ Molteplicità ][
   La molteplcità di $z_0 in CC$ come radice di un polinomio P, è il massimo numero $m gt.eq 0$ per il quale esiste un polinomio $Q$ tale che: 
   $
     P(z) eq (z - z_0)^m Q(z) space space "con" Q(z_0) eq.not 0
   $ 
]
