= Pompe per il sangue
Ci sono 3 tipologie di pompe:
- Pompa Peristaltica (Roller)
- Pompa Centrifuga
- Pompa Assiale
\
*P. Peristaltica*\
Si distingue dalle altre tipologie perchè garantisce un flusso pulsatile emulando più fedelmente il cuore.

Un rullo comprime il tubo flessibile garantendo una portata.

*P. Centrifuga*\
Pompa con flusso continuo, il sangue viene pompato al centro del rotore il quale ruotando spinge il sangue, per forza centrifuga, in direzione tangenziale.

*P. Assiale*
Flusso continuo, il rotore si "avvita" nel sangue, imponendo una forza propellente. 

== Vad
*V* entricular *A* ssist *D* evice
\ \
Sono dispositivi che hanno lo scopo di supportare il cuore, non di sostituire la funzione cardiaca. Definiti come trattamento ponte per ad esempio trapianti di cuore, in attesa della disponibilità dell'organo.

=== HearthWare
Dispositivo caratterizzato da pompa di tipo centrifugo e levitazione magnetica del rotore combinata con propulsione delle palette (lifting) per il mantenimento della posizione flottante.

La zona di interesse è situata nella parte superiore e inferiore del rotore, il rotore ha un raggio interno ed uno esterno come nelle CEC.

==== Shear Stress $tau$

$
tau = mu dot gamma
$

- $mu$ : viscosità dinamica sangue (costante) 
  - $
    space space = 3 c P ("centiPoise") = 0.03 g / (c m space s) = 0.003 (N s)/m^2
    $\
- $gamma$ :  Velocità di deformazione angolare $"rad"/s$

$
gamma = U_t/h_m
$

- $U_t$ : velocità di trascimento 
- $h_m$ : altezza del singolo meato =$(h_"scatola"-h_"rotore")/2$

$
U_t = omega r
$

- $omega$ : velocità angolare, di rotazione del rotore.
- $r$ : raggio del rotore, ce ne sono 2, interno ed esterno.
#v(1.6cm)
==== formula esplicita
$
tau_i = mu (omega r_i) / h_m
$

- i = r. esterno o raggio interno

==== Tempo di attraversamento

$
t = V_"me" / Q_"me"
$

- $V_"me"$: volume del meato
- $Q_"me"$: portata del meato

==== Volume meato
$
V_"me" = pi/4 (d_"est."^2 - d_"int."^2) dot h_m
$
#align(center)[#image("../immagini/volume_meato.png"
, height: 6cm)]


==== Portata del meato
$
Q_"me" = Q_"ematica" dot "Flusso"%_"me"
\ \

$

== Prevalenza
- È una pressione
- Si misura quindi in $[N / m^2]$
- Si indica con la lettera H

$
H = eta dot rho dot U dot C dot cos alpha_2
$

- $eta$: rendimento (adimensionale) ($0 <= eta < 1$)
- $rho$: densità del sangue $1 g/"cm"^3$
- $U$: velocità tangenziale (rotore) $"cm"/s$
- $C$: velocità assoluta (sangue) $"cm"/s$
- $alpha_2$: l'angolo interno che si forma tra velocità assoluta e velocità tangenziale
- 