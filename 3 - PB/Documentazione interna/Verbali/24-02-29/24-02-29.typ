#import "/template.typ": *

#show: project.with(
  date: "29/02/24",
  subTitle: "Meeting post colloquio con Proponente",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  timeStart: "17:10",
  timeEnd: "17:25",
);

= Ordine del giorno

A seguito dell'incontro con il Proponente, il gruppo ha svolto un meeting interno riguardante:

- Considerazioni scaturite dal meeting esterno;
- Pianificazione.

== Considerazioni scaturite dal meeting esterno

Il gruppo:

- ha esaminato le osservazioni del Proponente riguardo lo schema ER e ha concordato sul considerarlo come definitivo;
- si è ritenuto soddisfatto del mock-up presentato e della discussione avuta con il Proponente, che ha portato a una rivalutazione di alcune funzionalità;
- ha esaminato le considerazioni fatte riguardanti architettura e design, e ritiene essenziale anche un riscontro da parte del #cardin, al quale sono stati esposti i dubbi via mail.

== Pianificazione

Il gruppo ha fatto il punto sulla situazione dello sprint in corso, segnalando un andamento positivo sull'andamento dei lavori.
In particolare le task scaturite dall'esito di questo meeting riguardano:

+ aggiornamento dell'#adr con le nuove considerazioni funzionali individuate, in particolare:
  - inserimento della lunghezza in metri del lato maggiore del magazzino per lo scaling dell'ambiente a partire da un SVG;
  - ridimensionare l'ambiente e conseguente scaling di tutti gli elementi del piano;
  - notificare l'utente della presa in carico dell'operazione di spostamento da parte del sistema con una notifica toast;
  - possibilità di visualizzare tutti gli spostamenti effettuati dall'utente nella sessione corrente;
  - possibilità che uno scaffale sia sempre eliminabile anche quando non vuoto:
    - i prodotti contenuti nello scaffale vengono visualizzati come "non assegnati" nell'apposita lista;
    - l'utente può assegnare tali prodotti ad altri bin vuoti.
  - possibilità di modificare gli scaffali anche quando non vuoti nei seguenti casi:
    - l'utente vuole aumentare le dimensioni di uno scaffale;
    - l'utente vuole diminuire le dimensioni di uno scaffale e le modifiche apportate non comportano l'eliminazione di bin pieni (requisito desiderabile).
  - uno scaffale deve avere un numero di colonne uguale in ogni ripiano, ognuna con larghezza omogenea.
+ implementazione delle modifiche apportate al diagramma ER al database.
