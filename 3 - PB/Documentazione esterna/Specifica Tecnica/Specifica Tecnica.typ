#import "/template.typ": *

#show: project.with(
 title: "Specifica Tecnica",
 subTitle: "",
 authors: (
   "Todesco Mattia",
 ),
 showLog: true,
 showImagesIndex: true,
 isExternalUse: true,
);

= Introduzione

== Scopo del documento

Il presente documento ha lo scopo di illustrare e motivare le scelte architetturali effettuate dal gruppo durante le fasi di progettazione e codifica del prodotto _WMS3_.

Questo documento include i diagrammi delle classi per illustrare l'architettura e le funzionalità del prodotto, insieme alle tecnologie selezionate dal team per la realizzazione del progetto.

== Approccio al documento

Il presente documento viene redatto in modo incrementale in modo da assicurare la coerenza delle informazioni al suo interno con gli sviluppi in corso e le esigenze evolutive del progetto.

== Scopo del prodotto

Il seguente documento tratta del programma denominato _WMS3: Warehouse Management 3D_, avente come obiettivo la realizzazione di un sistema di gestione di magazzino in tre dimensioni.

Il prodotto offre le seguenti funzionalità principali:
- possibilità di creazione di un magazzino e delle sue componenti;
- visualizzazione tridimensionale del magazzino, con possibilità di muovere la vista;
- visualizzazione delle informazioni della merce presente in magazzino;
- caricamento dei dati relativi alle merci da un database SQL;
- emissione di richieste di spostamento della merce all'interno del magazzino;
- filtraggio e ricerca delle merci con rappresentazione grafica dei risultati;
- importazione di planimetrie in formato SVG.


== Glossario
#glo_paragrafo

== Riferimenti <riferimenti>

=== Riferimenti a documentazione interna <riferimenti-interni>

- Documento #glo_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

=== Riferimenti normativi <riferimenti-normativi>

- Capitolato "Warehouse Management 3D" (C5) di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)

=== Riferimenti informativi <riferimenti-informativi>

#pagebreak()

= Installazione

== Scaricare il progetto

Ci sono due modalità tramite cui è possibile scaricare il progetto: la prima, e più consigliata, è eseguire il download del progetto in formato zip o tar.gz dalla pagina

#align(center, link("https://github.com/Error-418-SWE/WMS3/releases"))

In alternativa, se nel dispositivo è presente Git, si può clonare il repository con il comando

#align(center, `git clone git@github.com:Error-418-SWE/WMS3.git`)

oppure

#align(center, `git clone https://github.com/Error-418-SWE/WMS3.git`)

== Avviare la web app

Per avviare la web app è necessario spostarsi all'interno della cartella scaricata in precedenza ed eseguire il comando

#align(center, `docker compose up -d`)

Questo avvierà i container Docker che formano il prodotto, il quale sarà poi visualizzabile e utilizzabile all'indirizzo

#align(center, link("http://localhost:3000/"))

== Terminare l'esecuzione

Chiudere la finestra browser non terminerà completamente l'esecuzione dell'applicazione, in quanto Docker Compose continuerà ad eseguire in background. La terminazione completa si effettua con il comando

#align(center, `docker compose down`)

= Tecnologie

== Introduzione

In questa sezione vengono esposte ed esaminate le tecnologie utilizzate nel processo di sviluppo e testing del prodotto _WMS3_.

Ciò avviene prestando attenzione alle tecnologie impiegate sia nel front-end che nel back-end, compresa la gestione del database e l'integrazione con i servizi previsti.

== Elenco delle tecnologie

=== Tecnologie per lo sviluppo dell'applicazione

#figure(
  table(
    columns: 3,
    [*Tecnologia*], [*Descrizione*], [*Versione*],

    [Docker],
    [Software utilizzato per il processo di deployment di applicazioni software. Permette di
    eseguire processi informatici in ambienti isolati chiamati container.],
    [24.0.7],

    [Docker-compose],
    [Strumento per la definizione e l'esecuzione di applicazioni multi-container.],
    [2.23.3],

    [Drei],
    [Libreria che fornisce componenti e utilità per semplificare lo sviluppo di applicazioni in 3D utilizzando React e Three.js.],
    [9.97.6],

    [Fiber],
    [Libreria open-source che facilita l'integrazione di Three.js all'interno di applicazioni React.],
    [8.15.16],

    [HTML],
    [Linguaggio di markup standard utilizzato per la creazione di pagine web.],
    [5.0],

    [Next.js],
    [Framework di sviluppo web front-end basato su React e utilizzato per la creazione di applicazioni web.],
    [14.1.0],

    [Node.js],
    [Runtime system orientato agli eventi per l'esecuzione di codice JavaScript estendibile tramite moduli.],
    [20.11.0],

    [PostgreSQL],
    [Sistema di gestione di database relazionali.],
    [16.2],

    [React],
    [Libreria JavaScript utilizzata per la creazione di interfacce utente dinamiche e reattive. Si basa sul concetto di "components", ovvero blocchi di codice autonomi che gestiscono la propria logica e rendering.],
    [18.0.0],

    [Tailwind CSS],
    [Framework CSS utilizzato per lo sviluppo di interfacce utente web.],
    [3.4.1],

    [Three.js],
    [Libreria JavaScript utilizzata per creare e visualizzare grafica computerizzata 3D animata in un browser Web utilizzando WebGL.],
    [0.161.2],

    [Typescript],
    [Superset di JavaScript che aggiunge tipizzazione, offrendo maggiore struttura al codice.],
    [5.3.3],

  ),
  caption: "Tecnologie utilizzate per lo sviluppo."
)


=== Tecnologie per il testing

#figure(
  table(
    columns: 3,
    [*Tecnologia*], [*Descrizione*], [*Versione*],
    [Jest],
    [Framework di testing per JavaScript. Utilizzato principalmente per lo unit testing, offre la parallelizzazione dei test e il mocking delle dipendenze.],
    [29.7.0],
  ),
  caption: "Tecnologie utilizzate per il testing."
)

= Architettura del prodotto

== Descrizione generale

== Diagramma delle classi

== Database

In questa sezione viene presentato lo schema della base di dati realizzata con PostgreSQL.

Esso è cosi composto:

#figure(
  image("./imgs/ER.png", width: 100%),
  caption: [
    Schema ER del Database.
  ],
)


=== Entità

Il database è composto da 6 entità:

- *Product*: rappresenta un prodotto presente all'interno del magazzino. Composto da:

    - ID: identificativo univoco e seriale di un prodotto;
    - Name: nome del prodotto;
    - Weight: peso del prodotto;
    - Width: larghezza del prodotto;
    - Length: lunghezza del prodotto;
    - Height: altezza del prodotto.

- *Category*: rappresenta la categoria merceologica di appartenenza del prodotto. Composto da:

    - ID: identificativo univoco e seriale di una categoria;
    - Name: nome della categoria.

- *Bin*: rappresenta uno spazio del magazzino in cui è possibile inserire un prodotto. Composto da:

    - ID: identificativo univoco di un bin, esso è cosi composto:

    #align(center, `ID zona + _ + Column_Order + _ + Level_Order"`)

- *Level*: rappresenta un ripiano dello scaffale. Composto da:

    - ID: identificativo univoco e seriale di un ripiano;
    - Height: altezza del ripiano;
    - Level_order: valore incrementale che rappresenta la posizione del ripiano all'interno di uno scaffale.
      Se il suo valore è 0 allora esso rappresenta una zona a terra.

- *Column*: rappresenta una colonna dello scaffale. Composto da:

    - ID: identificativo univoco e seriale di una colonna;
    - Width: larghezza della colonna;
    - Column_order: valore incrementale che rappresenta la posizione della colonna all'interno di uno scaffale.

- *Zone*: rappresenta una zona del piano del magazzino. Essa può essere sia uno scaffale che una zona a terra. Composto da:

    - ID: identificativo univoco e seriale di una zona;
    - XCoordinate: coordinata orizzontale della zona;
    - YCoordinate: coordinata verticale della zona;
    - Length: lunghezza della zona;
    - Orientation: orientamento della zona.

=== Relazioni

All'interno del database le relazioni fra le differenti entità sono del tipo:

- *Zero..One to One* per quanto riguarda le entità:
  - Product e Bin.

- *One to Many* per quanto riguarda le entità:

  - Bin e Level;
  - Bin e Column;
  - Level e Zone;
  - Column e Zone.

- *Many to Zero..Many* per quanto riguarda le entità:

  - Product e Category.

=== Interrogazione del database

Il database viene utilizzato dall'applicazione per il caricamento, il posizionamento e la visualizzazione dei prodotti all'interno del magazzino.
In nessun caso il database verrà modificato dall'applicazione.


== Struttura (vari layer)

== Design pattern utilizzati


= Requisiti soddisfatti ( aggiungere tabella requisiti soddisfatti)