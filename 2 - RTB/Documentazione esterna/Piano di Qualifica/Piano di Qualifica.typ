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

== Dashboard di monitoraggio
Il gruppo si dota di una dashboard di monitoraggio per tenere traccia delle metriche di processo e di prodotto. La dashboard è accessibile a tutti i membri del gruppo. Essa è accessibile al seguente link:

#align(center, link(grafana))

== Glossario
#glo_paragrafo

== Riferimenti <riferimenti>

=== Riferimenti a documentazione interna <riferimenti-interni>

- Documento #glo_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/2%20-%20RTB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(13, 02, 2024)

- Documento #ndp_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/2%20-%20RTB/Documentazione%20interna/Norme%20di%20Progetto_v" + ndp_vo + ".pdf")_
  #lastVisitedOn(13, 02, 2024)

- Documento #pdp_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/2%20-%20RTB/Documentazione%20esterna/Piano%20di%20Progetto_v" + pdp_vo + ".pdf")_
  #lastVisitedOn(13, 02, 2024)

=== Riferimenti normativi <riferimenti-normativi>

- ISO/IEC 9126 1:2001: \
  _#link("https://www.iso.org/standard/22749.html")_
  #lastVisitedOn(13, 02, 2024)

- Capitolato "Warehouse Management 3D" (C5) di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)

=== Riferimenti informativi <riferimenti-informativi>

- Dispense T7 (Qualità del software): \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T7.pdf")_
  #lastVisitedOn(13, 02, 2024)

- Dispense T8 (Qualità di processo): \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T8.pdf")_
  #lastVisitedOn(13, 02, 2024)


= Qualità di processo

== Processi primari
=== Fornitura
==== *BAC (Budget at Completion)*
Definito nel documento Piano di Progetto v2.0.0 con valore di € 13.055,00.
==== *PV (Planned Value)*
La metrica PV rappresenta il valore pianificato, ovvero il costo preventivato per portare a termine le attività pianificate nello sprint. Per il calcolo del valore pianificato si considera la sommatoria delle ore preventivate per il costo del ruolo necessario al loro svolgimento, secondo quanto definito nel documento Piano di Progetto v2.0.0. Il calcolo di tale metrica è esteso anche all'intero progetto, dove il valore pianificato è definito come sommatoria dei PV di ogni singolo sprint.
\ \
- *SPV*: Sprint Planned Value, valore pianificato per un determinato sprint;
- *PPV*: Project Planned Value, valore pianificato per l'intero progetto.

Dati: \
- $"r in R = {Responsabile, Amministratore, Analista, Progettista, Programmatore, Verificatore}"$
- $"OR"_r$: Ore ruolo;
- $"CR"_r$: Costo ruolo.

Si definisce:
#figure(
  table(
    columns: 3,
    rows: (auto, 30pt),

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$"SPV" = sum_(r in R) "OR"_r * "CR"_r$), align(center+horizon,$>"0"$), align(center+horizon,$>"0"$),
  ),
  caption: "Specifiche metrica SPV"
)
Dato:
- $"s in S, con S insieme degli sprint svolti."$
Si definisce:
#figure(
  table(
    columns: 3,
    rows: (auto, 30pt),

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$"PPV" = sum_(s in S)"SPV"_("s")$), align(center+horizon,$cases(>"0", <="BAC")$), align(center+horizon,$cases(>"0", <="BAC")$),
  ),
  caption: "Specifiche metrica SPV"
)

La metrica è un indice necessario a determinare il valore atteso del lavoro svolto in un determinato sprint. Il suo valore strettamente maggiore di 0 indica che non sono contemplati periodi di inattività.

==== *AC (Actual Cost)*
La metrica *AC* rappresenta la somma dei costi sostenuti dal gruppo in un determinato periodo di tempo. Tale metrica viene calcolata sia in riferimento all'intero progetto, sia come consuntivo dello sprint:
- *SAC*: Sprint Actual Cost, costo effettivo sostenuto dal gruppo in un determinato sprint;
- *PAC*: Project Actual Cost, costo effettivo sostenuto dal gruppo dall'inizio del progetto, definito come sommatoria dei *SAC*.
#figure(
  table(
    columns: 3,

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [SAC = Somma dei costi sostenuti nello sprint], [$<="SPV"$], [$<="SPV" + 10%$],
  ),
  caption: "Specifiche metrica SAC"
)

Dato:
- $"s in S, con S insieme degli sprint svolti."$
Si definisce:
#figure(
  table(
    columns: 3,
    rows: (auto, 30pt),

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$"PAC" = sum_(s in S)"SAC"_("s")$), align(center+horizon,$<="BAC"$), align(center+horizon,$<="BAC"$),
  ),
  caption: "Specifiche metrica PAC"
)


==== *EV (Earned Value)*
L'Earned Value rappresenta il valore guadagnato dal progetto in un determinato periodo di tempo. Tale metrica viene calcolata sia in riferimento all'intero progetto, sia come valore guadagnato nello sprint:
- *SEV*: Sprint Earned Value, valore guadagnato dal progetto in un determinato sprint, dove lo stato di completamento del lavoro è espresso mediante il rapporto tra gli story points completati e quelli pianificati per lo sprint;
- *PEV*: Project Earned Value, valore guadagnato dal progetto dal suo inizio, definito come sommatoria dei *SEV*.
*Calcolo del SEV*
- *SPC*: Story Points Completati;
- *SPP*: Story Points Pianificati.

#figure(
  table(
    columns: 3,
    rows: (auto, 30pt),

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$"SEV" = display("SPC"/"SPP")*"SPV"$), align(center+horizon, $="SPV"$), align(center+horizon, $>="80% del SPV"$),
  ),
  caption: "Specifiche metrica SEV"
)

*Calcolo del PEV*
- $"dato s in S, con S insieme degli sprint svolti"$
#figure(
  table(
    columns: 3,
    rows: (auto, 40pt),

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon, $"PEV" = sum_(s in S)"SEV"_("s")$), align(center+horizon, $="PPV"$), align(center+horizon, $>="80% del PPV"$),
  ),
  caption: "Specifiche metrica PEV"
)

\

==== *CPI (Cost Performance Index)*
Il *CPI* rappresenta l'indice di performance del costo, ovvero il rapporto tra il valore guadagnato e il costo effettivo sostenuto. Tale metrica viene calcolata in riferimento al valore totale raggiunto del progetto (*PEV*) in proporzione al costo effettivo sostenuto (*PAC*).

#figure(
  table(
    columns: 3,
    rows: (auto, 30pt),

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$"CPI" = display("PEV"/"PAC")$), align(center+horizon,$>=1$), align(center+horizon,$>=0.95$),
  ),
  caption: "Specifiche metrica CPI"
)

Un rapporto maggiore di 1 indica che il valore raggiunto è superiore al costo effettivo sostenuto. Data la natura didattica del progetto e l'inesperienza del gruppo, si ritiene accettabile un valore di *CPI* $>= 0.95$, valore indicante un costo effettivo leggermente superiore al valore guadagnato.

==== *EAC (Estimated At Completion)*
L'EAC rappresenta il costo stimato al termine del progetto. Tale metrica viene calcolata in riferimento al budget totale del progetto (*BAC*) in proporzione all'indice di performance del costo (*CPI*).
#figure(
  table(
    columns: 3,
    rows: (auto,50pt),

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$"EAC" = display("BAC"/"CPI")$), align(center+horizon,$<="BAC"$),
    align(center+horizon, $cases( <= "BAC + 5%",
                                 <= "BAC alla consegna",
                                 >= "12000 da regolamento"
                                  )$),
  ),
  caption: "Specifiche metrica EAC"
)

Il costo totale del capitolato non può essere maggiore rispetto a quanto espresso in candidatura, pertanto gli unici valori accettbili (e ottimali) sono pari o inferiori rispetto al *BAC*. Dipendendo strettamente dall'indice di performance (*CPI*), il valore della metrica *EAC* può subire variazioni anche al rialzo. Sarà compito del gruppo assorbire eventuali costi aggiuntivi, al fine di mantenere il valore della metrica *EAC* entro i limiti stabiliti in prospettiva della milestone esterna *PB*.

== Processi di supporto
=== Documentazione

- *Errori ortografici*
#figure(
  table(
    columns: 3,

    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Numero di errori ortografici presenti nel testo], [0], [0],
  ),
  caption: "Specifiche errori ortografici"
)

Il numero di errori ortografici presenti nei documenti deve essere pari a 0. La metrica evidenzia il numero di errori ortografici individuati durante la revisione precedente al rilascio del documento.

=== Miglioramento
==== Percentuale metriche soddisfatte
Dati:
- MS: Metriche soddisfatte;
- MT: Metriche totali.

#figure(
  table(
    columns: 3,
    rows: (auto, 30pt),
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon, [% metriche soddisfatte = $display("MS"/"MT")*100$]), align(center+horizon,$100%$), align(center+horizon,$>=75%$),
  ),
  caption: "Specifiche metriche soddisfatte"
)

Avere un resoconto delle metriche soddisfatte per ogni sprint permette di evidenziare eventuali criticità e di attuare le misure di correzione necessarie, seguendo, come stabilito nelle Norme di Progetto TODO paragrafo TODO _Processo di gestione dei modelli di ciclo di vita_, il ciclo PDCA per il miglioramento continuo.

// = Qualità del prodotto
// == Funzionalità
// - *Requisiti soddisfatti*
// #figure(
//   table(
//     columns: 3,
//
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
//     rows: (auto, 30pt),
//
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
//
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
//
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [Facilità di utilizzo del sistema], [TBD], [TBD],
//   ),
//   caption: "Specifiche Facilità di utilizzo"
// )
// == Manutenibilità
// #figure(
//   table(
//     columns: 3,
//
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [Manutenibilità del sistema], [TBD], [TBD],
//   ),
//   caption: "Specifiche Manutenibilità del sistema"
// )

= Valutazione Metriche
== Premessa
Come stabilito dal Piano di Progetto v2.0.0 e dalle Norme di Progetto TODO, il gruppo ha imposto sprint della durata settimanale. Nel primo sprint si è confermato l'utilizzo dell'ITS Jira come strumento di tracciamento, ma per comprenderne a fondo le meccaniche e il corretto utilizzo, sono stati necessari i seguenti 4 sprint. Nel corso di questo periodo, sono state apportate modifiche di configurazione, anche consapevolmente non retrocompatibili, che hanno introdotto eterogeneità nei dati riportati dall'ITS.
Per questo motivo, i dati utili al corretto calcolo delle metriche sono disponibili dal quinto sprint, iniziato il 04/12/2023.
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
    plot.add-hline(13055, label: "BAC" , style: (stroke: (paint: blue, dash: "dotted")))
    plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
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
*RTB*: In questo primo periodo, il gruppo è consapevole che il valore pianficato *PPV* risulti superiore a quanto prodotto nell'effettivo indicato dal *PEV*. Nonostante ciò, il gruppo è sempre riuscito a mantenere il valore del *PEV* non solo in crescita, ma anche superiore all'80% del *PPV*.

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
*RTB*: L'indice *CPI* risulta sempre in un range di valore accettabile.Seppur l'andamento non sia lineare, non si rilevano grandi variazioni, il che evidenzia un corretto avanzamento in termini di costi e lavoro prodotto.


==== Rapporto tra BAC e EAC
#figure(
  cetz.canvas({
    import cetz.plot
    let EAC_points(offset: 0) = ((4,13278.98), (5,12882.90), (6, 13173.08), (7,   13004.98), (8, 13524.07), (9, 12903.30), (10, 13127.33), (11, 13107.92), (12, 13322.45), (13, 13480.74)).map(((x,y)) => {(x,y + offset * 100)})

    plot.plot(size: (12, 6), {
    plot.add(EAC_points(offset: 0), line: "linear", label: "EAC", mark: "triangle", style: (stroke: (paint: red)))
    plot.add-hline(13005*1.05, label: "Limite superiore (BAC + 5%)" , style: (stroke: (paint: red, dash: "dotted")))
    plot.add-hline(12000, label: "Limite inferiore" , style: (stroke: (paint: blue, dash: "dotted")))
    plot.add-hline(13055, label: "BAC" , style: (stroke: (paint: green, dash: "dotted")))
    plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
    },
    y-max: 16000,
    y-min: 10000,
    x-max: 21,
    x-min: 4,
    x-tick-step: 1,
    y-tick-step: 1000,
    x-label: "Sprint",
    y-label: "Valore in €",
    )
  }),
  caption: "Rapporto tra EAC e BAC"
)

*RTB*: Il valore dell'*EAC* oscilla attorno al valore del *BAC*. Il gruppo è consapevole che il valore stabilito dal *BAC* non possa essere superato, pertanto l'*EAC* al termine del progetto dovrà attenersi al rigido vincolo di $<=$ rispetto al *BAC*.

== Processi di supporto
=== Documentazione
==== Errori ortografici

*Documentazione esterna*
#figure(
  cetz.canvas({
    import cetz.plot

    let PdP_points(offset: 0) = ((4,1), (5,2), (6, 2), (7, 1), (8, 0), (9, 0), (10, 1), (11, 0), (12, 0), (13, 0)).map(((x,y)) => {(x,y + offset * 100)})

    let PdQ_points(offset: 0) = ((4,0), (5,0), (6, 0), (7, 0), (8, 0), (9, 2), (10, 3), (11, 1), (12, 0), (13, 0)).map(((x,y)) => {(x,y + offset * 100)})

    let AdR_points(offset: 0) = ((4,4), (5,4), (6, 2), (7, 2), (8, 3), (9, 1), (10, 0), (11, 0), (12, 0), (13, 0)).map(((x,y)) => {(x,y + offset * 100)})

    let GLS_points(offset: 0) = ((4,3), (5,2), (6, 0), (7, 0), (8, 2), (9, 0), (10, 1), (11, 0), (12, 0), (13, 0)).map(((x,y)) => {(x,y + offset * 100)})

    plot.plot(size: (12, 6), {
    plot.add(PdP_points(offset: 0), line: "linear", label: "PdP", mark: "o")
    plot.add(PdQ_points(offset: 0), line: "linear", label: "PdQ", mark: "o")
    plot.add(AdR_points(offset: 0), line: "linear", label: "AdR", mark: "o")
    plot.add(GLS_points(offset: 0), line: "linear", label: "Glossario", mark: "o")
    plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
    },
    y-max: 8,
    x-max: 21,
    x-min: 4,
    x-tick-step: 1,
    y-tick-step: 1,
    x-label: "Sprint",
    y-label: "Numero di errori",
    )
  }),
  caption: "Andamento errori ortografici nella documentazione esterna"
)


*Documentazione interna*
#figure(
  cetz.canvas({
    import cetz.plot

    let NdP_points(offset: 0) = ((4,2), (5,3), (6, 4), (7, 3), (8, 3), (9, 2), (10, 1), (11, 1), (12, 0), (13, 0)).map(((x,y)) => {(x,y + offset * 100)})

    let RIS_points(offset: 0) = ((4,2), (5,1), (6, 0), (7, 0), (8, 0), (9, 0), (10, 0), (11, 1), (12, 0), (13, 0)).map(((x,y)) => {(x,y + offset * 100)})

    plot.plot(size: (12, 6), {
    plot.add(NdP_points(offset: 0), line: "linear", label: "NdP", mark: "o")
    plot.add(RIS_points(offset: 0), line: "linear", label: "Analisi dei Rischi", mark: "o")
    plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
    },
    y-max: 8,
    x-max: 21,
    x-min: 4,
    x-tick-step: 1,
    y-tick-step: 1,
    x-label: "Sprint",
    y-label: "Numero di errori",
    )
  }),
  caption: "Andamento errori ortografici nella documentazione interna"
)

*RTB*: Gli errori ortografici nella documentazione rispecchiano i periodi in cui i documenti hanno subito la maggior parte delle modifiche. In particolare:
- *Documentazione esterna*:
  - *PdP*: il documento ha inizialmente subito la maggior parte di aggiunte a livello testuale, come le sezioni di introduzione, amministrazione dei periodi e dei ruoli. Successivamente gli aggiornamenti sono stati minori, atti alla registrazione e al tracciamento dei preventivi e consuntivi dei vari periodi. Inoltre, l'implementazione di un sistema di creazione automatico delle tabelle dei preventivi e dei consuntivi implementato in _Google Apps Script_, ha permesso di ridurre ulteriormente l'insorgenza di errori;
  - *PdQ*: l'insorgenza di errori nel Piano di Qualifica è dettata dall'inizio della sua stesura dallo sprint 9;
  - *AdR*: data la natura del periodo di RTB, l'Analisi dei Requisiti è tra i documenti più corposi e maggiormente soggetti a revisioni e modifiche. Inoltre, l'incremento dei numero di errori è dovuto non solo a revisioni interne ma anche a modifiche dettate da revisioni esterne con i professori;
  - *Glossario*: il Glossario è stato soggetto a relativamente poche modifiche; la maggior parte degli errori è stata riscontrata inizialmente.
- *Documentazione interna*:
  - *NdP*: l'adozione dello standard ISO/IEC 12207:2017 ha portato con sè anche un grado di complessità maggiore nella stesura del documento, il quale è aumentato di dimensione e complessità. La maggior parte degli errori è pertanto riscontrabile nel periodo di maggiore stesura, per poi ridursi quando le sezioni del documento inerenti e utili al periodo sono state redatte;
  - *Analisi dei Rischi*: la stesura del documento di Analisi dei Rischi non è stata caratterizzata da un numero elevato di errori.

=== Miglioramento
==== Metriche soddisfatte
#figure(
  cetz.canvas({
    import cetz.plot

    let Metrics_points(offset: 0) = ((4,7/9*100), (5,8/9*100), (6, 7/9*100), (7, 8/9*100), (8, 6/9*100), (9, 8/9*100), (10, 7/9*100), (11, 6/9*100), (12, 6/9*100), (13, 6/9*100)).map(((x,y)) => {(x,y + offset * 100)})

    plot.plot(size: (12, 6), {
    plot.add(Metrics_points(offset: 0), line: "linear", label: "% Metriche soddisfatte", mark: "triangle", style: (stroke: (paint: red)))
    plot.add-hline(75, label: "Limite accettabile" , style: (stroke: (paint: red, dash: "dotted")))
    plot.add-hline(100, label: "Limite ottimale" , style: (stroke: (paint: green, dash: "dotted")))
    plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
    },
    y-max: 110,
    y-min: 50,
    x-max: 21,
    x-min: 4,
    x-tick-step: 1,
    y-tick-step: 5,
    x-label: "Sprint",
    y-label: "% Metriche soddisfatte",
    )
  }),
  caption: "Andamento percentuale metriche soddisfatte"
)

*RTB*: La percentuale di metriche soddisfatte risulta per la maggior parte degli sprint superiore alla soglia di accettabilità del 75%. I periodi in cui tale soglia non è stata raggiunta sono gli sprint 8, 11, 12 e 13 in quanto:
- Sprint 8: periodo dal 26/12/2023 al 02/01/2024, caratterizzato da festività natalizie e di fine anno;
- Sprint 11, 12, 13: periodo dal 15/01/2024 al 05/02/2024, caratterizzato dalla sessione d'esami.