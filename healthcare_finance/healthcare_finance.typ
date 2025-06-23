
#import "../utils/new_style1.typ": presentation_style
#import "../utils/custom_functions.typ": two_col

#presentation_style(paper:"a3",date:(2025,02,12), title:"\n Note di:\n\n Healthcare  \n  Finance  \n ", mode: "night")[

#set page(columns: 1)

#include "capitoli/00FlussiMonetariInIngresso.typ"

#colbreak()

#include "../healthcare_finance/capitoli/01_struttura_capitale1.typ"

#colbreak()

#include "../healthcare_finance/capitoli/02_recap.typ"

#colbreak()

#include "capitoli/03MatematicaFinanziaria.typ"

#colbreak()

#include "capitoli/04PianiAmmortamento.typ"
]
