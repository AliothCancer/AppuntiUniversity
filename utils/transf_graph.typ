#import "@preview/cetz:0.2.2": *

#let trasformazioni_graph(mode: str) = figure(
canvas(length: 2.7cm, {
  let domain = (0.01,2)
  let n_iso = 1;
  let n_ad = 1.4;
  let n_rand = 1.2;
  let n_rand2 = .5;
  let samples = 100;
  let p1 = calc.pow(10,5); // 1 * 10^5 Pa 
  let v1 = 1; // m3/kg
  let a4_sizes = (5,3.6);
  let presentation_sizes = (4.7,3.8);
  let size = a4_sizes
  let legend = "legend.south"

  if mode == "presentation"{
    legend = "legend.east";
    size = presentation_sizes;
  }
    

  plot.plot(
    axis-style:"left",
    x-min: 0,
    x-max: 2,
    y-min: 3.2*calc.pow(10,4),
    y-max: 2.1*calc.pow(10,5),
    y-label: $P ("Pa")$,
    x-label:$#h(2cm) v(L/("kg"))$,
    size: size,
    x-grid: true,
    y-grid: true,
    y-format: "sci",
    legend:legend ,
    {
      plot.add(
        label: "n = " + str(-100) + $space ~ space -infinity "isovolumica"$,
        domain: domain,
        samples: samples,
        v => p1*v1 * calc.pow(v,-(-100))
        )
      plot.add(
        label: "n = " + str(-1.4),
        domain: domain,
        samples: samples,
        v => p1*v1 * calc.pow(v,-(-1.4))
        )
      plot.add(
        label: "n = " + str(-1),
        domain: domain,
        samples: samples,
        v => p1*v1 * calc.pow(v,-(-1))
        )
      plot.add(
        label: "n = " + str(0) + $" isobara"$,
        domain: domain,
        samples: samples,
        v => p1*v1 * calc.pow(v,-(0))
        )
      plot.add(
        label: "n = " + str(n_rand2),
        domain: domain,
        samples: samples,
        v => p1*v1 * calc.pow(v,-n_rand2)
        )
      plot.add(
        label: "n=1 (isoterma)",
        domain: domain,
        samples: samples,
        //fill: true,
        //style: style(palette.cyan(2)),
        v => p1*v1 * calc.pow(v,-n_iso)
        )
    
      plot.add(
        label: "n = k = 1.4 (isoentr.)",
        domain: domain,
        samples: samples,
        v => p1*v1 * calc.pow(v,-n_ad)
        )
      
      plot.add(
        label: "n = " + str(100)+ $space ~ space  infinity "isovolumica"$,
        domain: domain,
        samples: samples,
        v => p1*v1 * calc.pow(v,-100)
        )

      plot.add(((v1,p1),), mark: "o",mark-style: (stroke: blue, fill: black,), mark-size: .1)
      
      
//      plot.add(((2,3.8*calc.pow(10,4)),), mark: "o",mark-style: (stroke: black, fill: black), mark-size: .1)
//      
//
//      plot.add(((2,5*calc.pow(10,4)),), mark: "o",mark-style: (stroke: blue, fill: black), mark-size: .1)
//

    })
}), caption: "Differenti curve al variare dell'indice n della politropica \n(Plot made with cetz)",)
