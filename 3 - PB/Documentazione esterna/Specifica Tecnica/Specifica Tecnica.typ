#import "/template.typ": *

#show: project.with(
 title: "Specifica Tecnica",
 subTitle: "",
 authors: (
  "Nardo Silvio",
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

== Struttura
Il software WMS3 al fine di perseguire manutenibilità, flessibilità e scalabilità, adotta ed implementa un'architettura "layered", nota anche come "Multi-tier architecture".
Tale architettura permette di individuare e suddividere la logica del software in 3 principali aspetti, definiti tier (separation of concerns), quali:

- *Persistence layer*: gestisce l'accesso al database e fornisce gli strumenti dedicati alla lettura dei dati al suo interno. I dati letti vengono processati al fine di poter creare gli elementi del Business layer;

- *Business layer*: si occupa di elaborare i dati ricevuti dal layer di persistenza e applicare le regole di business definite. È responsabile di implementare la logica dell'applicazione in modo indipendente dalle tecnologie di persistenza e di presentazione utilizzate;

- *Presentation layer*: permette di trasformare i dati elaborati dal Business layer e le informazioni in una forma comprensibile e accessibile agli utenti finali. Questo include la creazione di interfacce utente grafiche e visualizzazioni 3D degli elementi di interesse.


== Design pattern utilizzati

=== Data mapper
Viene utilizzato per interpretare i dati letti del database mantenendo separate la logica di business dal layer di persistenza. Le classi relative a questo pattern fungono da intermediari tra l'applicazione e la sorgente dati e sono responsabili della conversione delle strutture dati atte alla persistenza in oggetti del dominio dell'applicazione.

=== Repository
Viene implementato per separare la logica di business dalla logica di accesso ai dati. Le classi relative a questo pattern eseguono operazioni di lettura, aumentando l'astrazione dei dettagli specifici della persistenza dei dati e permettendo all'applicazione di interagirvi in modo indipendente dal tipo di archivio sottostante.

=== Provider
Applicato nel contesto tecnologico del progetto, soprattutto rispetto all'utilizzo di React, vengono sfruttate delle Context API per permette di gestire e trasferire i dati attraverso l'albero dei componenti in modo strutturato, evitando il "prop drilling", ovvero l'effetto che si verifica nei casi in cui è necessario trasportare i dati attraverso più livelli di componenti, anche se alcuni di essi non ne necessitano.

=== Strategy
Consente di definire una famiglia di algoritmi, incapsularli in classi separate e renderli intercambiabili. In questo modo è possibile applicare l'algoritmo appropriato senza dover conoscere i dettagli implementativi.



== Classi e Componenti
Ciascun layer possiede il suo indipendente sistema di classi e componenti e prevede metodi per comunicare con i layer adiacenti.

=== Persistence layer
Mediante delle Server Action offerte da Next.js, vengono eseguite delle query SQL atte alla lettura dei dati utili all'applicazione da un database esterno.
Esse sono implementate e rese disponibili in file separati, organizzati nell'omonima cartella "Server Action", contenente:

- *getAllBins*: ritorna le informazioni di tutti i bin lette dal database;

- *getBinById*: dato un codice identificativo univoco, ritorna le informazioni relative al bin corrispondente lette dal database;

- *getAllProducts*: ritorna le informazioni di tutti i prodotti lette dal database;

- *getProductById*: dato un codice identificativo univoco, ritorna le informazioni relative al prodotto corrispondente lette dal database;

- *SVGSanitize*: dato un path ad un file SVG caricato, ritorna il contenuto del relativo file SVG sanificato, ovvero normalizzato e reso sicuro, prevenendo attacchi XSS;

- *readSavedSVG*: ritorna il contenuto del file SVG salvato su server;

- *saveSVG*: dato il contenuto di un file SVG, esso viene salvato come "saved.svg";

- *getAllZones*: ritorna le informazioni di tutte le zone lette dal database;

- *getBinsByZoneId*: dato un codice identificativo univoco, ritorna le informazioni relative a tutti i bin contenuti nella zona corrispondente lette dal database;

- *getZoneById*: dato un codice identificativo univoco, ritorna le informazioni relative alla zona corrispondente lette dal database.


Al fine di agevolare la divisione tra il Persistence layer ed il Business layer, viene utilizzato il pattern Repository mediante classi che implementano l'interfaccia `dataRepositoryInterface`, quali:

- *binRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Bin`;

- *productRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Product`;

- *zoneRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Zone`.

Il pattern Repository impiega in maniera consequenziale le classi correlate del pattern Data Mapper, le quali implementano l'interfaccia `DataMapperInterface`.
Di seguito sono elencate le classi specifiche:

- *binMapper*: è responsabile della creazione di oggetti `Bin`;

- *productMapper*: è responsabile della creazione di oggetti `Product`;

- *zoneMapper*: è responsabile della creazione di oggetti `Zone`.


#figure(
  image("./imgs/Persistence Layer patterns class diagram.png", width: 100%),
  caption: [
    Diagramma delle classi del layer di persistenza
  ],
)

=== Business layer
Le classi che vengono utilizzate per rappresentare il modello dell'applicativo sono:

- *Bin*:

  rappresenta un elemento bin, ovvero uno spazio definito in grado di contenere un prodotto.
  I suoi attributi sono:

  - *id*: stringa di massimo dieci caratteri che rappresenta il codice identificativo univoco del bin.
  Essa è composta da:
    #align(center, "id zona + _ + lettera corrispondente alla colonna + _ + numero del livello")
  la lettera corrispondente alla colonna fa riferimento ad una mappatura per cui "A" equivale alla colonna zero e viene incrementata seguendo i caratteri dell'alfabeto inglese con l'aumentare del numero della colonna.
  Dopo la lettera "Z" viene utilizzato "AA" proseguendo con la logica descritta;

  - *level*: intero che rappresenta il numero del del livello di appartenenza;

  - *column*: intero che rappresenta il numero della colonna di appartenenza;

  - *height*: numero in virgola mobile che rappresenta l'altezza del bin;

  - *length*: numero in virgola mobile che rappresenta la profondità del bin;

  - *width*: numero in virgola mobile che rappresenta la larghezza del bin;

  - *product*: riferimento al prodotto contenuto nel bin. Può essere `null`.

Per ogni attributo è presente il corrispondente metodo get.
Sono presenti i metodi set per gli attributi `id` e `product`.
Inoltre è previsto il metodo `Clear` che permette di assegnare il valore `null` all'attributo che riferisce il prodotto contenuto nel bin.

\
- *Zone*:

  rappresenta un elemento zona, può essere interpretata come uno scaffale oppure, nel caso abbia un solo livello, come una zona del piano definita per contenere bin.
  I suoi attributi sono:

  - *id*: interno che rappresenta il codice identificativo univoco della zona;

  - *xcoordinate*: numero in virgola mobile che rappresenta la coordinata X di posizione nel piano;

  - *ycoordinate*: numero in virgola mobile che rappresenta la coordinata Y di posizione nel piano;

  - *height*: numero in virgola mobile che rappresenta l'altezza della zona;

  - *length*: numero in virgola mobile che rappresenta la profondità della zona;

  - *width*: numero in virgola mobile che rappresenta la larghezza della zona;

  - *bins*: lista di elementi Bin contenuti nella zona;

  - *orientation*: booleano che identifica l'orientamento (perpendicolare o parallelo) della zona rispetto all'asse delle ascisse del piano.

  \
  Per ogni attributo è presente il corrispondente metodo get.
  Sono inoltre presenti i metodi:

  - *getLevels*: ritorna una lista contenente le liste di bin che rappresentano i livelli della zona;

  - *getColumns*: ritorna una lista contenente le liste di bin che rappresentano le colonne della zona;

  - *getMaxUsedLevel*: ritorna il numero dell'ultimo livello della zona con almeno un bin contenente un prodotto;

  - *getMaxUsedColumn*: ritorna il numero dell'ultima colonna della zona con almeno un bin contenente un prodotto.

\
- *Product*:

  rappresenta un prodotto, i suoi attributi sono:

  - *id*: interno che rappresenta il codice identificativo univoco del prodotto;

  - *name*: stringa che rappresenta il nome del prodotto;

  - *weight*: numero in virgola mobile che rappresenta il peso del prodotto;

  - *height*: numero in virgola mobile che rappresenta l'altezza del prodotto;

  - *length*: numero in virgola mobile che rappresenta la profondità del prodotto;

  - *width*: numero in virgola mobile che rappresenta la larghezza del prodotto;

  - *categories*: lista di stringhe che rappresentano le categorie del prodotto.

  Per ogni attributo è presente il corrispondente metodo get.

\
- *Order*:

  rappresenta un ordine di spostamento di un prodotto tra due bin.
  I suoi attributi sono:

  - *id*: interno che rappresenta il codice identificativo univoco della richiesta;

  - *startPoint*: riferimento al bin iniziale;

  - *endPoint*: riferimento al bin finale;

  - *product*: riferimento al prodotto da spostare.

  Per ogni attributo è presente il corrispondente metodo get.

\
- *Floor*:

  rappresenta il piano dell'ambiente 3D, i suoi attributi sono:

  - *length*: numero in virgola mobile che rappresenta la profondità del piano;

  - *width*: numero in virgola mobile che rappresenta la larghezza del piano;

  - *SVG*: stringa che contiene il path al file SVG se presente. Nel caso in cui non sia stato identificato nessun file SVG, la variabile è `null`.

  Per ogni attributo è presente il corrispondente metodo get.

  Potendo generare l'oggetto `Floor` con modalità diverse a seconda della presenza del file SVG, la sua creazione è gestita tramite il design pattern Strategy e le relative classi che implementano l'interfaccia `FloorStrategy`:

  - *StandardFloorStrategy*: rappresenta la creazione di un elemento `Floor` senza file SVG;

  - *CustomFloorStrategy*: rappresenta la creazione di un elemento `Floor` con file SVG;

  Inoltre è presente la classe:

  - *FloorStrategyContext*: utilizza un `FloorStrategy` per generare un elemento `Floor`.

#figure(
  image("./imgs/Business Layer classes.png", width: 100%),
  caption: [
    Diagramma delle classi del layer di business
  ],
)

#figure(
  image("./imgs/Business Layer floor.png", width: 100%),
  caption: [
    Diagramma delle classi Floor del layer di business
  ],
)


In aggiunta alle classi, per aderire all'adozione del pattern Provider, sono presenti i componenti:

- *binsProvider*: fornisce un provider per gestire dati relativi agli oggetti `Bin`;

- *floorProvider*: fornisce un provider per gestire dati relativi agli oggetti `Floor`;

- *ordersProvider*: fornisce un provider per gestire dati relativi agli oggetti `Order`;

- *productsProvider*: fornisce un provider per gestire dati relativi agli oggetti `Product`;

- *zonesProvider*: fornisce un provider per gestire dati relativi agli oggetti `Zone`;

- *ElementDetailsProvider*: fornisce un provider per gestire dati relativi ai componenti da visualizzare in un pannello dedicato.


=== Presentation layer
==== UI
L'interfaccia utente è realizzata mediante elementi importati da Shadcn-UI e componenti personalizzati.
Gli elementi creati appositamente per WMS3 sono i seguenti:

- *Form di creazione*:

  - *creationForm*: componente dedicato alla selezione della modalità di creazione dell'ambiente di lavoro;

  - *dropFileArea*: componente dedicato al caricamento di un file SVG;

  - *manualCreationFrame*: componente dedicato alla creazione manuale dell'ambiente di lavoro;

  - *svgCreationFrame*: componente dedicato alla definizione dei parametri di creazione dell'ambiente di lavoro mediante file SVG;

  - *zodScheme*: schema dedicato alla validazione dei dati di creazione dell'ambiente di lavoro.

- *bin*:

  - *binItemDetails*: componente dedicato alla visualizzazione delle informazioni dettagliate di un bin.

- *orders*:

  - *orderItem*: componente dedicato alla visualizzazione di un ordine;

  - *ordersPanel*: componente dedicato alla visualizzazione di tutti gli ordini.

- *products*:

  - *productItem*: componente dedicato alla visualizzazione di un prodotto;

  - *productItemDetails*: componente dedicato alla visualizzazione delle informazioni dettagliate di un prodotto;

  - *productsPanel*: componente dedicato alla visualizzazione di tutti i prodotti.

- *settings*:

  - *floorDimensionsItem*: componente dedicato alla visualizzazione delle dimensioni del piano;

  - *restoreItem*: componente dedicato al comando atto al ripristino o alla reimpostazione dell'ambiente di lavoro;

  - *settingsPanel*: componente dedicato al pannello delle impostazioni contenente `floorDimensionsItem` e `restoreItem`;

  - *zodDimensionScheme*: schema dedicato alla validazione dei dati dimensionali per la modifica del piano.

- *zone*:

  - *bin_columns*: componente dedicato alla visualizzazione delle colonne di bin di una zona;

  - *levelItem*: componente dedicato alla visualizzazione di un livello della zona durante il processo di creazione/modifica dello stesso;

  - *zoneCreationFrame*: componente dedicato alla creazione di una zona;

  - *zoneItem*: componente dedicato alla visualizzazione di una zona;

  - *zoneItemDetails*: componente dedicato alla visualizzazione delle informazioni dettagliate di una zona;

  - *zonePanel*: componente dedicato alla visualizzazione di tutte le zone;

  - *zoneZodSchemes*: schemi dedicati alla validazione dei dati necessari alla creazione di una zona, sia durante la configurazione manuale, che mediante inserimento di un file SVG.

- *panel*: componente atto a contenere e visualizzare altri componenti.


==== Three.js
L'ambiente tridimensionale è realizzato mediante i componenti:

- *Floor*: elemento che rappresenta il piano dell'ambiente di lavoro;

- *bin3D*: elemento che rappresenta un bin nell'ambiente di lavoro;

- *Warehouse*: elemento che rappresenta i limiti dell'ambiente visualizzato.


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





= Requisiti soddisfatti ( aggiungere tabella requisiti soddisfatti)