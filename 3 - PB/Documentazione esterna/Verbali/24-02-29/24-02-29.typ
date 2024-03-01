#import "/template.typ": *

#show: project.with(
  date: "29/02/24",
  subTitle: "Aggiornamento sullo stato dei lavori",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  externalParticipants : (
    (name: "Bassani Matteo", role: "Referente aziendale"),
  ),
  timeStart: "16:15",
  timeEnd: "17:10",
  location: "Zoom",
);

= Ordine del giorno

- ER;
- Mock-up;
- Architettura e design;
- Meeting futuri.

== ER

È stato mostrato lo schema ER del database di supporto, modificato secondo le considerazioni fatte nell'ultimo meeting (22/02/2024).

Gli attributi di dettaglio dell'entità `Prodotto`, quali `peso`, `larghezza`, `profondità` e `altezza`, sono stati ritenuti dal Proponente come non necessari per richiedere lo spostamento di un prodotto, e quindi da non inviare alle API.

È stata confermata dal Proponente l'idea di avere un'entità `Zona` per permettere una gestione univoca del bin sullo scaffale e a terra: quest'ultimo sarà considerato come appartenente a uno scaffale avente un solo ripiano a livello zero.

== Mock-up

È stato mostrato al Proponente il mock-up realizzato, il quale è servito per illustrate e discutere alcune proprietà del MVP, in particolare:

- è stata discussa la scelta di poter inserire la lunghezza in metri del lato maggiore del magazzino per lo scaling dell'ambiente a partire da un SVG. Questa scelta è stata approvata dal proponente, evidenziando comunque la necessità di poter ridimensionare l'ambiente e scalare tutti gli elementi del piano di conseguenza;
- è stata confermata l'idea di notificare l'utente della presa in carico dell'operazione di spostamento da parte del sistema con una notifica toast;
- è stata confermata l'idea di introdurre la possibilità di visualizzare tutti gli spostamenti effettuati dell'utente nella sessione corrente;
- è stata rielaborata la condizione per cui uno scaffale si possa eliminare solo se vuoto. Viene avanzata dal Proponente la possibilità che uno scaffale sia sempre eliminabile anche quando non vuoto. I prodotti contenuti nello scaffale vengono quindi visualizzati come "non assegnati" nell'apposita lista. L'utente ha quindi la possibilità di assegnarli ad altri bin vuoti;
- con il Proponente è stata concordata la possibilità di modificare gli scaffali anche quando non vuoti nei seguenti casi:
  - l'utente vuole aumentare le dimensioni di uno scaffale;
  - l'utente vuole diminuire le dimensioni di uno scaffale e le modifiche apportate non comportano l'eliminazione di bin pieni (requisito desiderabile).
- è stata rifiutata l'idea di avere dimensioni e numero di bin diversi per ogni ripiano dello scaffale in quanto non corrispondente a una situazione realistica. Lo scaffale deve seguire una logica colonnare, di conseguenza devo avere un numero di colonne uguale in ogni ripiano, ognuna con larghezza omogenea. Non è possibile quindi avere in due ripiani dello stesso scaffale lo stesso numero di colonne ma con dimensioni che variano da piano a piano.

== Architettura e design

Vengono esposti alcuni dei principali dubbi nati durante il meeting interno di design thinking tenutosi il 29/02/2024:

- *layer di architettura dedicato al database*: non è essenziale in quanto la presenza del database non è richiesta nel capitolato, e si tratta solamente di un supporto. Di conseguenza viene data libertà al gruppo nel considerarlo un vero e proprio layer;
- *definizione di classi e design pattern*: dato che ogni entità del progetto risulta essere solamente un aggregato di informazioni privo di comportamento, l'utilizzo di classi e design pattern non è ritenuto essenziale dal Proponente;
- *business logic*: le verifiche di fattibilità del posizionamento degli scaffali sono effettuate da Three.js, come visibile nel PoC; l'unica business logic individuabile è rappresentata dalle API, che nel contesto del capitolato sono simulate. Di conseguenza, anche dal Proponente non è stata individuata una vera e propria business logic da implementare nel prodotto.

== Meeting futuri

Il Proponente ha confermato la sua disponibilità per proseguire gli incontri a cadenza settimanale.
Il prossimo appuntamento è fissato per giovedì 07/03/2024 alle ore 16:00.