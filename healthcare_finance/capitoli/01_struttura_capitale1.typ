#import "../../utils/latest_style.typ": styled_box

= Struttura capitale: Parte I

*Ripassino Stato Patrimoniale:*\
La struttura del capitale si compone in generale di:
- Equity: Capitale di rischio, così chiamato perchè per gli investitori, non ci sono garanzie assicurate di ritorno, come invece per i debiti
- Debito
- Debito ed Equity sono le due parti che costituiscono il passivo dello stato patrimoniale.
- L'*ATTIVO* rappresenta gli impieghi del capitale, cioè come è stato investito. Risponde alla domanda *"Come hai investito il capitale?"*
- Il *PASSIVO* rappresenta il finanziamento, risponde alla domanda: *"Come hai finanziato i tuoi investimenti?*"


== Leverage
Un'azienda *LEVERAGE* è un'azienda con una parte di finanziamento del proprio capitale derivante da *DEBITO*.\
Quindi paga gli interessi ai propri creditori.

Nota:\
Equivalenze:\
- A è creditore di B
- B è debitore di A
- A ha B come debitore
- B ha A come creditore

$ D / E > 0 $

== Valore Unlevered
Il valore unlevered di un'azienda, è il valore dell'azienda come se fosse solamente finanziata tramite equity.

Nota: a me sta definizione fa schifo, non è una definizione, è un'autodefinizione inutile perchè se si ha un'azienda finanziata totalmente con equity pari a 33 mln euro a valore di libro, allora il $V_U$ non è pari a 33mln € ma al valore di mercato, cioè il valore dato da $P_"az" dot N_"az"$.

$
  V_U = ("EBIT" dot (1- T_c))/ r_U space "se" D=0
$
Più in generale $V_U$:
$
  V_U = overbrace("UN" + "OF", "flusso di cassa agli investitori")/underbrace(r_U, "tasso di sconto")
$
Cioè è la formula della perpetuity, un flusso di cassa costante per sempre considerando i flussi di cassa quello che va agli investitori, UN e OF (anche senza )

$
"Valore Unlevered"=sum_(t=1)^n​ ( ("FCFF​​"_t)/(1+"WACC")^t + ("Valore Terminale")/(1+"WACC")^n )
​$

Dove:

  - *FCFF* (Free Cash Flow to Firm): È il flusso di cassa generato dalle attività operative disponibile per tutti i finanziatori (azionisti e creditori), al lordo degli oneri finanziari e al netto delle tasse pagate sul reddito operativo. Cioè: 
  $"FCFF" =& ("EBIT"- "OF") (1-T_c) + "OF" =\ =&"EBIT"- cancel("OF")- "EBIT" T_c + "OF" T_c + cancel("OF") =\
  =&"EBIT" dot (1-T_c) + "OF" dot T_c
  $ 

  - *WACC* (Weighted Average Cost of Capital): È il costo medio ponderato del capitale, che rappresenta il rendimento atteso da tutti i portatori di capitale.

  - *Valore Terminale* (Terminal Value): Stima del valore dell'azienda oltre il periodo di previsione esplicito.

== Finanziamento con Debito o Equity?
Il *DEBITO* ha:
- Interesse concordato *$r_d$*
- Basso rendimento (per i creditori)
- Minore rischio (generalmente)

L'*EQUITY* ha:
- Interesse variabile *$r_e$* -- varia in base alla parte di utile che viene distribuito
- Alto rendimento
- Rischio dipendente dal mercato

Si ha che $r_e>r_d$ per giustificare il maggior rischio assunto dall'investire in Equity.

Il rischio aggiuntivo dell'Equity per chi investe in un'azienda è il fatto che oltre che sui dividendi e sulla proprietà delle azioni, l'investitore non ha diritti su altre proprietà dell'azienda messi a garanzia nel caso l'azienda non produca il rendimento atteso.

Nel caso invece in cui un'azienda non risani il debito nei termini pattuiti, una banca, può impugnare il diritto per appropriarsi di altra ricchezza dell'azienda, per risanare il proprio credito.

Un debito che non può venire ripagato viene chiamato *sofferenza*.

== Indici
=== Debt-Equity Ratio
$ "Definito come :" D / E $
=== ROI (Return on Investment )
$
  "ROI" = "MON" / A = "MON" / "CI"
$
Dove:
- A: Attivo, A = CI (Capitale Investito)

Se non c'è debito, OF=0 $=>$ UN=MON-OF=MON e CI=D+E=E:
$
  "ROI" = "MON" / E = "UN" / "CI" = "ROE"
$
Cioè per un azienda interamente finanziata con Equity ROI=ROE

=== ROE (Return On Equity)
$
  "ROE" = "UN" / E
$

- UN: Utile Netto
- E: Equity, capitale di rischio, parte del proprio capitale ottenuto tramite vendita di azioni

=== ROD (Return On Debt)
$
  "ROD" = "OF" / D
$
- OF: Oneri Finanziari
- D: Capitale di Debito
=== V (Valore)
$
  V = A = "CI" = P
$
Cioè il valore di un azienda è pari al Capitale Investito.
=== UN,MON,OF
$
  "UN" = "MON" - "OF"
  "OF" = D dot "ROD"
$
- MON = EBIT: Margine Operativo Netto, cioè $"MON" = "RICAVI" - "COSTI"$
- EBIT: Earnings Before Interests and Taxes

== Valore di Mercato VS Valore di Libro
M: Market\
B: Book\ \
*Valore di Mercato* o (Market Value):
$
  V = D_M + E_M \
  |"            " \ "       " = D_M + P_E dot N_E
$

*Valore di Libro* o (Book Value):
$
  V = D_B + E_B
$

== Differenza ROE/ROD e r_e/r_d
- ROI
- ROE/ROD: Tassi di rendimento *EFFETTIVI* rispettivamente su EQUITY e DEBITO
- $r_e\/r_d$: Tassi di rendimento *ATTESI* rispettivamente EQUITY e DEBITO

== Importante

$
  V_L = P_"az." dot N_"az." + D
$
Notare che che questa formula non si può utilizzare a seguito del variare di $D\/E$ poichè il prezzo delle azioni cambierebbe, e non sarebbe più il precedente. 

Più in generale se ad esempio è stato convertito una parte di debito in equity, allora dipende se la parte aggiuntiva è stata messa come aumento di prezzo o come aumento di numero della azioni, analogamente nel caso da equity a debito in verso negativo per l'equity. 

- Quindi come fare per calcolare $V_L$ dopo un operazione di rifinanziamento?

Al variare della struttura del capitale $V_U$ (valore dell'azienda unlevered) non cambia.

$V_l$ invece cambia al variare della struttura del capitale.

$
  V_L = V_U + D dot T_c
$<eq12>
- $T_c :$ aliquota fiscale 

$V_L$ beneficia del tax shield, mentre $V_U$ rimane costante al variare di $D\/E$.

Si ha che $V_L = V_U$ *solo se* si è in *ASSENZA di TASSE*


- Grazie alla @eq12 è possibile calcolare $V_U$ come:
$
  V_U = underbrace((P_"az." dot &N_"az." + D), V_L) - D dot T_c
$