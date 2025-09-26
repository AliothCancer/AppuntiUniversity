#import "../style.typ": *

= VETTORI E MATRICI

#columns(1)[
== DEFINIZIONI

#def("Spazio vettoriale")[ 
  Uno spazio vettoriale $VV$ su un campo $FF$ è un insieme dotato di un'#y[addizione] e di una #y[moltiplicazione] per scalare che soddisfano le proprietà assiali (chiusura, associatività, elemento neutro, inverso additivo, distributività, compatibilità con scalari, moltiplicazione per 1).
]
#ex[$RR^n$]

#def[Linearmente Indipendenti/dipendenti][
I vettori $v_1, dots, v_k in RR^n$ si dicono #underline[*linearmente indipendenti*] se vale l'implicazione:

  
  $
    lambda_1 v_1 + dots + lambda_k v_k = underline(0) quad arrow.double quad lambda_1 = dots = lambda_k = 0
  $ 

  In caso contrario si dice che $v_1, dots,v_k$ sono #underline[*linearmente dipendenti*].
]
#nota[
  - Proprietà attribuibile ad una collezione di vettori, riga o colonna che siano.
  - Le matrici sono una lista di vettori riga o vettori colonna, quindi si può stabilire la dipendenza lineare di righe e di colonne, vedere la definizione di *Rango*.
]
#ex[
  Confronto tra 1,2,3 vettori:
  #table(
    columns: 3,
    [],[lin. Ind.],[lin. Dip.],
    [$v_1 in RR^n$],[Se $v_1$ non nullo],[nullo$$],
    [$v_1,v_2 in RR^n$],[Se non sono paralleli tra loro$$],[paralleli $$],
    [$v_1,v_2,v_3 in RR^n$],[Se non complanari],[Complanari],
  )
]
#def("Base")[ 
  Una base di un spazio vettoriale è una collezione di vettori linearmente indipendenti che genera lo spazio.
]#ex[$ e=mat(i,j, k;1,0,0;0,1,0; 0,0,1) $]

#def[Span][È lo spazio vettoriale generato dalla combinazione lineare di unsieme di vettori]

#colbreak()
== MATRICI

#def[Rango (o caratteristica)][
Sia $ bold(A) in "Mat"(m,n)$, si può dimostrare che il massimo numero di righe linearmente indipendenti coincide con il massimo numero di colonne linearmente indipendenti.  
]#ex[
$
  A = mat(1,0,2;-1,1,0)
$
$mat(1,0,2)$ e $mat(-1,1,0)$ sono linearmente indipendenti (perchè non sono paralleli), per cui il numero massimo di colonne linearmente indipendenti sarà 2.
]


]