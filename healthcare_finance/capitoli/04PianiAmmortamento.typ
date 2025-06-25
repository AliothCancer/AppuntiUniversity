= Piani di Ammortamento


== Piano alla Francese

 === Descrizione
 Rate costanti da calcolare con la formula della *ANNUITY*:

 $
   "VA"_"annuity" = D = R dot (1-(1+i)^(-n)) /i
 $
Notare che ci sono diverse forme equivalenti:
 $
   (1-(1+i)^(-n)) /i =\ ((1+i)^(n) - 1)/(i (1+i)^(n)) =\ 1/i - 1/(i(1+i)^n)
 $
 === Calcolo rata
 Se senza anticipo:
 $
   R = D dot  i / ( 1- (1+i)^(-n)) 
 $
 Con anticipo invece, riferimento a @annuity_con_anticipo:
 $
   R = D dot  i / ( 1- (1+i)^(-n)) dot (1+i)
 $

== Piano all'Italiana
- Quote costanti

$ Q = D / n $ 

- Interessi variabili
$ I_n = D_n dot i $
  
- Rate variabili:
$
  R_n = Q + I_n
$

== Piano all'Americana
In questo piano la gestione è molto diversa.

1. Ricevimento del prestito a t=0
2. Per ogni t>0:
  1. Pagamento degli interessi su D (totale) alla banca
  2. Versamento sul fondo di investimento di una quota Q

- Interessi costanti
$
  I = D dot  i
$

- Quota da calcolare come accumuli di flussi di cassa futuri fino a raggiungimento di D al tempo n
$
  s_"t|v" = ((1 + v)^t - 1) / v
$

