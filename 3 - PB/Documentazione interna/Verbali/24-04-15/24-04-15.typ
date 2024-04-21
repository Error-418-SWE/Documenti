#import "/template.typ": *

#show: project.with(
  date: "15/04/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),
  missingMembers: (
    "Carraro Riccardo",
    "Gardin Giovanni",
  ),

  timeStart: "15:00",
  timeEnd: "15:30",
);

= Ordine del giorno

- Valutazione del progresso generale;
- Analisi retrospettiva;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>

Lo Sprint 23 si è soffermato sulla preparazione alla valutazione PB con il professor Cardin e alla revisione dei documenti.

Il giorno mercoledì 10/04/2024 si è svolto lo sportello di valutazione PB con il professor Cardin, il quale esito non ci è stato ad oggi comunicato.

Come previsto, le ore di lavoro svolte in questo sprint sono state minori rispetto agli sprint precedenti in quanto è ridotto il lavoro rimanente per completare il progetto.

== #ndp

Il documento è stato nuovamente revisionato dai capitolo 5.5 a 5.9.

== #pdq

Le tabelle relative agli unit test e agli integration test sono state separate.
Inoltre è stata redatta la sezione relativa ai test di sistema.

== #st

È stata aggiunta la sezione riguardante l'esecuzione del software e sono stati aggiornati i requisiti di sistema.

== #man

Le modifiche al documento sono state:

  - aggiunta della sezione riguardante la guida all'apertura della pagina atta all'utilizzo di WMS3;

  - rimozione della sezione "Supporto tecnico";

  - aggiornamento delle immagini presenti nel documento.


= Analisi retrospettiva

Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq\:

- CPI di progetto a 1.01, rappresenta un valore ottimale (dove l'ottimabilità è rappresentata da valori $>=1$);

- EAC diminuisce passando da € 12.992,10 a € 12.968,71 rientrando nel budget previsto;

- $"SEV" >= "SPV"$, come testimoniato anche dalla metrica CPI, che indica un avanzamento positivo del progetto.

\
Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>

Persiste una buona collaborazione tra i membri del gruppo e il ritmo di lavoro rimane soddisfaciente nonostante la sua preventivata riduzione.

== Improvements <improvements>

=== Criticità evidenziate

*P01*: Durante la valutazione PB il professor Cardin ha evidenziato delle criticità relativamente all'architettura del MVP.

=== Soluzioni predisposte

#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Criticità affrontate],
      [R1], [Analisi da parte del gruppo riguardo alle criticità espresse], [P01]
    )
)

= Pianificazione <pianificazione>

#let table-json(data) = {
  let keys = data.at(0).keys()
  table(
    align: left,
    columns: keys.len(),
    ..keys,
    ..data.map(
      row => keys.map(
        key => row.at(key, default: [n/a])
      )
    ).flatten()
  )
}
#show figure: set block(breakable: true)
#figure(caption: [Task pianificate per lo Sprint 23.],
  table-json(json("tasks.json"))
)
