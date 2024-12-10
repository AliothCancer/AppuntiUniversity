#import "../../utils/custom_functions.typ": def_um

= Stents
Come unità di misura vengono riportate quelle usate nelle esercitazioni oppure del SI.

== Fraction Flow Reserve (FFR)
$
"FFR" = P_d / P_p
$
#def_um((
  $P_d: "Pressione Distale rispetto all'occlusione"$, $"mmHg"$,
  $P_p: "Pressione Prossimale rispetto all'occlusione"$, $"mmHg"$
))

== Sforzo dato da allungamento $(epsilon)$
$
sigma = E dot epsilon
$

#def_um(
  (
    $E: " Modulo di Young"$, $"MPa"$,
    $sigma: " Sforzo"$, $"MPa"$,
    $epsilon: " Allungamento"$, "adim." 
  )
)

Con $epsilon$:
$ epsilon = (Delta D) / D
$
#def_um(
  (
    $Delta D ": Variazione Diametro"$, $"mm"$,
    $D ": Diametro Iniziale"$, $"mm"$
  )
)

#pagebreak()

== Pressione generata dal vaso con placca dopo dilatazione <pressione_generata_dal_vaso_con_placca_dopo_dilatazione>

Lo sforzo che deve esercitare lo Stent per mantenere il lume ridotto dalla placca ateromasica.

Lo Stent viene applicato nella parte di vaso in cui vi è un'occlusione parziale del lume, per cui si distinguono dei valori prima e dopo l'installazione dello stent.

$
p = (E_"pl" + E_"par") dot (D_t - D_l)/ D_0
$
#def_um(
  (
    $D_0: "Diametro Esterno del Vaso"$, $"mm"$,
    $D_t: "Diametro post-trattamento"$, $"mm"$,
    $D_l: "Diametro minimo della parte stenotica"$, $"mm"$,
    $E_"pl": " Modulo di Young della placca"$, $"MPa"$,
    $E_"par": " Modulo di Young della parete vasale"$, $"MPa"$,
  )
)
=== Strain ($epsilon$)
$
epsilon = (D_t - D_l)/ D_0
$


#pagebreak()

== Sforzo in uno stent

Questo parametro è necessario quando si vuole sapere la pressione del palloncino tale per raggiungere lo snervamento nella sezione dello Stent che si flette.

#image("../immagini/stent_scheme.png")

=== Asse neutro
È la linea che separa le fibre in trazione da in compressione e dove il momento flettente si annulla.

#pagebreak()

== Sforzo massimo da momento flettente (nello stent)
$
sigma_"M,n" = sigma_M + sigma_n
$

*Dove $sigma_M$* è lo sforzo massimo causato dal momento flettente:
$
sigma_M = (M_f dot h/2)/J
$
#def_um((
  $h/2: "distanza dall'asse neutro"$, "mm" 
))

Con *$J$ inerza* della sezione rispetto all'asse neutro:
$
J = (b dot h^3) / 12
$
#align(right, [*\*h è la lunghezza parallela all'asse neutro*]) 

E *$sigma_n$* è lo *sforzo normale* alla sezione causato dalla *forza circonferenziale F*:
$
sigma_n = F / (pi r^2)
$
#pagebreak()

== Rigidità Stent
$
K_p = P / (Delta r)
$

#def_um((
  $P: "Pressione interna per espandere lo stent"$, $"MPa"$,
  $Delta r: "Variazione del raggio dello stent"$, $"mm"$
))

Con $Delta r$:
$
Delta r = (d_s - D_t) / 2
$

#def_um((
  $d_s: "diametro stent dopo dilatazione"$, $"mm"$,
  $D_t: "diametro interno dopo trattamento"$, $"mm"$
))

=== Rigidità Minima
Si ottiene uguagliando la pressione interna necessaria per dilatare l'occlusione con una certa riduzione % target del lume.


*Esempio:*\
Se viene chiesto di calcolare la rigidità minima di uno stent, la si può calcolare in funzione della pressione interna necessaria a dilatare il lume di un certo $epsilon$.

Cioè si eguaglia la pressione necessaria a dilatare fino a raggiungere il diametro post trattamento con la pressione esercitata dallo stent.

Lo stent dovrà avere una rigidità maggiore di quella calcolata.  
#pagebreak()

*Ricavando la formula*\
$
K_"p min" = 2 / (d_s - D_t) dot p
$

Sostituendo p con la pressione del vaso con @pressione_generata_dal_vaso_con_placca_dopo_dilatazione[placca].

$
K_"p min" = 2 / (d_s - D_t) dot (E_"pl" + E_"par") dot (D_t - D_l)/ D_0 =\
= 2 E_"pl,par" dot (D_t - D_l)/( D_0 dot (d_s - D_t)) = \
= 2 E_"pl,par" dot (Delta "Diam."_"lume")/(D_0 dot Delta "Diam."_"stent")
$*Formula:*
#align(center, box(
  stroke: color.linear-rgb(0.15%, 0.15%, 90.47%) + 0.1cm,
  fill: color.linear-rgb(0%, 78.35%, 100%, 72.9%),
  radius: 1cm,
  height: 2.5cm,
  width: 10cm,
text(color.linear-rgb(0.97%, 0%, 99.11%),[$
\ =>\
K_"p min"= 2 E_"pl,par" dot (Delta "Diam."_"lume")/(D_0 dot Delta "Diam."_"stent")
$])))


*U.M. vaso*\
#def_um(
  (
    $D_0: "Diametro Esterno del Vaso"$, $"mm"$,
    $D_t: "Diametro post-trattamento"$, $"mm"$,
    $D_l: "Diametro minimo della parte stenotica"$, $"mm"$,
    $E_"pl": " Modulo di Young della placca"$, $"MPa"$,
    $E_"par": " Modulo di Young della parete vasale"$, $"MPa"$,
  )
)

*U.M. stent*\
#def_um(
  (
    $d_s: "Diametro iniziale dello stent"$, $"mm"$,
  )
)
\*$d_s$ con iniziale ci si riferisce al diametro che assumerebbe senza carico (carico del vaso occluso).

