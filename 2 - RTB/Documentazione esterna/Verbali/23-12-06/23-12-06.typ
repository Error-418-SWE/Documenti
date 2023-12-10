#import "/template.typ": *

//change title
#show: project.with(
  date: "06/12/23",
  subTitle: "",
  docType: "verbale",
  externalParticipants : (
    (name: "Matteo Bassani", role: "Referente aziendale"),
  ), // Rimuovere se non ci sono partecipanti esterni
  authors: (
    "Todesco Mattia",
  ),
  reviewers: (
    "Nardo Silvio",
  ),
  timeStart: "16:00",
  timeEnd: "16:40",
);

= Ordine del giorno
- discussione sulle tecnologie implementate e da implementare;
- dimostrazioni tecniche tramite screen sharing dei PoC A e B;
- chiarimenti tecnici sull'implementazione dei PoC;
- discussione eventuale prossimo meeting.

== Tecnologie Implementate
Sono state presentate al Proponente le tecnologie attualmente implementate, e precedentemente discusse con lo stesso, e sono stati dati riferimenti per quanto riguarda le tecnologie ancora da implementare:
- fatte: Three.js, MySQL;
- da fare: Docker, Next.js.

== Dimostrazioni Tecniche dei PoC A e B
Sono stati presentati al Proponente due PoC denominati A e B con le seguenti caratteristiche:

- PoC A:
  - funzionalità implementate:
        creazione, eliminazione e spostamento di scaffali. UI nativa Three.js con possibilità di definire dimensioni e precisione della "scacchiera";

  - requisiti minimi: zoom in/out e rotazione(rotazione su tre assi opzionale).

Non sono ancora presenti bin.

- PoC B:
  - funzionalità implementate:
    - creazione di un magazzino tramite file svg;
    - possibilità di creazione manuale specificando le dimensioni del magazzino;
    - ipotesi integrazione con database tramite Express come middleware.
    
  - valutazioni proponente:
    - una variazione proposta dal referente aziendale è quella di mantenere l'area del magazzino come implementata nel PoC A, e adattare il caricamento del file svg alle dimensioni di default.

== Chiarimenti tecnici sull'implementazione dei PoC
A seguito del confronto col Proponente, il gruppo è giunto alle seguenti conclusioni:
- si ritiene necessario trovare un compromesso tra precaricare l'intero database nel programma all'interno di una struttura dati e mantenere una continua comunicazione tra applicazione e database;
- la definizione delle altezze dopo il caricamento del file "svg" può essere implementata (desiderabile) tramite trascinamento verso l'alto;
- si ritiene desiderabile implementare la rotazione degli scaffali con angoli diversi da 90°.

== Discussione eventuale prossimo meeting
Con l'avvicinarsi delle vacanze di natale e della conseguente pausa delle attività dell'azienda, il Proponente ha proposto, a discrezione del gruppo, un ultimo incontro per quanto riguarda il 2023.  

