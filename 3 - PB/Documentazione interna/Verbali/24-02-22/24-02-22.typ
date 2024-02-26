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

=== Riflessioni sul feedback ricevuto riguardo al testing dell'applicazione

Il gruppo ha esaminato le osservazioni del Proponente relative ai metodi e ai software di testing suggeriti.
Come risultato di questa valutazione, è stata presa la decisione di focalizzarsi temporaneamente sullo unit testing.
La scelta di implementare le altre forme di testing proposte (end-to-end e integration) sarà valutata durante lo svolgimento dei lavori.

=== Riflessioni sul feedback ricevuto riguardo al deploy dell'applicazione

Il Proponente ha valutato positivamente la scelta delle modalità di deploy dell'applicazione, con particolare apprezzamento per i meccanismi di Continous Integration e Continous Delivery proposti.
Il gruppo ha quindi deciso di approvare il percorso scelto e proseguire con l'implementazione.

=== Predisposizione modifiche necessarie al diagramma ER

Il gruppo ha esaminato il feedback ricevuto sulla modifica del diagramma ER in base alle nuove direttive del Proponente.
Di conseguenza, è stata presa la decisione di pianificare la revisione del diagramma ER modificato entro il meeting di retrospettiva del 25/02/24.

== To do

Il gruppo ha fatto il punto sulla situazione dello sprint in corso, segnalando un andamento positivo e rimanendo quindi fiducioso sull'andamento dei lavori.
In particolare le task scaturite dall'esito di questo meeting riguardano:

+ aggiornamento dello schema ER del database a seguito del feedback del Proponente in particolare:

  - rimuovere attributo altezza da scaffale perchè derivabile;
  - rimuovere generalizzazione posizione;
  - aggiungere attributi coordinate X e Y allo scaffale;
  - aggiungere possibilità di avere bin di larghezza diversa sullo stesso ripiano;

+ definire codice identificativo bin sulla base dell'esempio fornito dal proponente.