
#import "../utils/new_style1.typ": presentation_style
#import "../utils/custom_functions.typ": two_col

#presentation_style(date:(2025,02,12), title:"\n Note di:\n\n Healthcare  \n  Finance  \n ", mode: "night")[

#set page(columns: 2)

#include "capitoli/00FlussiMonetariInIngresso.typ"
#include "../healthcare_finance/capitoli/01_struttura_capitale1.typ"
#include "../healthcare_finance/capitoli/02_recap.typ"

]
