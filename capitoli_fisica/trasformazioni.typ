#import "@preview/cetz:0.2.2": canvas, plot

= Trasformazioni <trasformazioni>
== Trasformazione Politropica <trasformazione-politropica>
#figure(
canvas(length: 2.7cm, {
  let n_iso = 1;
  let n_ad = 1.4;
  let n_rand = 1.2;
  let n_rand2 = .5;
  let samples = 100;
  let p1 = calc.pow(10,5); // 1 * 10^5 Pa 
  let v1 = 1; // m3/kg
  plot.plot(
    axis-style:"left",
    x-min: 0.9,
    x-max: 2.5,
    y-min: 3.2*calc.pow(10,4),
    y-max: 2.1*calc.pow(10,5),
    y-label: "Pa",
    x-label: $(L/("kg"))$,
    size: (5, 5),
    x-grid: true,
    y-grid: true,
    y-format: "sci",
    legend:"legend.inner-north-east" ,
    {
      plot.add(
        label: "n = " + str(-100),
        domain: (1,2),
        samples: samples,
        v => p1*v1 * calc.pow(v,-(-100))
        )
      plot.add(
        label: "n = " + str(-1.4),
        domain: (1,2),
        samples: samples,
        v => p1*v1 * calc.pow(v,-(-1.4))
        )
      plot.add(
        label: "n = " + str(-1),
        domain: (1,2),
        samples: samples,
        v => p1*v1 * calc.pow(v,-(-1))
        )
      plot.add(
        label: "n = " + str(0),
        domain: (1,2),
        samples: samples,
        v => p1*v1 * calc.pow(v,-(0))
        )
      plot.add(
        label: "n = " + str(n_rand2),
        domain: (1,2),
        samples: samples,
        v => p1*v1 * calc.pow(v,-n_rand2)
        )
      plot.add(
        label: "n=1 (compr. isoterma)",
        domain: (1,2),
        samples: samples,
        v => p1*v1 * calc.pow(v,-n_iso)
        )
    
      plot.add(
        label: "n = k = 1.4 (isoentr.)",
        domain: (1,2),
        samples: samples,
        v => p1*v1 * calc.pow(v,-n_ad)
        )
      
      plot.add(
        label: "n = " + str(100),
        domain: (1,2),
        samples: samples,
        v => p1*v1 * calc.pow(v,-100)
        )

      plot.add(((v1,p1),), mark: "o",mark-style: (stroke: blue, fill: black), mark-size: .1)
      
      plot.add(((2,3.8*calc.pow(10,4)),), mark: "o",mark-style: (stroke: black, fill: black), mark-size: .1)
      

      plot.add(((2,5*calc.pow(10,4)),), mark: "o",mark-style: (stroke: blue, fill: black), mark-size: .1)


    })
}), caption: "Differenti curve al variare dell'indice n della politropica \n(Plot made with cetz)",)
  Con una trasf. politropica si indica una qualsiasi trasformazione termodinamica.\ \ \ \
  === Equazione di stato
$ p dot.op V^n = upright("costante") $

Dove:

- $p$: la pressione

- $V$: il volume

- $n$: l’indice politropico, *pari a k se* trasf. adiabatica e quasistatica(cioè isoen  tropica)

== Casi Particolari <casi-particolari>
- Per $n = 0$ $arrow.r$ #strong[Isobara]: $p = upright("costante")$

- Per $n = plus.minus oo$ $arrow.r$ #strong[Isocora]: $V = upright("costante")$

- Per $n = 1$ $arrow.r$ #strong[Isoterma]: $T = upright("costante")$

- Per $n = k$ $arrow.r$ #strong[Adiabatica]: $k = C_p / C_v$


== Lavoro massico durante una Trasformazione Politropica <lavoro-durante-una-trasformazione-politropica>
Calcolando:
$
w = integral _(v_1) ^(v_2) p dif v = p_1 v_1^n integral _(v_1) ^(v_2) v^(-n) dif v
$

Si distinguono due casi:

- #strong[Caso Generale] ($n eq.not 1$):

$ L_v = frac(p_1 dot.op V_1, n - 1) lr((lr((V_1 / V_2))^(n - 1) - 1)) $

- #strong[Caso Isotermico] ($n = 1$):

$ L_v = - p_1 dot.op V_1 ln V_2 / V_1 $

== Calore massico scambiato
$
Delta u = q + w #h(.7cm) => #h(.7cm) q = Delta u - w \
$
$ 
Delta u = c_v dot (T_2 - T_1) \
w = integral _(v_1)^(v_2) p dif v \
$
$
=> \ q = c_v dot (T_2 - T_1) - integral _(v_1)^(v_2) p dif v
$
Due casi per il lavoro:
- $n < 1$:
$
q = c_v dot (T_2 - T_1) - frac(p_1 dot.op V_1, n - 1) lr((lr((V_1 / V_2))^(n - 1) - 1))
$
\ \
== Calori specifici gas perfetti
*N.B.*\
*NO vapore*\ *SÌ* aria umida ma solo per la parte di *aria secca*.


$
R^* = R / ("Mm")
$

- R : Costante dei gas perfetti = 8314 $J/("kmol" K) $

- Mm : Massa Molare del gas $["kg"/"kmol"]$ pari allla somma delle masse atomiche degli atomi che compongono la singola molecola.\ Esempio: N2 = N + N = 14 + 14 = 28 kg/kmol

Calcolare calori specifici con l'indice *n* della politropica.

=== A volume costante
$
c_v = 1 / (n-1) dot R^*
$
=== A pressione costante
$
c_p = n / (n-1) dot R^*
$
\
\ \ \ \
== Trasformazione Isoentropica
*Se* la trasformazione *è adiabatica* *e* anche *quasistatica* (deve essere specificato nella traccia dell'exe) *Allora* *n=k*. 


Dove: 
$
k = c_p / c_v
$

La quasistaticità è necessaria perchè se la trasformazione non è reversibile (presenza di forze non conservative che dissipano calore) si genera entropia. 
*Forze non conservative -> dissipazione calore \ -> generazione entropia.*
