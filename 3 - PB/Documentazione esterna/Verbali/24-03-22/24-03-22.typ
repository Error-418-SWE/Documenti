#import "/template.typ": *

#show: project.with(
  date: "22/03/24",
  subTitle: "Aggiornamento sullo stato dei lavori",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  reviewers: (
    "Gardin Giovanni",
  ),
  missingMembers: (
    "Todesco Mattia",
  ),
  externalParticipants : (
    (name: "Bassani Matteo", role: "Referente aziendale"),
    (name: "De Sio Domenico", role: "Referente aziendale"),
  ),
  timeStart: "16:00",
  timeEnd: "16:30",
  location: "Zoom",
);

= Ordine del giorno
- Presentazione MVP;
- Presentazione dei pattern per la ricerca;
- Lista dei bug;
- Pianificazione meeting futuri.

== Presentazione MVP

Sono state presentate al Proponente le funzionalità dell'MVP sviluppate dall'ultimo incontro, in particolare:

- configurazione dell'ambiente a partire da file SVG;
- caricamento da database della struttura e organizzazione delle zone nell'ambiente;
- ridimensionamento del piano.
- spostamento zone tramite _drag and drop_;
- spostamento prodotti tra bin tramite _drag and drop_;
- ispezione bin tramite doppio click;
- ispezione zone tramite doppio click;
- movimento della camera mediante tastiera (frecce direzionali o tasti W, A, S, D).

Il Proponente sono risultati soddisfatti delle funzionalità implementate.

Sono state inoltre illustrate le funzionalità che verranno implementate entro il prossimo incontro:

- *possibilità di muoversi all'interno dell'ambiente tramite tastiera durante il dragging di un prodotto*: se l'utente vuole spostare un bin in una zona non presente nell'inquadratura, potrà muovere la camera utilizzando la tastiera mentre mantiene il prodotto ancorato al cursore. Il Proponente approvano questa scelta;
- *collocamento di un prodotto dalla lista dei non collocati all'interno di un bin vuoto*: risulta difficile implementare il _drag and drop_ poiché ci si deve spostare da un elemento di UI all'ambiente Three.js. Il Proponente espongono la possibilità di implementare questa funzionalità all'interno del pannello di visualizzazione dei dettagli di un bin. Aprendo il pannello relativo ad un bin vuoto si può dare la possibilità di aggiungere un prodotto dalla lista tramite un tasto o un elemento simile.

== Presentazione dei pattern per la ricerca

Vengono illustrati al Proponente i pattern Factory e Strategy utilizzati per implementare la ricerca di prodotti e zone.

== Lista dei bug

Si concorda con il Proponente che nei prossimi giorni il gruppo verrà aggiornato sulla struttura della lista di bug da consegnare a termine del progetto, come richiesto dal capitolato.

== Pianificazione meeting futuri

Viene fissato il prossimo incontro per martedì 26/03/2024 ore 15:00, durante il quale verrà richiesta l'approvazione del prodotto come MVP.
