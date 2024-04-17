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
  showImagesIndex: true,
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
    caption: "Tabella metrica " + data.sigla + " (" + data.nome + ")"
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

#let metricheProcessi = json("./metriche/processi.json")
== Processi primari - Fornitura
#metricsTablesGenerator(metricheProcessi.fornitura)

== Processi di supporto - Documentazione
#metricsTablesGenerator(metricheProcessi.documentazione)

== Processi di supporto - Miglioramento
#metricsTablesGenerator(metricheProcessi.miglioramento)

= Qualità di prodotto
La qualità di prodotto mira a garantire non solo che il prodotto soddisfi i requisiti definiti nel documento #adr_v, ma anche che sia conforme agli standard di qualità definiti che il gruppo si impone, perseguendo obiettivi di efficienza, efficacia, usabilità, manutenibilità, affidabilità e portabilità.

#let metricheProdotto = json("./metriche/prodotto.json")
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
  table-json(json("./test/unitTest.json")),
  caption: "Tabella unit test"
)

\
== Test di integrazione
La suite di test di integrazione ha lo scopo di verificare che i diversi componenti del sistema si integrino correttamente, mirando ad individuare eventuali errori durante l'interazione tra le diverse unità software.

I test di integrazione sono stati implementati mediante l'utilizzo del framework Jest.
#figure(
  table-json(json("./test/integrationTest.json")),
  caption: "Tabella integration test"
)

\
== Test di sistema
La suite di test di sistema ha lo scopo di verificare che il sistema soddisfi i requisiti definiti nel documento #adr_v. L'implementazione di test automatici per la parte interattiva del prodotto e per l'ambiente tridimensionale è stata ritenuta eccessivamente complessa in termini di tempo e risorse valutando l'inesperienza del gruppo. Non risultava però ragionevole rinunciare a questa tipologia di test, pertanto si è deciso di svolgerli manualmente.

#figure(
  table-json(json("./test/systemTest.json")),
  caption: "Tabella test di sistema"
)

\
== Test di accettazione
La suite di test di accettazione ha lo scopo di verificare che il prodotto soddisfi quanto atteso dal Proponente. Tali test sono stati svolti manualmente in occasione dei regolari meeting esterni tenuti con il Proponente aziendale.


#figure(
  table-json(json("./test/acceptanceTest.json")),
  caption: "Tabella test di accettazione"
)

\

= Cruscotto di valutazione della qualità

== Premessa
Come stabilito dal #pdp_v e dalle #ndp_v, il gruppo ha imposto Sprint della durata settimanale. Nel primo Sprint si è confermato l'utilizzo dell'ITS Jira come strumento di tracciamento, ma per comprenderne a fondo le meccaniche e il corretto utilizzo, sono stati necessari i seguenti 4 Sprint. Nel corso di questo periodo, sono state apportate modifiche di configurazione, anche consapevolmente non retrocompatibili, che hanno introdotto eterogeneità nei dati riportati dall'ITS.
Per questo motivo, i dati utili al corretto calcolo delle metriche sono disponibili dal quinto Sprint, iniziato il 04/12/2023.

== Qualità di processo - Fornitura

#let arrayToPointCoordinate(array) = {
  let i = 0;
  let result = ();
  for value in array {
    result.insert(i, (i + 4, value));
    i += 1;
  }
  return result.map(((x,y)) => {(x,y)})
}

#let graphFromJson(jsonGraphParams) = {
  return figure(
    cetz.canvas({
      import cetz.plot

      plot.plot(size: (12, 7), {
        for line in jsonGraphParams.lines{
          plot.add(arrayToPointCoordinate(line.valori), line: line.type, label: line.label, mark: line.marker, style: (stroke: (paint: eval(line.color))));
        }
        for hline in jsonGraphParams.hlines{
          plot.add-hline(hline.valore, label: hline.label, style: (stroke: (paint: eval(hline.color, mode: "code"), dash: "dotted")));
        }
        for vline in jsonGraphParams.vlines{
          plot.add-vline(vline.valore, label: vline.label, style: (stroke: (paint: eval(vline.color, mode: "code"), dash: "dotted")));
        }
        plot.add-vline(13, label: "RTB", style: (stroke: (paint: black, dash: "dotted")))
        plot.add-vline(24, label: "PB" , style: (stroke: (paint: red, dash: "dotted")))
      },
      y-max: jsonGraphParams.y-max,
      y-min: jsonGraphParams.y-min,
      x-max: 25,
      x-min: 4,
      x-tick-step: 1,
      y-tick-step: jsonGraphParams.y-tick-step,
      x-label: "Sprint",
      y-label: jsonGraphParams.y-label,
      )
    }),
    caption: jsonGraphParams.caption

  )
}

#let cruscotto = json("./cruscotto/cruscotto.json");

=== Rapporto tra PPV, PAC e PEV

#graphFromJson(cruscotto.PPV-PAC-PEV)

*RTB*: #eval(cruscotto.PPV-PAC-PEV.RTB, mode: "markup")

*PB*: #eval(cruscotto.PPV-PAC-PEV.PB, mode: "markup")

\
\
=== Cost Performance Index CPI

#graphFromJson(cruscotto.CPI)

*RTB*: #eval(cruscotto.CPI.RTB, mode: "markup");

*PB*: #eval(cruscotto.CPI.PB, mode: "markup");

\
\
=== Rapporto tra BAC e EAC

#graphFromJson(cruscotto.BAC-EAC)

*RTB*: #eval(cruscotto.BAC-EAC.RTB, mode: "markup");

*PB*: #eval(cruscotto.BAC-EAC.PB, mode: "markup");

\
\
== Qualità di processo - Documentazione
=== Errori ortografici

*Documentazione esterna*

#graphFromJson(cruscotto.EO-Esterna)

*Documentazione interna*

#graphFromJson(cruscotto.EO-Interna)

*RTB*: #eval(cruscotto.EO-Interna.RTB, mode: "markup");

*PB*: #eval(cruscotto.EO-Interna.PB, mode: "markup");

\
\
== Qualità di processo - Miglioramento
=== Metriche soddisfatte

#graphFromJson(cruscotto.MS)

*RTB*: #eval(cruscotto.MS.RTB, mode: "markup");

*PB*: #eval(cruscotto.MS.PB, mode: "markup");

\
\
== Qualità di prodotto - Efficacia
=== Copertura requisiti obbligatori

#graphFromJson(cruscotto.MRC)

*PB*: #eval(cruscotto.MRC.PB, mode: "markup");

\
\
=== Copertura requisiti desiderabili

#graphFromJson(cruscotto.DRC)

*PB*: #eval(cruscotto.DRC.PB, mode: "markup");

\
\
=== Copertura requisiti opzionali

#graphFromJson(cruscotto.ORC)

*PB*: #eval(cruscotto.ORC.PB, mode: "markup");

\
\
== Qualità di prodotto - Affidabilità
=== Code coverage

#graphFromJson(cruscotto.CCV)

*PB*: #eval(cruscotto.CCV.PB, mode: "markup");

\
\
=== Branch coverage

#graphFromJson(cruscotto.BCV)

*PB*: #eval(cruscotto.BCV.PB, mode: "markup");

\
\
=== Failure definisce

#graphFromJson(cruscotto.FD)

*PB*: #eval(cruscotto.FD.PB, mode: "markup");


