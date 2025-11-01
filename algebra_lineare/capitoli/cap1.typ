#import "../style.typ": *
#import "@preview/physica:0.9.6": *

= Vettori e Matrici

== OPERAZIONI

=== Prodotto Matriciale
#def[Prodotto Matriciale][
  - $bold(A)$: Mat(m,n)\
  - $bold(B)$: Mat(n,p)\
  - *Risultato:* Mat(m,p)
  - *Sintassi:* $bold(A) bold(B)$
  - *Ordine dei fattori:* Importante perchè *non vale* la propr. commutativa
  - *Requisito:* Righe di A == Colonne di B

  L'elemento $c_(i j)$ della matrice risultante è dato dal _prodotto scalare_ del *vettore riga $i$-esimo* di A, per il *vettore colonna $j$-esimo*. 
]
ffrf - dedbeudbe - dde
#ex[
  $
  mat(1, 2; 3,3; 1,1) mat( 3,4,4;4,3,6) eq mat(
    mat(1, 2) dot mat(3;4), space
    mat(1, 2) dot mat(4;3), space
    mat(1, 2) dot mat(4;6);

    mat(3,3) dot mat(3;4), space
    mat(3,3) dot mat(4;3), space
    mat(3,3) dot mat(4;6)

  )
  $
]

== Elemento neutro di un vettore (rispetto al prod. matriciale)
È pari allo scalare 1.
#ex[
  $ 
vec(a_0,a_1, .,.,.,a_n) dot bold(1) = vec(a_0,a_1, .,.,.,a_n)
$

]

== Inverso di un vettore
Non è possibile perchè per un vettore 1xn richiede che l'elemento neutro abbia forma nx1 o 1xn per poter applicare il prodotto matriciale, ma l'elemento neutro è 1x1 per un vettore 1xn.

== Elemento neutro di una Matrice
Data una matrice $bold(A)$ nxm l'elemento neutro è quella matrice $bold(I)$ tale che:
$
  bold(A) bold(I) eq bold(A)\
  (n times m) (m times x quest) eq n times m 
$

Secondo le regole della moltiplicazione matriciale x deve essere pari a m. Quindi $bold(I)$ ha forma mxm.

Spoiler: Contiene una diagonale di 1 e il resto degli elementi è nullo.

#def[ Matrice Identità ][
  Si indica con $I_n$ dove n indica il numero di elementi nella diagonale, di conseguenza sarà anche il numero di righe e di colonne ed è fatta così:
  
  - Se n = 3:
  $
    mat(
    1, 0, 0;
    0, 1, 0;
    0, 0, 1; // `;` in the end is optional
)
  $
]
#nota[
  La matrice identità è una matrice quadrata e simmetrica
]







//#columns(1)[
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

#def[ Rango (o caratteristica) ][
  Numero massimo di vettori riga o vettori colonna della matriche tra loro linearmente indipendenti.
]

#prop[Rango (o caratteristica)][
Sia $ bold(A) in "Mat"(m,n)$, si può dimostrare che il massimo numero di righe linearmente indipendenti coincide con il massimo numero di colonne linearmente indipendenti.  
]#ex[
$
  A = mat(1,0,2;-1,1,0)
$
$mat(1,0,2)$ e $mat(-1,1,0)$ sono linearmente indipendenti (perchè non sono paralleli), per cui il numero massimo di colonne linearmente indipendenti sarà 2.
]


//]