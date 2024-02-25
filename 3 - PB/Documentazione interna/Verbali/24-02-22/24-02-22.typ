#import "/template.typ": *

#show: project.with(
  date: "22/02/24",
  subTitle: "Meeting post colloquio con Proponente",
  docType: "verbale",
  authors: (
    "Todesco Mattia",
  ),
  timeStart: "16:10",
  timeEnd: "16:25",
);

= Ordine del giorno

A seguito dell'incontro con il Proponente, il gruppo ha svolto un meeting interno riguardante:

- Considerazioni scaturite dal meeting esterno:

  - riflessioni sul feedback ricevuto riguardo al testing dell'applicazione;
  - riflessioni sul feedback ricevuto riguardo al deploy dell'applicazione;
  - predisposizione modifiche necessarie al diagramma ER;

- To do:
  - Norme di Progetto;
  - Piano di Progetto;
  - Analisi dei Requisiti.

== Considerazioni scaturite dal meeting esterno

=== riflessioni sul feedback ricevuto riguardo al testing dell'applicazione

Il gruppo ha esaminato le osservazioni del Proponente relative ai metodi e ai software di testing suggeriti.
Come risultato di questa valutazione, è stata presa la decisione di focalizzarsi temporaneamente sullo unit testing.
La scelta di implementare le altre forme di testing proposte (end-to-end e integration) sarà valutata durante lo svolgimento dei lavori.

=== riflessioni sul feedback ricevuto riguardo al deploy dell'applicazione

Il Proponente ha valutato positivamente la scelta delle modalità di deploy dell'applicazione, con particolare apprezzamento per i meccanismi di Continous Integration e Continous Delivery proposti.
Il gruppo ha quindi deciso di approvare il percorso scelto e proseguire con l'implementazione.

=== predisposizione modifiche necessarie al diagramma ER

Il gruppo ha esaminato il feedback ricevuto sulla modifica del diagramma ER in base alle nuove direttive del Proponente.
Di conseguenza, è stata presa la decisione di pianificare la revisione del diagramma ER modificato entro il meeting di retrospettiva del 25/02/24.

== To do

Il gruppo ha fatto il punto sulla situazione dello sprint in corso, segnalando un andamento positivo e rimanendo quindi fiducioso sull'andamento dei lavori.
In particolare le task che rimangono ancora da completare prima del meeting di retrospettiva del 25/02/24 riguardano:

+ Norme di Progetto:

  - descrivere le regole per il versionamento del software;
  - aggiungere Figma agli strumenti adottati.

+ Piano di Progetto:

  - estendere l'analisi dei rischi;
  - codificare rischi;
  - codificare metodi di risoluzione dei rischi;
  - redigere consuntivo di periodo 15;
  - redigere preventivo di periodo 16.

+ Chiedere feedback al #cardin riguardo le correzioni apportate all'Analisi dei Requisiti.