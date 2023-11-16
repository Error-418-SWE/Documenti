#import "/template.typ": *

#show: project.with(
  title:"Verbale esterno 15/11/2023",
  subTitle: "Inizio analisi dei requisiti", 
  docType: "verbale",
  partecipants: (
  (name: "Banzato Alessio", role: "Analista"),
  (name: "Carraro Riccardo", role: "Redattore"),
  (name: "Gardin Giovanni",  role: "Amministratore"),
  (name: "Nardo Silvio",   role: "Analista"),
  (name: "Oseliero Antonio",   role: "Responsabile"),
  (name: "Todesco Mattia",  role: "Verificatore"),
  (name: "Zaccone Rosario",  role: "Analista"),
  (name: "Matteo Bassani", role: "Referente aziendale")
  ),
  showIndex: false,
  oraInizio: "10:00",
  oraFine: "11:00",
);
#set text(font:"New Computer Modern")
#set align(left)
#show "link": word => text[#text(fill:blue, word)]

= Ordine del giorno
- Approfondimento specifiche del capitolato;

- Presentazione, mediante board Miro, delle domande raccolte dal team, proposte e mock up. Le domande si articolano in:
  - identificazione della tipologia di utente a cui il prodotto è destinato;
  - prime idee di user interface e user experience;
  - differenza di funzionalità tra applicativo desktop e mobile;
  - funzionalità desiderate;
  - API RESTful

- Conferme riguardo lo stack tecnologico individuato;

- Scelta delle metodologie di contatto;

- Organizzazione di un prossimo meeting e discussione in merito ad una regolarità negli incontri.

\
== Approfondimento specifiche del capitolato
Lo scopo del meeting è iniziare l'analisi dei requisiti, focalizzando l'attenzione sulle funzionalità richieste, la loro implementazione e il dominio tecnologico che il team dovrà utilizzare.
Le domande raccolte dal team sono state catalogate nei seguenti ambiti:
- use case;
- funzionalità;
- user interface & user experience;
- stack tecnologico.

\
== Presentazione delle domande raccolte dal team in merito ai requisiti
=== Utente
L'utente tipico è stato individuato nella figura di un amministratore e/o impiegato lato back-office, dotati dunque di massimo controllo e accesso all'applicativo. \
Le principali azioni che tali utenti svolgeranno sono:
  - interrogazione del magazzino;
  - richiesta di spostamento di un prodotto;
  - zoom e spostamento all'interno dell'ambiente 3D;

=== User interface & user experience
Durante lo svolgimento del meeting si è presentata un'idea generale di possibile user interface, delineando in particolar modo alcune caratteristiche desiderabili, quali:
- rendere ben visibili le operazioni disponibili all'utente (distinzione evidente tra elementi selezionabili e non);
- evitare eccessive animazioni o effetti _lampeggianti_;
- evidenziare in modo visibile gli elementi ricercati (magari riducendo l'opacità degli altri elementi), al fine di non disorientare l'utente;
- spostare eventualmente la telecamera sull'oggetto ricercato (se singolo);
- essenziale che la ricerca non modifichi la struttura visualizzata del magazzino.

=== Differenze tra applicativo desktop e mobile
Durante la riunione è emerso che vi saranno delle differenze tra la versione desktop e la versione mobile: l'accesso completo alla funzionalità (esempio richiesta di spostamento di prodotti) sarà fornito per la versione desktop, mentre la versione mobile presenterà delle funzioni limitate (magari solo visualizzazione e ricerca). In ogni caso rimane ancora da definire nel dettaglio le differenze.

=== Funzionalità desiderate
Da una prima analisi sono emerse le principali funzionalità desiderate, quali:
- creazione dell'ambiente 3D del magazzino, articolata in:
  - definizione dei parametri dimensionali del magazzino;
  - definizione dei bin;
  - creazione e posizionamento degli scaffali;
- caricamento dei dati da un database per la popolazione del magazzino;
- interrogazione del magazzino mediante ricerce per ID, nome, o caratteristiche dei prodotti;
- evidenziazione dei prodotti ricercati mediante effetti visivi (ad esempio cambio del colore) e/o spostamento della telecamera;
- invio di notifiche mediante la chiamata a API RESTful per lo spostamento di prodotti nel magazzino.

Durante l'analisi del processo di configurazione si è chiarito che il primo passaggio di configurazione riguarda la definizione della geometria del magazzino. La geometria può essere definita con due parametri (lunghezza, larghezza) oppure estrapolando il \<path\> da un file SVG caricato dall'utente. Successivamente, vengono caricati i dati presenti nel DB.
Il database non impone vincoli strutturali, ma è pensato per interfacciarsi con la struttura determinata in fase di creazione. 

=== API RESTful
Per l'invio delle notifiche di richiesta di spostamento, l'applicativo si interfaccerà con delle API RESTful. È emerso che l'implementazione di tali API non è di interessedel capitolato, e per tale motivazione possiamo procedere ad una simulazione del comportamento delle stesse con assunzioni riguardo i parametri e le risposte. Ad esempio per lo spostamento di un elemento da un bin ad un altro:
- Invio all'API delle coordinate di partenza (es: scaffale) e delle coordiante d'arrivo (un altro scaffale) e il prodotto interessato;
- L'API risponde:
  - stato 200: contatto con l'API avvenuto con successo: spostamento richiesto con successo;
  - stato 200: contatto con l'API avvenuto con successo: spostamento non possibile;
  - risposta ottenuta in formato JSON.
- la logica di controllo della facoltà di spostare un prodotto è gestita interamente dall'endpoint REST.
\
== Conferme riguardo lo stack tecnologico individuato;
Lo stack tecnologico individuato dal team si articola in:
- DB SQL per la gestione del database relazionale;
- Three.js per l'implementazione della parte grafica (Javascript o typescript);
- Node.js per la comunicazione tra applicativo e database;
- Docker per la containerizzazione del prodotto.

Lo stack tecnologico discusso rappresenta un punto di partenza, ma può essere soggetto a modifiche. Ad ogni modo, al momento, le tecnologie individuate e proposte hanno trovato l'approvazione del Proponente.
In merito all'utilizzo di Javascript o Typescript ed eventuali framework per il lato front end (React, Angular), il Proponente ha lasciato la massima libertà al Gruppo, considerando ad ogni modo che l'azienda utilizza Typescript e Angular.
\
== Stabilimento delle metodologie di contatto;
Il Proponente ha confermato l'intenzione di proseguire i contatti mediante l'uso di posta elettronica, intenzione che anche il Gruppo approva.
\

== Organizzazione di un prossimo meeting e discussione in merito ad una regolarità negli incontri.
L'incontro si è concluso con l'organizzazione del prossimo meeting in data 23 novembre 2023, dalle ore 14:00 alle ore 15:00.\ 
In questa prima fase di analisi dei requisiti, si è concordato con la necessità di svolgere incontri con cadenza almeno settimanale.

\
= Azioni da intraprendere
A seguito del meeting sono state individuate le seguenti operazioni da svolgere:
- raccolta e catalogazione di aspettative e bisogni;
- produzione della documentazione quale use cases, analisi dei requisiti da presentare al prossimo meeting;
- esplorazione del dominio tecnologico. 
