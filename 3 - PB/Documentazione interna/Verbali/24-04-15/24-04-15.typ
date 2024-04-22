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

Lo Sprint 23 si è soffermato sulla preparazione alla valutazione PB con il #cardin e alla revisione dei documenti.

Il giorno mercoledì 10/04/2024 si è svolto lo sportello di valutazione PB con il #cardin, il cui esito non è stato ad oggi comunicato.

Come previsto, le ore di lavoro svolte in questo Sprint sono state minori rispetto agli Sprint precedenti in quanto è ridotto il lavoro rimanente per completare il progetto.

== #ndp

Il documento è stato nuovamente revisionato dal capitolo 5.5 al 5.9.

== #pdq

Le tabelle relative agli unit test e agli integration test sono state separate.
Inoltre è stata redatta la sezione relativa ai test di sistema.

== #man

Sono state apportate le seguenti modifiche al documento:

  - aggiunta della sezione riguardante la guida all'apertura della pagina atta all'utilizzo di WMS3;

  - rimozione della sezione "Supporto tecnico";

  - aggiornamento delle immagini presenti nel documento.


= Analisi retrospettiva

Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq_v\:

- CPI di progetto a 1.01, rappresenta un valore ottimale in quanto $>=1$;

- EAC diminuisce passando da € 12.992,10 a € 12.968,71 rientrando nel budget previsto;

- $"SEV" >= "SPV"$, come testimoniato anche dalla metrica CPI, che indica un avanzamento positivo del progetto.

\
Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>

Persiste una buona collaborazione tra i membri del gruppo e il ritmo di lavoro rimane soddisfacente nonostante la sua preventivata riduzione.

== Improvements <improvements>

=== Criticità evidenziate

*P01*: Durante la valutazione PB il #cardin ha evidenziato delle criticità relativamente all'architettura del MVP.

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
#figure(caption: [Task pianificate per lo Sprint 24.],
  table-json(json("tasks.json"))
)
