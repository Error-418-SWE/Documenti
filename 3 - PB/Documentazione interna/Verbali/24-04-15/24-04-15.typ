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

#TODO

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

#TODO
