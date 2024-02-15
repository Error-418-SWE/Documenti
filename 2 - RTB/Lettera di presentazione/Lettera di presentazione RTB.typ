#set text(
  font: "New Computer Modern",
  lang: "it",
)
#set par(
  leading: 0.85em,
)
#set list(
  marker: ([•], [--]),
)
#set table(
  fill: (_, row) => if row == 0 { luma(220) },
  stroke: 0.5pt + luma(140)
)
#show link: set text(fill: blue)
#show link: it => [
  #it
  #v(0.75em)
]
#show "WIP": it => [
  #text(it, fill: red)
]

#v(-1em)
#align(
  end,
  block(
    width: 50%,
    grid(
      columns: (3fr, 2fr),
      column-gutter: 1em,
      [
        #align(
          end + horizon,
          [
            #text(
              size: 1.2em,
              weight: "bold",
              "Error_418"
            )
            #v(-0.5em)
            #link("mailto:error418swe@gmail.com")
          ]
        )
      ],
      [
        #align(
          horizon,
          [
            #v(-1em)
            #image("/logo.png", width: 100%)
          ]
        )
      ]
    )
  )
)
#v(2em)

Egregio Prof. Tullio Vardanega,\
Egregio Prof. Riccardo Cardin,

#v(1em)

Con la presente, il gruppo #err418 intende comunicarVi la volontà di candidarsi alla revisione per la _Requirements and Tecnology Baseline_. Sarà esposto lo stato di avanzamento del progetto:

#align(center)[*"WMS3: Warehouse Management 3D"*]

proposto dall'azienda _Sanmarco Informatica S.p.A._, altresì denominato Capitolato 5.

I documenti prodotti dal gruppo per la RTB sono consultabili all'indirizzo:

#align(center)[#link("https://github.com/Error-418-SWE/Documenti/tree/main/2 - RTB")]

Per agevolare la consultazione dei documenti, il gruppo si è munito di un sito web:

#align(center)[#link("https://error418swe.netlify.app/")]

È fornito inoltre il _Proof of Concept_, disponibile all'indirizzo:

#align(center)[#link("https://github.com/Error-418-SWE/PoC/tree/main/")]

I membri del gruppo sono riportati nella tabella seguente:

#figure(
  table(
    columns: 2,
    [*Nome*], [*Matricola*],
    [Banzato Alessio],  [2042381],
    [Carraro Riccardo], [2042346],
    [Gardin Giovanni],  [2010003],
    [Nardo Silvio],     [1222011],
    [Oseliero Antonio], [1226325],
    [Todesco Mattia],   [1193375],
    [Zaccone Rosario],  [2043680],
  ),
)

Il gruppo aggiorna la stima dei costi, riducendola a *€ 13.055,00*. La data di consegna prevista rimane invariata ed è fissata al *20/03/2024*.

#v(1em)

Cordiali saluti,\
#err418 (gruppo 7)