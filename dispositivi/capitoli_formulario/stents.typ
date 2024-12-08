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

== Pressione generata dalla dilatazione del vaso con placca

Lo sforzo che deve esercitare lo Stent per mantenere il lume ridotto dalla placca ateromasica.

Lo Stent viene applicato nella parte di vaso in cui vi è un'occlusione parziale del lume, per cui si distinguono dei valori prima e dopo l'installazione dello stent.

$
E = (E_"pl" + E_"par") dot (D_t - D_l)/ D_0
$
#def_um(
  (
    $D_0: "Diametro Esterno del Vaso"$, $"mm"$,
    $D_t: "Diametro post-trattamento"$, $"mm"$,
    $D_l: "Diametro minimo della parte stenotica"$, $"mm"$
  )
)

== Sforzo in uno stent

Questo parametro è necessario quando si vuole sapere la pressione del palloncino tale per raggiungere lo snervamento nella sezione dello Stent che si flette.
\ \
#align(center,[*Sforzo massimo da momento flettente* (nello stent)])
$
sigma_"M,n" = sigma_M + sigma_n
$

*Dove $sigma_M$* è lo sforzo massimo causato dal momento flettente:
$
sigma_M = (M_f dot h/2)/J
$
#pagebreak()

Con *$J$ inerza* della sezione rispetto all'asse neutro:
$
J = (b dot h^3) / 12
$

E $sigma_n$ è lo sforzo normale causato dalla forza circonferenziale F:
$
sigma_n = F / (pi r^2)
$