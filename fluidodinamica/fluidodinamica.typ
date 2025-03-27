#import "../utils/latest_style.typ": apply_my_style
#import "../utils/custom_functions.typ": two_col

#apply_my_style(date:(2025,02,12), title:"\n FluidoDinamica \n e \n  Biofluidodinamica  \n ", mode: "night")[

#set page(columns: 2)

  #include "../fluidodinamica/capitoli/idrostatica.typ"
]
