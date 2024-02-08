#import "/template.typ": *
#import "@preview/cetz:0.2.0"

#show: project.with(
  title: "Piano di Qualifica",
  subTitle: "Metriche, qualità e valutazione",
  authors: (
    "Todesco Mattia",
    "Oseliero Antonio",
  ),
  showLog: true,
  isExternalUse: true,
  showImagesIndex: false,
);

= Introduzione

== Scopo del documento
Il presente documento viene redatto con lo scopo di definire gli standard di qualità e di valutazione del prodotto. Essi saranno definiti conformemente ai requisiti e alle richieste del Proponente.
Definire la qualità di un prodotto consiste nell'attuazione di un insieme di processi che vadano a definire una base con cui misurare efficienza ed efficacia del lavoro svolto.

== Approccio al documento
Il presente documento viene redatto in modo incrementale per assicurare la coerenza delle informazioni al suo interno con gli sviluppi in corso e le esigenze evolutive del progetto. I valori identificati come accettabili per le metriche riportate possono subire variazioni con l'avanzamento dello sviluppo.

== Glossario
Il presente documento include una serie di termini tecnici specifici del progetto. Al fine di agevolarne la comprensione, si fornisce un Glossario che espliciti il significato di tali termini. I termini tecnici sono chiaramente evidenziati nel testo mediante l'aggiunta di una "_G_" a pedice degli stessi.

== Riferimenti
=== Normativi
- Norme di Progetto:\
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/2%20-%20RTB/Documentazione%20interna")_ ;
- Capitolato d'appalto: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_ .
=== Informativi
- Piano di Progetto:\
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/2%20-%20RTB/Documentazione%20esterna")_ ;
- Indice di Gulpease:\
  _#link("https://it.wikipedia.org/wiki/Indice_Gulpease")_ ;
- ISO/IEC 9126:\
  _#link("https://it.wikipedia.org/wiki/ISO/IEC_9126")_ .
=== Materiale fornito dal docente
- Dispense T7 (Qualità del software):\
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T7.pdf")_ ;
- Dispense T8 (Qualità di processo):\
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T8.pdf")_ .
\
= Qualità di processo

== Processi primari
=== Fornitura
==== *BAC (Budget at Completion)* 
Definito nel documento Piano di Progetto v2.0.0 con valore di € 13.055,00.
==== *PV (Planned Value)*
La metrica PV rappresenta il valore pianificato, indicante il costo preventivato per portare a termine le attività pianificate nello sprint. Per il calcolo del valore pianificato si considera la sommatoria delle ore preventivate per il costo del ruolo necessario al loro svolgimento, secondo quanto definito nel documento Piano di Progetto v2.0.0. Il calcolo di tale metrica è esteso anche all'intero progetto, dove il valore pianificato è definito come sommatoria dei PV di ogni singolo sprint.
- *SPV*: Sprint Planned Value, valore pianificato per un determinato sprint;
- *PPV*: Project Planned Value, valore pianificato per l'intero progetto.
\
Dati: \
- $"r in R = {Responsabile, Amministratore, Analista, Progettista, Programmatore, Verificatore}"$
- $"OR"_r$: Ore ruolo;
- $"CR"_r$: Costo ruolo.

#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$sum_(r in R) "OR"_r * "CR"_r$), align(center+horizon,$>"0"$), align(center+horizon,$>"0"$),
  ),
  caption: "Specifiche metrica SPV"
)

- $"dato s in S, con S insieme degli sprint svolti"$
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$sum_(s in S)"SPV"_("s")$), align(center+horizon,$>"0"$), align(center+horizon,$>"0"$),
  ),
  caption: "Specifiche metrica SPV"
)

La metrica risulta un indice necessario a determinare il valore atteso del lavoro svolto in un determinato sprint. Il suo valore strettaemente maggiore di 0 indica che non sono contemplati periodi di inattività.

==== *AC (Actual Cost)*
La metrica AC rappresenta la somma dei costi sostenuti dal gruppo in un determinato periodo di tempo. Tale metrica viene calcolata sia in riferimento all'intero progetto, sia come consuntivo dello sprint:
- *SAC*: Sprint Actual Cost, costo effettivo sostenuto dal gruppo in un determinato sprint;
- *PAC*: Project Actual Cost, costo effettivo sostenuto dal gruppo dall'inizio del progetto, definito come sommatoria dei SAC.
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Somma dei costi sostenuti nello sprint], [$<="PV"$], [$"+10% PV"$],
  ),
  caption: "Specifiche metrica SAC"
)

- $"dato s in S, con S insieme degli sprint svolti"$
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$sum_(s in S)"SAC"_("s")$), align(center+horizon,$<="BAC"$), align(center+horizon,$<="BAC"$),
  ),
  caption: "Specifiche metrica PAC"
)


==== *EV (Earned Value)*
L'Earned Value rappresenta il valore guadagnato dal progetto in un determinato periodo di tempo. Tale metrica viene calcolata sia in riferimento all'intero progetto, sia come valore guadagnato nello sprint:
- *SEV*: Sprint Earned Value, valore guadagnato dal progetto in un determinato sprint, dove lo stato di completamento del lavoro è espresso mediante il rapporto tra gli story points completati e quelli pianificati per lo sprint;
- *PEV*: Project Earned Value, valore guadagnato dal progetto dal suo inizio, definito come sommatoria dei SEV.
*Calcolo del SEV*
- *SPC*: Story Points Completati;
- *SPP*: Story Points Pianificati.

#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display("SPC"/"SPP")*"SPV"$), align(center+horizon, $="SPV"$), align(center+horizon, $>="80% del SPV"$),
  ),
  caption: "Specifiche metrica SEV"
)

*Calcolo del PEV*
- $"dato s in S, con S insieme degli sprint svolti"$
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon, $sum_(s in S)"SEV"_("s")$), align(center+horizon, $>=0$), align(center+horizon, $<="BAC"$),
  ),
  caption: "Specifiche metrica PEV"
)

\

==== *CPI (Cost Performance Index)*
Il CPI rappresenta l'indice di performance del costo, ovvero il rapporto tra il valore guadagnato e il costo effettivo sostenuto. Tale metrica viene calcolata in riferimento al valore totale raggiunto del progetto (*PEV*) in proporzione al costo effettivo sostenuto (*PAC*).

#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display("PEV"/"PAC")$), align(center+horizon,$>=1$), align(center+horizon,$>=0.8$),
  ),
  caption: "Specifiche metrica CPI"
)

Un rapporto maggiore di 1 indica che il valore raggiunto è superiore al costo effettivo sostenuto. Data la natura didattica del progetto e l'inesperienza del gruppo, si ritiene accettabile un valore di CPI $>= 0.8$, valore indicante un costo effettivo leggermente superiore al valore guadagnato.

==== *EAC (Estimated At Completion)*
L'EAC rappresenta il costo stimato al termine del progetto. Tale metrica viene calcolata in riferimento al budget totale del progetto (*BAC*) in proporzione all'indice di performance del costo (*CPI*).
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display("BAC"/"CPI")$), align(center+horizon,$<="BAC"$),
    align(center+horizon,$<="BAC"$),
  ),
  caption: "Specifiche metrica EAC"
)

Il valore del BAC non può essere maggiore rispetto a quanto espresso in candidatura, pertanto gli unici valori accettbili (e ottimali) sono stime a ribasso rispetto al BAC. Dipendendo strettamente dall'indice di performance (*CPI*), il valore della metrica EAC può subire variazioni anche a rialzo, ma sarà compito del gruppo mantenere tale valore il più possibile vicino al BAC.

== Processi di supporto
=== Documentazione

- *Errori ortografici*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Numero di errori ortografici presenti nel testo], [0], [0],
  ),
  caption: "Specifiche Errori Ortografici"
)

=== Miglioramento
- *Metriche soddisfatte*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [% metriche soddisfatte], [100%], [$>=80%$],
  ),
  caption: "Specifiche Metriche soddisfatte"
)

// = Qualità del prodotto
// == Funzionalità
// - *Requisiti soddisfatti*
// #figure(
//   table(
//     columns: 3,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [% requisiti obbligatori soddisfatti], [100%], [100%],
//     [% requisiti desiderabili soddisfatti], [$>=0%$], [0%],
//     [% requisiti opzionali soddisfatti], [$>=0%$], [0%],
//   ),
//   caption: "Specifiche Requisiti soddisfatti"
// )

// == Affidabilità
// - *Densità degli errori*
// #figure(
//   table(
//     columns: 3,
//     rows: 30pt,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     align(center+horizon,$display(frac("Test con errori","Test eseguiti"))*100$), align(center+horizon,"0%"), align(center+horizon,$<=10%$),
//   ),
//   caption: "Specifiche Densità errori"
// )
// == Efficienza
// - *Efficienza del sistema*
// #figure(
//   table(
//     columns: 3,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [Efficienza del sistema], [TBD], [TBD],
//   ),
//   caption: "Specifiche Efficienza del sistema"
// )
// == Usabilità
// - *Facilità di utilizzo*
// #figure(
//   table(
//     columns: 3,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [Facilità di utilizzo del sistema], [TBD], [TBD],
//   ),
//   caption: "Specifiche Facilità di utilizzo"
// )
// == Manutenibilità
// #figure(
//   table(
//     columns: 3,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [Manutenibilità del sistema], [TBD], [TBD],
//   ),
//   caption: "Specifiche Manutenibilità del sistema"
// )

#pagebreak()
= Valutazione Metriche
== Premessa
Come stabilito dal Piano di Progetto v2.0.0 e dalle Norme di Progetto TODO, il gruppo ha imposto sprint della durata settimanale. Nel primo sprint si è definito l'utilizzo dell'ITS Jira come strumento di tracciamento, e gli sprint successivi sono stati utilizzati nella sua comprensione e corretto utilizzo. Per questo motivo, le metriche utili e correttamente registrate sono disponibili dal quinto sprint iniziato il 04/12/2023. 
== Processi primari
=== Fornitura
==== Rapporto tra PPV, PAC e PEV
#figure(
  cetz.canvas({
    import cetz.plot 
    let EV_points(offset: 0) = ((4,2040), (5,2655), (6,3111.85), (7,3528.52), (8,3948.14), (9, 4573.14), (10, 4848.14), (11, 5084.39), (12, 5178.90), (13, 5224.62)).map(((x,y)) => {(x,y + offset * 1.5)})
    
    let AC_point(offset: 1) = ((4,2075), (5,2620), (6,3140), (7,3515), (8,4090), (9, 4520), (10, 4875), (11, 5105), (12, 5285), (13, 5395)).map(((x,y)) => {(x,y + offset * 1.5)})

    let PV_point(offset: 1) = ((4,2040), (5,2655), (6,3190), (7,3690), (8,4200), (9, 4825), (10, 5155), (11, 5470), (12, 5625), (13, 5705)).map(((x,y)) => {(x,y + offset * 1.5)})

    plot.plot(size: (12, 6), {
    plot.add(PV_point(offset: 1), line: "spline", label: "PPV")
    plot.add(AC_point(offset: 1), line: "spline", label: "PAC", style: (stroke: (paint: red)))
    plot.add(EV_points(offset: 0), line: "spline", label: "PEV", style: (stroke: (paint: green)))
    plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
    plot.add-hline(13055, label: "BAC" , style: (stroke: (paint: blue, dash: "dotted")))
    },
    y-max: 14000,
    x-max: 21,
    x-min: 4,
    x-tick-step: 1,
    y-tick-step: 1500,
    x-label: "Sprint",
    y-label: "Valore in €",
    )
  }),
  caption: "Rapporto tra PPV, PAC e PEV"
)
*RTB*: In questo primo periodo, il gruppo è consapevole che il valore pianficato *PPV* risulta superiore a quanto prodotto nell'effettivo indicato dal *PEV*. Nonostante ciò il gruppo è sempre riuscito a mantenere il valore del *PEV* non solo in crescita, ma anche superiore almeno all'80% del *PPV*.

#pagebreak()

==== Cost Performance Index CPI
#figure(
  cetz.canvas({
    import cetz.plot 
    let CPI_points(offset: 0) = ((4,0.98), (5,1.01), (6,0.99), (7,1.00), (8,0.97), (9, 1.01), (10, 0.99), (11, 1.00), (12, 0.98), (13, 0.97)).map(((x,y)) => {(x,y + offset * 1.5)})

    plot.plot(size: (12, 6), {
    plot.add(CPI_points(offset: 0), line: "linear", label: "CPI", mark: "triangle")
    plot.add-hline(1.1, label: "Limite superiore" , style: (stroke: (paint: green, dash: "dotted")))
    plot.add-hline(0.8, label: "Limite inferiore" , style: (stroke: (paint: red, dash: "dotted")))
    plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
    },
    y-max: 1.2,
    y-min: 0.6,
    x-max: 21,
    x-min: 4,
    x-tick-step: 1,
    y-tick-step: 0.1,
    x-label: "Sprint",
    y-label: "CPI",
    )
  }),
  caption: "Andamento CPI"
)
*RTB*: L'indice CPI risulta sempre in un range di valore accettabile. Seppur non lineare, non si evidenziano grandi variazioni, permettendo di evidenziare un corretto avanzamento in termini di costi e lavoro prodotto.
\
\
==== Rapporto tra BAC e EAC
#figure(
  cetz.canvas({
    import cetz.plot 
    let EAC_points(offset: 0) = ((4,13278.98), (5,12882.90), (6, 13173.08), (7,   13004.98), (8, 13524.07), (9, 12903.30), (10, 13127.33), (11, 13107.92), (12, 133022.45), (13, 13480.74)).map(((x,y)) => {(x,y + offset * 100)})

    plot.plot(size: (12, 6), {
    plot.add(EAC_points(offset: 0), line: "linear", label: "EAC", mark: "triangle", style: (stroke: (paint: red)))
    plot.add-hline(13055, label: "BAC" , style: (stroke: (paint: blue, dash: "dotted")))
    plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
    },
    y-max: 17000,
    y-min: 5000,
    x-max: 21,
    x-min: 4,
    x-tick-step: 1,
    y-tick-step: 1000,
    x-label: "Sprint",
    y-label: "Valore in €",
    )
  }),
  caption: "Andamento EAC"
)

*RTB*: Il valore dell'*EAC* oscilla attorno al valore del *BAC*
