#typst compile dispositivi/FormularioDispositivi.typ --root .
#typst compile dispositivi/FormularioDispositiviBlack.typ --root .
#typst compile dispositivi/DispositiviMedicaliBlack.typ --root .
#typst compile dispositivi/DispositiviMedicali.typ --root .
typst compile healthcare_finance/healthcare_finance.typ --root .
git add .
 git commit -m "content update"
 git push
