#import "/template.typ": *

#show: project.with(
  date: "07/03/24",
  subTitle: "Aggiornamento sullo stato dei lavori",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  externalParticipants : (
    (name: "Bassani Matteo", role: "Referente aziendale"),
  ),
  timeStart: "16:00",
  timeEnd: "16:40",
  location: "Zoom",
);

= Ordine del giorno

- ER;
- Aggiornamento sul colloquio con il #cardin\;
- Mock-up;
- MVP;
- Meeting futuri.

== ER

È stato mostrato lo schema ER del database di supporto, modificato secondo le considerazioni fatte nell'ultimo meeting (29/02/2024).

Il Proponente ha approvato tutte le modifiche apportate e si ritiene soddisfatto dello schema ER, che può quindi essere considerato come definitivo.

== Aggiornamento sul colloquio con il #cardin

Il Proponente è stato aggiornato sul colloquio tenuto con il #cardin in data 06/03/2024, in particolare riguardo la presenza di business logic nel capitolato.

== Mock-up

È stato mostrato al Proponente il mock-up aggiornato. Grazie ad esso vengono discusse le seguenti funzionalità:

- chiamata alle API RESTful;
- scaling della planimetria.

=== Chiamata alle API RESTful

Il gruppo ha previsto la chiamata alle API RESTful per qualsiasi movimentazione di prodotti. Viene invece avanzata dal Proponente la possibilità di chiamare le API solamente quando lo spostamento avviene da bin a bin, ed evitare la chiamata nel caso di collocamento di prodotti inizialmente privi di posizione.

=== Scaling della planimetria

Per quanto riguarda il ridimensionamento di planimetrie create manualmente viene sempre data la possibilità di aumentare le dimensioni del piano, mentre la riduzione potrà avvenire soltanto nel caso in cui non siano presenti scaffali.

Se la planimetria è creata a partire da un file SVG, questo verrà posizionato sul più piccolo rettangolo che riesca a contenerlo. Il ridimensionamento verrà limitato inferiormente dalle dimensioni del SVG, mentre l'aumento di dimensioni avverrà solamente per il rettangolo su cui è posizionato il file. In questo modo si può aggiungere spazio al magazzino senza deformare il modello SVG di base.

== MVP

Vengono mostrati al Proponente i primi avanzamenti del MVP, e si espongono i prossimi obiettivi nel suo sviluppo.

== Meeting futuri

Viene fissato il prossimo appuntamento per venerdì 15/03/2024 alle ore 14:00.
