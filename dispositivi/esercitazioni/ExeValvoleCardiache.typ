#import "../../utils/custom_functions.typ": c, def, def_um, param
#import calc: pow


= Esercitazione 1+2: Valvole Cardiache
== Formule
=== Effective Orifice Area (EOA)
#def[Effective Orifice Area][
  È la sezione efficace/effettiva della valvola, si usa per valutare il grado di ostruzione che la valvola provoca.

  Si possono confrontare valvole dello stesso diametro per capire quale è migliore. Un EOA più grande implica più basse cadute di pressione e quindi perdite energetiche minori. 
] 

#let formula_caption(formula, content) = {
  //set page(margin: auto)
  set text(size: 12pt)
  grid(
    align: center,
    formula,
    v(.3cm),
    grid.cell(content),
    v(.5cm)
  )
}



$
  "EOA" = Q_"peak" / v_2
$

- $Q_"peak"$: Portata massima, si ha durante il picco di pressione massimo

- $v_2$: Velocità a valle della valvola


#formula_caption[
  $
    v_2 = sqrt(2 / rho dot (p_1 - p_2)) = sqrt(2/rho dot Delta p)
  $
][Si ricava dalla eq. di Bernoulli trascurando v1, ovvero la velocità a monte della valvola.]

- $p_1 $: pressione a valle della valvola
- $p_2 $: pressione a monte della valvola


#pagebreak()
==== Analisi dimensionale EOA
$

= m^3/s / (sqrt(2/(1000"Kg"/m^3) dot cancel("mmHg") dot 133"Pa"/cancel("mmHg"))) \ = m^3/s dot 1/sqrt(0.266N/cancel(m^2) dot m^cancel(3)^1 / "Kg") \ = m^3/s dot 1/(0.516 sqrt(cancel(N) dot m / ((cancel(N) dot s^2) / m)))\ = m^3/s dot 1/(0.516 sqrt( m^2 / (s^2)))\ = 1/0.516 dot (m^2 dot cancel(m))/cancel(s) dot cancel(s)/cancel(m) \ = 1/0.516 m^2
\ \ \ \ \
"EOA" = (Q (L/s) dot 10^4 "cm"^2/m^2) / (516L/s/(m^2sqrt("mmHg")) dot sqrt(Delta p ("mmHg")))  
$

==== Formula pronta all'uso
  $
  "EOA"= 10^4/516 (Q) / (sqrt(Delta p))  arrow "cm"^2
  $

  #def_um(
    (
      $Q$, $"dm"^3/s$,
      $Delta p$,$"mmHg"$
    )
  )

=== Discharge Coefficient (DC)
  $
  "DC" = "EOA"/A_"int" arrow ["adim."]
  $
  #param[EOA][$"cm"^2$]
  #param[$A_"interna"$][$"cm"^2$]
  

=== Performance Index (PI)
  
  $
  "PI" = "EOA" / A_"est" arrow ["adim."]
  $

  #param[EOA][$"cm"^2$]
  #param[$A_"esterna"$][$"cm"^2$]    


=== Reverse Flow (RF%)
  $
  "RF%" = V_"rigurgitato" / V_"eiettato" dot 100 arrow ["adim."]
  $
  
  - $V_"rigurgitato"$: Area negativa del grafico Portata-Tempo nel ventricolo sinistro. (Left-Ventricle)

  - $V_"eiettato"$: Area positiva del grafico Portata-Tempo nel ventricolo sinistro (Left-Ventricle). 

  === Numero di Reynolds (Re)

  $
  "Re" = (rho dot v dot d) / mu arrow ["adim."]
  $

  - $rho$ : densità sangue 1 $g/"cm"^3$

  - v: velocità del sangue $"cm"/s$

  - d: diametro del condotto $"cm"$

  - $mu$ : viscosità dinamica del sangue 0.03Poise = 0.03 $(g dot "cm") / s$
  \
  #strong("Nota:") Interpretazione del numero di Reynold  
  
  - Re < 2000 #h(2cm) $arrow$  flusso laminare
  - 2000 < Re < 4000 #h(.45cm)$arrow$  Regime di transizione
  - Re > 4000 #h(2cm) $arrow$ Regime turbolento


== Exe 1 n.1

== Exe 2 n. 1

Per la sostituzione della valvola aortica si vuole utilizzare una valvola artificiale
avente diametro esterno Dest = 27 mm e diametro interno Dint = 23 mm. Si
calcolino i seguenti parametri per valutare la performance della valvola: l’effective
orifice area (EOA), il discharge coefficient (DC), il performance index (PI) e la
percentuale di reverse flow (rigurgito) della valvola scelta.
Esercizio 1: Dimensionamento di una valvola cardiaca


Durante una prova sperimentale è stata misurata per questa valvola una perdita
di carico massima di 16 mmHg e si sono registrati i seguenti valori di portata di
sangue campionati nel tempo.

t (s) Q (L/min)
0 0
0.05 22
0.10 31
0.15 33
0.20 25
0.25 19
0.30 12
0.35 6
0.40 2
0.45 -4
0.50 -5
0.55 -4
0.60 -2
0.65 -1
0.70 -1
0.75 -1
0.80 -1
#pagebreak()

=== Soluzione

*Dati*\
$P_"peak"=$ 16 mmHg\
$D_"est"=$ 27 mm\
$D_"int"=$ 23 mm

$A_"est" = pi/4 dot D_"est"^2 $\
$A_"int" = pi/4 dot D_"int"^2 $

*Richieste*\
$ "EOA"= 10^4 / 516 dot Q_"peak" / sqrt(Delta p_"peak") $\
$ "DC" = "EOA"/ A_"int" $\
$ "PI" = "EOA"/ A_"est" $\
$ "RF%" = V_"rig"/V_"espulso" $

- *Calcolo di EOA*:
  - $Q_"peak"$  = 33 L/min (dalla tabella)
  - $Delta p_"peak"$ = 16 mmHg (dai dati)

$
"EOA" = 10^4 / 516(("L/min")/("cm"^2 dot sqrt("mmHg"))) dot (33 L/"min")/(60 s/"min") dot 1/sqrt(16 "mmHg") 
$\
$"EOA" = #c(pow(10,4)/516*33/60* pow(16,-1/2) ) " cm"^2 $

- *Calcolo di DC*:
$
"DC" = "EOA"/A_"int" 
$\
$A_"int" = pi/4 dot (23/10 "cm")^2 = #c(calc.pi/4*pow(2.3,2)) " mm"^2 $\
$
"DC" = #c((pow(10,4)/516*33/60*pow(16,-1/2))/(calc.pi/4*pow(2.3,2))) 
$

- *Calcolo di PI*:
$
"PI" = "EOA"/A_"est" 
$\
$A_"est" = pi/4 dot (2.7 "cm")^2 = #c(calc.pi/4*pow(2.7,2)) " cm"^2 $\
$
"PI" = #c((pow(10,4)/516*33/60*pow(16,-1/2))/(calc.pi/4*pow(2.7,2))) 
$

- *Calcolo di RF%*:
Si ottengono i valori di $V_"rig"$ e $V_"espulso"$ integrando la portata $Q(t)$ rispetto al tempo:
$
V_"espulso" = integral_0^0.40 Q(t) "dt" 
$\
$
V_"rig" = integral_0.45^0.80 Q(t) "dt"
$

Tabella dei dati (convertita da L/min a cm³/s):\
$t$ (s) $Q$ (cm³/s)\
$0$ $0$\
$0.05$ $#c(22*1000/60)$\
$...$ (continua per tutti i valori)

Eseguire i calcoli numerici per ottenere $V_"espulso"$ e $V_"rig"$ e successivamente:
$
"RF%" = V_"rig"/V_"espulso" dot 100 
$

== Exe 2 n.2

1. Si calcola il BSA con peso e altezza
2. Si calcola Qm come $Q_m = "BSA"dot "CardiacIndex"$
3. Si calcola $T_s$ con la formula fornita
  - Come T(periodo) si usa l'inverso della frequenza cardiaca convertita in battiti al secondo.
4. In excel si scrive la funzione con tutti i valori definiti e si usa una colonna per i tempi con un incremento di 0.02
5. Si ottengono tutti i valori di portata nel tempo trascinando la casella.
6. Si trova la portata massima cercandola nella colonna delle portate calcolata con la funzione.
7. Si ricava EOA con $"EOA" = "PI"dot A_"est"$
  - quindi è necessario calcolare la Area esterna per ogni valvola possibile, di quelle proposte.
8. Si usa la formula dell'EOA per ricavare la pressione di picco, per ogni valvola:
  - $Delta p_"peak" = (10^4/516 dot (Q_"peak")/("EOA"))^2$
9. Si scartano tutte le valvole con la pressione di picco superiore a 20mmHg e tra queste che rimangono si prende quella con il PI(Performance Index) maggiore, perchè performa meglio.
