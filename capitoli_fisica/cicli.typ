
= Cicli Termodinamici <cicli-termodinamici>
== Diretti e indiretti
*Ciclo Diretto*: sfrutta "direttamente" il calore per produrre lavoro/calore utile.\
*esempio*: motore endotermico, utilizza calore di combustione per espandere il gas combusto e compiere lavoro.

*Ciclo Indiretto*: si utilizza lavoro per ottenere lavoro/calore utile.\
*esempio*: pompa di calore, pompa fornisce lavoro al fluido per far scambiare calore, tramite espansione e compressione.

== Utilizzi dei cicli
- *Carnot* è il ciclo ideale teorico per gas perfetti e vapore.
  - Senso Orario: ciclo diretto, utilizza calore per produrre lavoro.
  - Senso Anti-orario: ciclo indiretto, utilizza lavoro per spostare calore.
- *Brayton-Joule* utilizzato nelle turbine a gas

== Cicli Simmetrici <cicli-simmetrici>
Per i cicli simmetrici valgono le seguenti equazioni: $ v_1 v_3 = v_2 v_4 $ $ p_1 p_3 = p_2 p_4 $ $ T_1 T_3 = T_2 T_4 $ \
Seguono lo schema: $i n d i c i$ $d i s p a r i$ \= $i n d i c i$ $p a r i$
#v(5cm)
== Rendimenti <rendimenti-1>
=== Formula generale
$ 
eta = lr(|w_(upright("utile"))|) / q_H 
$

=== Carnot: Diretto (Gas) <carnot-gas>
- 2 isoterme + 2 adiabatiche isoentropiche $ eta = 1 - T_(m i n) / T_(m a x) $ Si ricorda che 4 $arrow.r$ 1 e 2 $arrow.r$ 3 sono trasformazioni isoterme.

=== Carnot: Ciclo frigorifero (Gas) (Indiretto) <ciclo-frigorifero-carnot-gas-indiretto>
Coefficient Of Performance (COP): $ C O P_(upright("frigo")) = frac(
  Delta s_12 dot.op T_(upright("min")),
  Delta s_34 dot.op T_(upright("max")) - Delta s_12 dot.op T_(upright("min")),

) $ $ C O P_(upright("frigo")) = frac(T_(upright("min")), T_(upright("max")) - T_(upright("min"))) $ N.B. $Delta s_12 = Delta s_34$

=== Carnot: Pompa di Calore (Gas) (Indiretto) <pompa-di-calore-gas-indiretto>
Si ottiene invertendo in senso anti-orario il ciclo di Carnot. \
\
Coefficient Of Performance (COP): $ C O P_(upright("pompa calore")) = frac(
  Delta s_34 dot.op T_(upright("max")),
  Delta s_12 dot.op T_(upright("min")) - Delta s_(34 = 12) dot.op T_(upright("max")),

) $ $ C O P_(upright("frigo")) = frac(T_(upright("max")), T_(upright("max")) - T_(upright("min"))) $ N.B. $Delta s_12 = - Delta s_34$

=== Brayton Joule (Gas) <brayton-joule-gas>
2 adiab. isoentropiche: \
(pompa 1$arrow.r$2 + turbina 3$arrow.r$4) \
\
\+ 2 isobare: \
$q_h$: 2$arrow.r$3 \
$q_c$: 4$arrow.r$1

$ eta = 1 - frac(c_p dot lr((T_4 - T_1)), c_p dot lr((T_3 - T_2))) = 1 - frac(T_4 - T_1, T_3 - T_2) $

=== Brayton Joule con rigenerazione (Gas) <brayton-joule-con-rigenerazione-gas>
La rigenerazione la si può sfruttare se T4>T2, sostanzialmente il gas uscente dalla turbina è più caldo di quello uscente dal compressore.

*Dall'uscita della turbina* senza rigenerazione si deve portare il gas da T4 a T1, la rigenerazione permette di raffreddare da T4 a Ty (con T1\<Ty\<T4) quindi il calore da cedere sarà solo quello per portare il gas da Ty a T1.

*Dall'uscita del compressore* senza rigenerazione si deve portare il gas da T2 a T3, la rigenerazione permette di riscaldare da T2 a Tx (con T2\<Tx\<T3) quindi si riesce a recuperare del calore che altrimenti verrebbe disperso nell'ambiente per alimentare la trasformazione T2 $arrow$ T3.
$
eta = (Q_ "prodotto" - Q_ "ceduto") / Q_ "prodotto" \
= 1 - (c_p dot (T_y - T_1)) / (c_p dot (T_3 - T_x))
$
- Ty: temperatura di uscita dallo scambiatore lato turbina. (parte raffreddata)
- Tx: temperatura di uscita dallo scambiatore lato compressore (parte riscaldata)
==== Come calcolare Tx e Ty
Nello scambiatore verrà scambiata una *quantità di calore che dipende dal $Delta$ di temperatura* tra uscente dalla turbina e uscente dal compressore, ammesso che abbiano stessa portata massica e dovrebbe visto che il circuito è chiuso e la massa si conserva, la velocità dovrebbe variare solo la sezione dei due condotti. 

Inoltre *dipende dall'efficienza dello scambiatore $epsilon$(epsilon)*. 

$
epsilon = Q_ "scambiato \n effettivamente" / Q_ "potenzialmente \n scambiabile \n se efficienza = 100% "
$

*Massimo calore scambiabile:*
$
Q_ "max" = c_p (T_4 - T_2)
$
*Calore scambiato effettivamente:*
$
Q_ "rigenerato" = c_p |T_x - T_2| = c_p |T_1 - T_y|
$
Il $Delta T$ causato dallo scambiatore è uguale da ambe due le parti. Perciò:
$
T_x = T_2 + Delta T_ "scambiatore" \
T_y = T_4 - Delta T_ "scambiatore"
$
Dove $Delta T_ "scambiatore"$ è calcolabile come:
$
Delta T_ "scamb." = epsilon dot (T_4 - T_2)
$
==== Efficienza
$
eta_ "rig." = 1 - (|T_1 - T_y|) /(T_3 - T_x) 
$
Oppure:
$
eta_ "rig." = 1 - (|T_1 - (T_4 - Delta T_ "scamb.")|) /(T_3 - (T_2 + Delta T_ "scamb.")) 
$

=== Rankine (Vapore) <rankine-vapore>
$ eta = lr(|w|) / q_H = 1 - frac(lr(|h_1 - h_4|), h_3 - h_2) $
