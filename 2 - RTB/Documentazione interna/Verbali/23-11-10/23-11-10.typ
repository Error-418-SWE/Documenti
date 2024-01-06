#import "/template.typ": *

#show: project.with(
  date: "10/11/23",
  subTitle: "Meeting di retrospettiva, indicazioni per la settimana a venire",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),
  timeStart: "14:00",
  timeEnd: "15:00",
);

= Ordine del giorno
- Retrospettiva sullo sprint terminato;
- Divisione dei ruoli e formazione sottogruppi di lavoro;
- Organizzazione attività da svolgere.


== Retrospettiva

  In questo primo meeting di retrospettiva sono state analizzate le attività svolte dal gruppo durante la settimana e, in modo particolare, sono state discusse le nuove automazioni implementate con Github Actions (per la compilazione ed il caricamento automatico in repository e nel sito web dei file legati alla documentazione con i relativi changelog).
  \ Si è discusso del cambiamento attuato sulle tecnologie di markup per la stesura dei documenti, passando da LaTeX a Typst, strumento che risulta più comodo e immediato da usare.\
  È stato analizzato il diario di bordo che verrà esposto lunedì 13 novembre, in particolar modo riguardo le difficoltà riscontrate.\ Nel fine settimana è importante che ciascun membro del gruppo pensi ad eventuali domande da aggiungere.

== Divisione ruoli
  I ruoli all'interno del gruppo e le mansioni future sono state assegnate più specificatamente: \
   - Antonio è responsabile, pertanto lunedì esporrà il diario di bordo;
   - Alessio è verificatore;
   - Silvio, Giovanni e Riccardo sono amministratori;
   - Mattia e Rosario sono analisti.

  Il gruppo è stato inoltre suddiviso in tre sottogruppi: \

   - tre membri del gruppo si impegneranno per implementare ulteriormente le automazioni e sistemare il repository;
   - due membri del gruppo si concentreranno sull'Analisi dei Requisiti;
   - due membri del gruppo miglioreranno la nostra analisi delle ore/ruoli in luce del giudizio del professor Vardanega il quale ha ritenuto il costo del progetto eccessivo.


= Azioni da intraprendere
  - Inviare nuova mail al Proponente, poichè non si è ricevuta una risposta a quella precedente;
  - Proseguire il lavoro relativo all'Analisi dei Requisiti cosicché, la prossima settimana, si potrà chiedere al professor Cardin consigli e delucidazioni sulla direzione data dal gruppo al lavoro;
  - Identificare le features da implementare per la futura realizzazione del PoC;
  - Iniziare lo studio e la sperimentazione delle tecnologie correlate necessarie allo sviluppo del PoC.
  