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


#set table(align: center + horizon)

#let singleTable(data) = {
  return figure(
     table(
      align: center + horizon,
      columns: (0.5fr, 0.5fr, 1.5fr, 0.75fr, 1fr),
      rows: (auto, 45pt),
      [Codice], [Metrica], [formula], [Soglia ottimale], [Soglia accettabile],
      data.codice, data.sigla, eval(data.formula, mode: "markup"), eval(data.sogliaOttimale, mode: "markup"), eval(data.sogliaAccettabile, mode: "markup")
    ),
    caption: "Tabella metrica " + data.sigla
  )
}

#let nameAndDescriptionList(params) = {
  let result = "";

  result += "Dati: \n";
  for param in params {
    let delimeter = ";"
    if(param == params.last()){ delimeter = "."}
    result += eval("- " + param.nome + ": " + param.descrizione + delimeter , mode: "markup");
  }

  return result;
}

#let extensionStructure(data) = {
  let result = "";

  result += eval("*" + data.codice + " - " + data.sigla + " " + data.nome + "*\\", mode: "markup");
  result += eval(data.descrizione, mode: "markup");
  if data.parametri.len() > 0 {
    result += nameAndDescriptionList(data.parametri);
  }
  result += singleTable(data);
  result += "\n";

  return result;
}

#let metricsTablesGenerator(allJsonData) = {
  let result = "";
  for data in allJsonData {
    result += eval("=== " + data.codice + " - " + data.sigla + " " + data.nome, mode: "markup")
    result += eval("*Descrizione*: \\ " + data.descrizione, mode: "markup")

    result += eval("\\ \\ *Note aggiuntive:* \\ " + data.noteAggiuntive + " \\ \\", mode: "markup")

    if(data.estensioni.len() == 0){
      if(data.parametri.len() > 0){
        result += nameAndDescriptionList(data.parametri);
      }
      result += singleTable(data);
    }else{
      for extension in data.estensioni{
        result += extensionStructure(extension)
      }
    }
    result += "\n"
  }

  return result;
}


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
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

- Documento #ndp_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/3%20-%20PB/Documentazione%20interna/Norme%20di%20Progetto_v" + ndp_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

- Documento #pdp_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/3%20-%20PB/Documentazione%20esterna/Piano%20di%20Progetto_v" + pdp_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

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

- _Clean Code: A Handbook of Agile Software Craftsmanship_ di _Robert C. Martin_: \
  _#link("https://www.ibs.it/clean-code-handbook-of-agile-libro-inglese-robert-martin/e/9780132350884")_
  #lastVisitedOn(24, 02, 2024)


= Qualità di processo
La qualità di processo rappresenta un aspetto fondamentale per garantire l'efficacia e l'efficienza del lavoro svolto. Per garantire la qualità di processo, il gruppo si impegna a seguire le norme e le procedure definite nel documento #ndp_v.

#let metricheProcessi = json("metriche/processi.json")
== Processi primari - Fornitura
#metricsTablesGenerator(metricheProcessi.fornitura)

== Processi di supporto - Documentazione
#metricsTablesGenerator(metricheProcessi.documentazione)

== Processi di supporto - Miglioramento
#metricsTablesGenerator(metricheProcessi.miglioramento)

= Qualità di prodotto
La qualità di prodotto mira a garantire non solo che il prodotto soddisfi i requisiti definiti nel documento #adr_v, ma anche che sia conforme agli standard di qualità definiti che il gruppo si impone, perseguendo obiettivi di efficienza, efficacia, usabilità, manutenibilità, affidabilità e portabilità.

#let metricheProdotto = json("metriche/prodotto.json")
== Efficacia
#metricsTablesGenerator(metricheProdotto.efficacia)

== Efficienza
#metricsTablesGenerator(metricheProdotto.efficienza)

== Usabilità
#metricsTablesGenerator(metricheProdotto.usabilita)


== Manutenibilità
#metricsTablesGenerator(metricheProdotto.manutenibilita)

== Affidabilità
#metricsTablesGenerator(metricheProdotto.affidabilita)

== Portabilità
#metricsTablesGenerator(metricheProdotto.portabilita)

= Test

In questa sezione sono elencati i test eseguiti sul prodotto che, come riportato in #ndp_v, possono essere:
- *test di unità*: per testare una singola unità software;
- *test di integrazione*: per verificare la corretta integrazione delle parti del sistema.
- *test di sistema*: per verificare che il sistema soddisfi i requisiti definiti nel documento #adr_v;
- *test di accettazione*: svolti assieme al Propoente, per verificare che il prodotto soddisfi quanto atteso.

Ad ogni test viene associato un codice definito come segue:
#align(`[Tipologia]-[Identificativo numerico]`, center)
*Tipologia* indica il tipo di test:
- `UT`: Unit test;
- `IT`: Integration test;
- `ST`: System test;
- `AT`: Acceptance test.

*Identificativo numerico* indica la sequenza numerica identificativa del test:
- *Test di unità* e *Test di integrazione*: l'identificativo numerico è così composto:
  - [`Numero suite`].[`Numero test`].
- *Test di sistema* e *Test di accettazione*: l'identificativo numerico è così composto:
  - [`Numero test`] è il codice del requisito associato al test.

Ad ogni test è associato uno stato che può essere:
- `P`: positivo, il test ha dato esito positivo;
- `N`: negativo, il test ha dato esito negativo;
- `NI`: non implementato.

#let table-json(data) = {
  let keys = data.at(0).keys()
  table(
    columns: keys.len(),
    ..keys,
    ..data.map(
      row => keys.map(
        key => {
          return eval(row.at(key, default: [n/a]), mode: "markup")}
      )
    ).flatten()
  )
}

\
== Test di unità
La suite di test di unità ha lo scopo di verificare il corretto funzionamento delle singole unità software. Il termine "unità" si riferisce al più piccolo componente dotato di comportamento autonomo, che può dunque essere singolarmente testato.

I test di unità sono stati implementati mediante l'utilizzo del framework Jest.

#show figure: set block(breakable: true)
#figure(
  table-json(json("unitTest.json")),
  caption: "Tabella unit test"
)

\
== Test di integrazione
La suite di test di integrazione ha lo scopo di verificare che i diversi componenti del sistema si integrino correttamente, mirando ad individuare eventuali errori durante l'interazione tra le diverse unità software.

I test di integrazione sono stati implementati mediante l'utilizzo del framework Jest.
#figure(
  table-json(json("integrationTest.json")),
  caption: "Tabella integration test"
)

\
== Test di sistema
La suite di test di sistema ha lo scopo di verificare che il sistema soddisfi i requisiti definiti nel documento #adr_v. L'implementazione di test automatici per la parte interattiva del prodotto e per l'ambiente tridimensionale è stata ritenuta eccessivamente complessa in termini di tempo e risorse valutando l'inesperienza del gruppo. Non risultava però ragionevole rinunciare a questa tipologia di test, pertanto si è deciso di svolgerli manualmente.

#figure(
  table-json(json("systemTest.json")),
  caption: "Tabella test di sistema"
)

\
== Test di accettazione
La suite di test di accettazione ha lo scopo di verificare che il prodotto soddisfi quanto atteso dal Proponente. Tali test sono stati svolti manualmente in occasione dei regolari meeting esterni tenuti con il Proponente aziendale.


#figure(
  table-json(json("acceptanceTest.json")),
  caption: "Tabella test di accettazione"
)

#pagebreak()

= Valutazione della qualità

== Premessa
Come stabilito dal #pdp_v e dalle #ndp_v, il gruppo ha imposto Sprint della durata settimanale. Nel primo Sprint si è confermato l'utilizzo dell'ITS Jira come strumento di tracciamento, ma per comprenderne a fondo le meccaniche e il corretto utilizzo, sono stati necessari i seguenti 4 Sprint. Nel corso di questo periodo, sono state apportate modifiche di configurazione, anche consapevolmente non retrocompatibili, che hanno introdotto eterogeneità nei dati riportati dall'ITS.
Per questo motivo, i dati utili al corretto calcolo delle metriche sono disponibili dal quinto Sprint, iniziato il 04/12/2023.

== Processi primari
=== Fornitura
==== Rapporto tra PPV, PAC e PEV
#figure(
  cetz.canvas({
    import cetz.plot
    let EV_points(offset: 0) = ((4,2040), (5,2655), (6,3111.85), (7,3528.52), (8,3948.14), (9, 4573.14), (10, 4848.14), (11, 5084.39), (12, 5178.90), (13, 5224.62), (14, 5819.62), (15, 6442.69), (16, 7735)).map(((x,y)) => {(x,y + offset * 1.5)})

    let AC_point(offset: 1) = ((4,2075), (5,2620), (6,3140), (7,3515), (8,4090), (9, 4520), (10, 4875), (11, 5105), (12, 5285), (13, 5395), (14, 5990), (15, 6560), (16, 7610)).map(((x,y)) => {(x,y + offset * 1.5)})

    let PV_point(offset: 1) = ((4,2040), (5,2655), (6,3190), (7,3690), (8,4200), (9, 4825), (10, 5155), (11, 5470), (12, 5625), (13, 5705), (14, 6300), (15, 6840), (16, 7890)).map(((x,y)) => {(x,y + offset * 1.5)})

    plot.plot(size: (12, 6), {
    plot.add(PV_point(offset: 1), line: "spline", label: "PPV")
    plot.add(AC_point(offset: 1), line: "spline", label: "PAC .", style: (stroke: (paint: red)))
    plot.add(EV_points(offset: 0), line: "spline", label: "PEV .", style: (stroke: (paint: green)))
    plot.add-hline(13055, label: "BAC" , style: (stroke: (paint: blue, dash: "dotted")))
    plot.add-vline(13, label: "RTB ", style: (stroke: (paint: black, dash: "dotted")))
    plot.add-vline(20, label: "PB " , style: (stroke: (paint: red, dash: "dotted")))
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
*RTB*: In questo primo periodo, il gruppo è consapevole che il valore pianificato *PPV* risulti superiore a quanto prodotto nell'effettivo indicato dal *PEV*. Nonostante ciò, il gruppo è sempre riuscito a mantenere il valore del *PEV* non solo in crescita, ma anche superiore all'80% del *PPV*.

#pagebreak()

==== Cost Performance Index CPI
#figure(
  cetz.canvas({
    import cetz.plot
    let CPI_points(offset: 0) = ((4,0.98), (5,1.01), (6,0.99), (7,1.00), (8,0.97), (9, 1.01), (10, 0.99), (11, 1.00), (12, 0.98), (13, 0.97), (14, 0.97), (15, 0.98), (16, 1.02)).map(((x,y)) => {(x,y + offset * 1.5)})

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
    let EAC_points(offset: 0) = ((4,13278.98), (5,12882.90), (6, 13173.08), (7,   13004.98), (8, 13524.07), (9, 12903.30), (10, 13127.33), (11, 13107.92), (12, 13322.45), (13, 13480.74), (14, 13437.22), (15, 13292.70), (16, 12844.02)).map(((x,y)) => {(x,y + offset * 100)})

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

    let PdP_points(offset: 0) = ((4,1), (5,2), (6, 2), (7, 1), (8, 0), (9, 0), (10, 1), (11, 0), (12, 0), (13, 0), (14, 1), (15, 0), (16, 2)).map(((x,y)) => {(x,y + offset * 100)})

    let PdQ_points(offset: 0) = ((4,0), (5,0), (6, 0), (7, 0), (8, 0), (9, 2), (10, 3), (11, 1), (12, 0), (13, 0), (14, 0), (15, 0), (16, 1)).map(((x,y)) => {(x,y + offset * 100)})

    let AdR_points(offset: 0) = ((4,4), (5,4), (6, 2), (7, 2), (8, 3), (9, 1), (10, 0), (11, 0), (12, 0), (13, 0), (14, 0), (15, 1), (16, 0)).map(((x,y)) => {(x,y + offset * 100)})

    let GLS_points(offset: 2) = ((4,3), (5,2), (6, 0), (7, 0), (8, 2), (9, 0), (10, 1), (11, 0), (12, 0), (13, 0), (14, 0), (15, 0), (16, 0)).map(((x,y)) => {(x,y + offset * 100)})

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

    let NdP_points(offset: 0) = ((4,2), (5,3), (6, 4), (7, 3), (8, 3), (9, 2), (10, 1), (11, 1), (12, 0), (13, 0), (14, 0), (15, 1), (16, 2)).map(((x,y)) => {(x,y + offset * 100)})

    plot.plot(size: (12, 6), {
    plot.add(NdP_points(offset: 0), line: "linear", label: "NdP", mark: "o")
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
  - *PdQ*: l'insorgenza di errori nel #pdq è dettata dall'inizio della sua stesura dallo Sprint 9;
  - *AdR*: data la natura del periodo di RTB, l'#adr è tra i documenti più corposi e maggiormente soggetti a revisioni e modifiche. Inoltre, l'incremento dei numero di errori è dovuto non solo a revisioni interne ma anche a modifiche dettate da revisioni esterne con i professori;
  - *Glossario*: il #glo è stato soggetto a relativamente poche modifiche; la maggior parte degli errori è stata riscontrata inizialmente.
- *Documentazione interna*:
  - *NdP*: l'adozione dello standard ISO/IEC 12207:2017 ha portato con sè anche un grado di complessità maggiore nella stesura del documento, il quale è aumentato di dimensione e complessità. La maggior parte degli errori è pertanto riscontrabile nel periodo di maggiore stesura, per poi ridursi quando le sezioni del documento inerenti e utili al periodo sono state redatte;
  - *Analisi dei Rischi*: la stesura del documento di #ris non è stata caratterizzata da un numero elevato di errori.

=== Miglioramento
==== Metriche soddisfatte
#figure(
  cetz.canvas({
    import cetz.plot

    let Metrics_points(offset: 0) = ((4,7/9*100), (5,8/9*100), (6, 7/9*100), (7, 8/9*100), (8, 6/9*100), (9, 8/9*100), (10, 7/9*100), (11, 6/9*100), (12, 6/9*100), (13, 6/9*100), (14, 8/9*100), (15, 7/9*100), (16, 8/9*100)).map(((x,y)) => {(x,y + offset * 100)})

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

*RTB*: La percentuale di metriche soddisfatte risulta per la maggior parte degli Sprint superiore alla soglia di accettabilità del 75%. I periodi in cui tale soglia non è stata raggiunta sono gli Sprint 8, 11, 12 e 13 in quanto:
- Sprint 8: periodo dal 26/12/2023 al 02/01/2024, caratterizzato da festività natalizie e di fine anno;
- Sprint 11, 12, 13: periodo dal 15/01/2024 al 05/02/2024, caratterizzato dalla sessione d'esami.