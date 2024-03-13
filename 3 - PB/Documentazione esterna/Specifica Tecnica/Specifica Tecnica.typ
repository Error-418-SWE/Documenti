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

== Elenco delle tecnologie


= Architettura del prodotto

== Descrizione generale

== Struttura
Per garantire modularità e separazione delle responsabilità, il programma adotta l'architettura "layered".
Nello specifico vengono individuati tre strati:

- *Persistence layer*: gestisce l'accesso al database e fornisce gli stumenti dedicati alla lettura dei suoi dati persistenti. I dati letti vengono processati al fine di poter creare gli elementi del Business layer;

- *Business layer*: si occupa di elaborare i dati ricevuti dallo strato di persistenza e applicare le regole di business definite. È responsabile di implementare la logica dell'applicazione in modo indipendente dalle tecnologie di persistenza e di presentazione utilizzate;

- *Presentation layer*: permette di trasformare i dati elaborati dal Business layer e le informazioni in una forma comprensibile e accessibile agli utenti finali. Questo include la creazione di interfacce utente grafiche e visualizzazioni 3D degli elementi di interesse.


== Design pattern utilizzati
I Design pattern introdotti nell'architettura dell'applicazione sono:

- *pattern Data mapper*: viene utilizzato per interpretare i dati letti del database mantenendo separate la logica di business dal layer di persistenza. Le classi relative a questo pattern fungono da intermediari tra l'applicazione e la sorgente dati e sono responsabili della conversione delle strutture dati atte alla persistenza in oggetti del dominio dell'applicazione;

- *pattern Repository*: come per il precedente pattern, viene implementato per separare la logica di business dalla logica di accesso ai dati. Le classi relative a questo pattern eseguono operazioni di lettura, aumentando l'astrazione dei dettagli specifici della persistenza dei dati e permettendo all'applicazione di interagirvi in modo indipendente dal tipo di archivio sottostante;

- *pattern Provider*: applicato nel contesto tecnologico del progetto, soprattutto rispetto all'utilizzo di React, vengono sfruttate delle API per permette di gestire e trasferire i dati attraverso l'albero dei componenti in modo strutturato, evitando il "prop drilling", ovvero l'effetto che si verifica nei casi in cui è necessario trasportare i dati attraverso più livelli di componenti, anche se alcuni di essi non ne necessitano;

- *pattern Strategy*: consente di definire una famiglia di algoritmi, incapsularli in classi separate e renderli intercambiabili. In questo modo è possibile applicare l'algoritmo appropriato senza dover conoscere i dettagli implementativi.



== Classi e Componenti
Ciascun layer possiede il suo indipendente sistema di classi e componenti e prevede metodi per comunicare con i layer adiacenti.

=== Persistence layer
Mediante delle chiamate API vengono letti i dati utili all'applicazione da un database esterno e vengono forniti degli adeguati file Json.
Questi ultimi vengono utilizzati dalle classi derivate dall'adozione del pattern "Data mapper":
- l'interfaccia DataMapperInterface;
- binMapper: implementa DataMapperInterface ed è responsabile della creazione di oggetti "bin";
- productMapper: implementa DataMapperInterface ed è responsabile della creazione di oggetti "product";
- zoneMapper: implementa DataMapperInterface ed è responsabile della creazione di oggetti "zone".


Al fine di dividere ulteriormente il Persistence layer dal Business layer, viene applicato il pattern "Repository" mediante le classi:
- l'interfaccia DataRepositoryInterface;
- binRepository: implementa DataRepositoryInterface ed è responsabile delle chiamate API relative agli oggetti "bin";
- productRepository: implementa DataRepositoryInterface ed è responsabile delle chiamate API relative agli oggetti "product";
- zoneRepository: implementa DataRepositoryInterface ed è responsabile delle chiamate API relative agli oggetti "zone".

Queste classi utilizzano le corrispondenti classi del pattern Data mapper.



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
  - *id*: interno che rappresenta il codice identificativo univoco del bin;
  - *level*: intero che rappresenta il codice identificativo univoco del livello di appartenenza;
  - *column*: intero che rappresenta il codice identificativo univoco della colonna di appartenenza;
  - *height*: numero in virgola mobile che rappresenta l'altezza del bin;
  - *length*: numero in virgola mobile che rappresenta la profondità del bin;
  - *width*: numero in virgola mobile che rappresenta la larghezza del bin;
  - *product*: riferimento al prodotto contenuto nel bin. Può essere "null".

Per ogni attributo è presente il corrispondente metodo get.
Sono presenti i metodi set per gli attributi id e product.

\
- *Zone*:

  rappresenta un elemento zona, può essere interpretata come uno scaffale oppure, nel caso abbia un solo livello, come una zona del piano definita per contenere bin.
  I suoi attributi sono:
  - *id*: interno che rappresenta il codice identificativo univoco della zona;
  - *xcoordinate*: numero in virgola mobile che rappresenta la coordinata X di posizione;
  - *ycoordinate*: numero in virgola mobile che rappresenta la coordinata Y di posizione;
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

  rappresenta la richiesta di uno spostamento di un prodotto tra due bin.
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
  - *SVG*: stringa che contiene il path al file SVG se presente. Nel caso in cui non sia stato identificato nessun file SVG, la variabile è "null".

  Per ogni attributo è presente il corrispondente metodo get.

  Potendo generare l'oggetto Floor con modalità diverse a seconda della presenza del file SVG, la sua creazione è gestita tramite il design pattern "Strategy" e le relative classi:
  - FloorStrategyContext;
  - l'interfaccia FloorStrategy;
  - StandardFloorStrategy (che implementa FloorStrategy);
  - CustomFloorStrategy (che implementa FloorStrategy).


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


In aggiunta alle classi, per aderire all'adozione del pattern "Provider", sono presenti:
- binsProvider;
- floorProvider;
- formContextProvider;
- ordersProvider;
- productsProvider;
- zonesProvider;
- ElementDetailsProvider.


=== Presentation layer
==== UI
L'interfaccia utente è realizzata mediante diversi componenti nativi React e componenti personalizzati.
Gli elementi creati appositamente per la nostra applicazione sono:
- creationForm;
- dropFileArea;
- manualCreationFrame;
- svgCreationFrame;
- zodScheme;
- binItemDetails;
- orderItem;
- ordersPanel;
- productItem;
- productItemDetails;
- productsPanel;
- restoreItem;
- settingsPanel;
- bin_columns;
- levelItem;
- zoneCreationFrame;
- zoneItem;
- zoneItemDetails;
- zonePanel;
- zoneZodSchemes;
- panel.


==== Trhee.js
L'ambiente tridimensionale è realizzato mediante i componenti:
- Floor;
- Warehouse.


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

    - ID: identificativo univoco e seriale di un bin.

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