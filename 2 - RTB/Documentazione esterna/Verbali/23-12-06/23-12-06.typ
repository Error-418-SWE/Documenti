#import "/template.typ": *

#show: project.with(
  date: "06/12/23",
  subTitle: "",
  docType: "verbale",
  externalParticipants : (
    (name: "Bassani Matteo", role: "Referente aziendale"),
  ),
  authors: (
    "Todesco Mattia",
  ),
  timeStart: "16:00",
  timeEnd: "16:40",
  location: "Zoom",
);

= Ordine del giorno
- Discussione sulle tecnologie implementate e da implementare;
- Dimostrazioni tecniche tramite screen sharing dei PoC realizzati;
- Chiarimenti tecnici sull'implementazione dei PoC;
- Discussione di un eventuale prossimo meeting.

== Tecnologie implementate
Sono state presentate al Proponente le tecnologie attualmente implementate e sono stati dati riferimenti per quanto riguarda le tecnologie ancora da implementare:
- implementate: Three.js, Express.js, MySQL;
- da implementare: Docker, Next.js.

== Dimostrazioni tecnologiche
Sono stati presentati al Proponente due PoC, denominati A e B.

=== PoC A
- Funzionalità implementate:
  - creazione degli scaffali, con dimensioni regolabili;
  - spostamento degli scaffali, con grid-snapping (basato su una scacchiera con passo regolabile);
  - eliminazione degli scaffali;
  - gestione delle collisioni tra scaffali;
  - UI nativa Three.js con possibilità di definire le dimensioni e il passo della "scacchiera" di snapping.

- Valutazione:
  - apprezzata la possibilità di effettuare _zoom in_ e _zoom out_ e di ruotare la vista sull'asse verticale;
  - il movimento della camera sui tre assi è ritenuto opzionale.

=== PoC B
- Funzionalità implementate:
  - creazione del piano dell'area di lavoro di un magazzino tramite file SVG;
  - possibilità di creazione manuale specificando le dimensioni del magazzino;
  - integrazione con database tramite Express.js come _middleware_.

- Valutazione:
  - una variazione proposta dal referente aziendale è quella di mantenere l'area del magazzino come implementata nel PoC A, e adattare il caricamento del file SVG alle dimensioni di default.

== Chiarimenti tecnici sull'implementazione dei PoC
A seguito del confronto con il Proponente, il gruppo è giunto alle seguenti conclusioni:
- si ritiene necessario trovare un compromesso tra precaricare l'intero database nel programma all'interno di una struttura dati e mantenere una continua comunicazione tra applicazione e database;
- la definizione delle altezze dopo il caricamento del file SVG può essere implementata (desiderabile) tramite trascinamento verso l'alto;
- si ritiene opzionale implementare la rotazione degli scaffali con angoli diversi da 90°.

== Pianificazione del prossimo meeting
Con l'avvicinarsi delle vacanze di Natale e della conseguente pausa delle attività dell'azienda, il Proponente ha dato disponibilità per un ultimo incontro sincrono prima della fine del 2023. Il gruppo, valutati i progressi, confermerà il meeting quanto prima.

Il Proponente ha comunque dato la propria disponibilità ad interloquire con il gruppo tramite e-mail anche durante la pausa natalizia.