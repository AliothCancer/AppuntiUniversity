#import "../../utils/latest_style.typ": styled_box

= Struttura capitale: Parte I

#styled_box(
  contenuto:[
    *Ripassino Stato Patrimoniale:*\
    La struttura del capitale si compone in generale di:
    - Equity: Capitale di rischio, così chiamato perchè per gli investitori, non ci sono garanzie assicurate di ritorno, come invece per i debiti
    - Debito
    - Debito ed Equity sono le due parti che costituiscono il passivo dello stato patrimoniale.
    - L'*ATTIVO* rappresenta gli impieghi del capitale, cioè come è stato investito. Risponde alla domanda *"Come hai investito il capitale?"*
    - Il *PASSIVO* rappresenta il finanziamento, risponde alla domanda: *"Come hai finanziato i tuoi investimenti?*"

  ]
)
-----------------------------------
#styled_box(
  contenuto:[
    == Leverage
    Un'azienda *LEVERAGE* è un'azienda con una parte di finanziamento del proprio capitale derivante da *DEBITO*.\
    Quindi paga gli interessi ai debitori.

    $ D/E > 0 $
  ]
)

== Finanziamento con Debito o Equity?
Il *DEBITO* ha:
- Interesse fisso *$r_d$*
- Basso rendimento
- Minore rischio

L'*EQUITY* ha:
- Interesse variabile *$r_e$* -- varia in base alla parte di utile che viene distribuito
- Alto rendimento
- Maggiore rischio

Si ha che $r_e>r_d$ per giustificare il maggior rischio assunto dall'investitore, il rendimento $r_e$ deve essere maggiore del redimento che offre il debito.

#styled_box(
  contenuto: [
    == Indici
    === Debt-Equity Ratio
    $ "Definito come :" D/E $
    === ROI (Return on Investment )
    $
      "ROI" = "MON"/A = "MON" / "CI"
    $
    Dove:
    - A: Attivo, A = CI (Capitale Investito)

    Se non c'è debito, OF=0 $=>$ UN=MON-OF=MON e CI=D+E=E:
    $
      "ROI" = "MON" / E = "UN"/"CI" = "ROE"
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
  ]
)

#styled_box(
  contenuto:[
    == Valore di Mercato VS Valore di Libro
    M: Market\
    B: Book\ \
    *Valore di Mercato* o (Market Value):
    $
      V = D_M + E_M \
     |"            " \ "       " =  D_M + P_E dot N_E
    $

    *Valore di Libro* o (Book Value):
    $
      V = D_B + E_B
    $
  ]
)

#styled_box(
  contenuto:[
    == Differenza ROE/ROD e r_e/r_d
    - ROI
    - ROE/ROD: Tassi di rendimento effettivi rispettivamente su EQUITY e DEBITO
    - $r_e\/r_d$: Tassi di rendimento attesi rispettivamente EQUITY e DEBITO
  ]
)
