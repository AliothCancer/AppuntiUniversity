#import "../../utils/custom_functions.typ": def_um

= Stents
Come unità di misura vengono riportate quelle usate nelle esercitazioni oppure del SI.
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


