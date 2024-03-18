#import "/template.typ": *

#show: project.with(
  date: "17/03/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),

  timeStart: "15:00",
  timeEnd: "16:00",
);

= Ordine del giorno

- Valutazione del progresso generale;
- Analisi retrospettiva;
- Data di consegna;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>

Lo Sprint 19 ha visto buona parte dei task assegnati, sia riguardanti la documentazione che di codifica, completati nei tempi previsti. I task non conclusi risultano in corso d'opera e verranno portati in verifica nel prossimo Sprint.

Il giorno venerdì 15/03/2024 si è svolto il meeting esterno con il Proponente, come pianificato, per un aggiornamento riguardo lo stato dei lavori e gli avanzamenti nello sviluppo dell'MVP.

== #adr

Gli Use Case sono stati estesi e i requisiti aggiornati in modo da rispecchiare con maggiore precisione le richieste del Proponente.

== #ndp

Sono state redatte e verificate le sezioni "Validation process" e "Transition process".

== #pdp

È stato redatto il consuntivo di periodo relativo allo Sprint 18.

== #st

Sono state redatte le sezioni relative alla:
- struttura dell'applicazione WMS3;
- data pattern utilizzati;
- classi e componenti presenti in ciascun layer architetturale (con i corrispondenti diagrammi delle classi).

Inoltre è stata aggiunta la sezione riguardante l'installazione.

== #man

Sono stati eseguiti e verificati i task:
- individuazione della struttura del documento;
- redazione della sezione relativa ai requisiti;
- redazione della sezione relativa all'installazione;
- redazione della sezione relativa al supporto tecnico.

== Codifica

L'attività di codifica ha visto completati i lavori:
- realizzazione della creazione del piano rettangolare in Three.js;
- implementazione della lettura del file SVG;
- implementazione dell'elemento `orderItem`;
- implementazione del pulsante "reimposta" nel Settings Panel;
- implementazione della creazione di una zona;
- implementazione della modifica di una zona;
- implementazione dell'eliminazione di una zona;
- rimozione del pulsante "sincronizzazione" da Order Panel;
- implementazione del pulsante "sincronizzazione" in Settings Panel;
- implementazione del componente `productItemDetails`;
- implementazione `productItem` per il Product Panel;
- implementazione dei campi di modifica delle dimensioni della planimetria in Settings Panel;
- implementazione di una simulazione delle API per lo spostamento dei prodotti;
- implementazione test per le Server Actions prodotte.


= Analisi retrospettiva

Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq\:
#TODO

Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>

Il gruppo ed il Proponente si ritengono soddisfatti dell'andamento dei lavori e dei progressi ottenuti.

Le review delle pull request sono avvenute con precisione e in tempi brevi.

== Improvements <improvements>

=== Criticità evidenziate

*P01*: gli avanzamenti dei documenti #pdp e #pdq sono stati minori delle aspettative.

=== Soluzioni predisposte

#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Criticità affrontate],
      [R1], [Migliore ridistribuzione dei task], [P01]
    )
)

= Data di consegna

Il gruppo ha discusso l'avvicinarsi della data di consegna del progetto e ritiene importante il mantenimento dello stesso livello di intensità degli Sprint precedenti.
A seguito del posticipo della data di consegna comunicata dal gruppo durante lo scorso diario di bordo, è stato prefissato il giorno 26/03/2024 come massimo per la presentazione della candidatura alla PB.

= Pianificazione <pianificazione>

#TODO
