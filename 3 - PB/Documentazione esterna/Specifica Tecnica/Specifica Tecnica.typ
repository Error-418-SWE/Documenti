#import "/template.typ": *
#import table: cell, header

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
Il presente documento si pone come obiettivo la descrizione dettagliata delle scelte progettuali effettuate, al fine di garantire una comprensione chiara e completa del software "WMS3: Warehouse Management 3D". 

Gli aspetti fondamentali riguardano l'architettura implementativa, analizzazndo tecnologie e design pattern adottati, e l'archietettura di deployment del prodotto.

Mediante il documento si intende fornire le linee guida per lo sviluppo del software, garantendo la coerenza con i  requisiti individuati nel documento di Analisi dei Requisiti e il loro soddisfacimento.

== Approccio alla redazione

Il presente documento viene redatto in modo incrementale assicurando la coerenza delle informazioni al suo interno con gli sviluppi in corso e le esigenze evolutive del progetto.

== Scopo del prodotto
Il fine ultimo è lo sviluppo di un software, “WMS3: Warehouse Management 3D”, che rivoluziona la gestione di un magazzino, trascendendo la rappresentazione bidimensionale tradizionale a favore di un ambiente tridimensionale più informativo e intuitivo.

“WMS3” si distingue per le sue funzionalità avanzate, tra cui la creazione personalizzata di un magazzino e delle sue componenti, arricchita da una visualizzazione tridimensionale che offre una comprensione spaziale ottimale grazie alla possibilità di manipolare la vista.

Il software consente inoltre l'accesso e la visualizzazione delle informazioni relative alla merce e alla disposizione degli scaffali, sfruttando un database SQL per il caricamento di tali dati.

Un altro aspetto fondamentale di “WMS3” è la facilità con cui è possibile emettere richieste di spostamento della merce all'interno del magazzino, rendendo la gestione logistica un processo semplice e intuitivo. Il software integra funzionalità di filtraggio e ricerca delle merci, presentando i risultati in modo grafico per una interpretazione immediata.

Per concludere, “WMS3” supporta la personalizzazione dell'ambiente attraverso l'importazione di planimetrie in formato SVG, permettendo una configurazione avanzata del layout del magazzino.

== Glossario
#glo_paragrafo

== Riferimenti <riferimenti>

=== Riferimenti a documentazione interna <riferimenti-interni>

- Documento #glo_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

- Documento #adr_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Documentazione%20esterna/Analisi%20dei%20Requisiti_v" + adr_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

=== Riferimenti normativi <riferimenti-normativi>

- Regolamento del progetto didattico: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_
  #lastVisitedOn(20, 03, 2024)

- Capitolato "Warehouse Management 3D" (C5) di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)

=== Riferimenti informativi <riferimenti-informativi>

- Verbali interni;
- Verbali esterni;
- Analisi dei requisiti: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf")_
  #lastVisitedOn(20, 03, 2024)

- Analisi e descrizione delle funzionalità, Use Case e relativi diagrammi (UML): \
  _#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")_
  #lastVisitedOn(20, 03, 2024)


#pagebreak()

= Requisiti

Di seguito sono elencati i requisiti minimi necessari per l'esecuzione dell'applicazione, comprese le caratteristiche necessarie per configurare l'ambiente di sviluppo del progetto.

== Requisiti di sistema minimi

#figure(
  table(
    columns: 3,
    [*Componente*], [*Versione*], [*Riferimenti*],

    [Docker],[$>=$ 24.0.7],[https://docs.docker.com/],
    [Docker-compose],[$>=$ 2.23.3],[https://docs.docker.com/compose/],

  ),
  caption: "Requisiti di sistema minimi"
)

== Requisiti hardware

#figure(
  table(
    columns: 2,
    [*Componente*], [*Requisito minimo*],

    [Processore],[Processore a 64 bit con SLAT (Second Level Address Translation)],
    [Memoria RAM],[4GB DDR4],
    [Spazio su disco], [$>=$ 20 GB],

  ),
  caption: "Requisiti hardware"
)

== Browser

#figure(
  table(
    columns: 2,
    [*Browser*], [*Versione*],

    [Google Chrome],[$>=$ 89],
    [Microsoft Edge],[$>=$ 89],
    [Mozilla Firefox],[$>=$ 16.4],
    [Apple Safari],[$>=$ 108],
    [Opera Browser],[$>=$ 76],
    [Google Chrome per Android],[$>=$ 89],
    [Apple Safari per iOS],[$>=$ 17.1],
    [Samsung Internet],[$>=$ 23],
  ),
  caption: "Browser supportati"
)

#pagebreak()

= Installazione

== Scaricare il progetto <download>

Vengono fornite due modalità di download del prodotto WMS3: la prima (consigliata) è eseguire il download del prodotto in formato zip o tar.gz dalla pagina

#align(center, link("https://github.com/Error-418-SWE/WMS3/releases"))

In alternativa, se nel dispositivo è presente Git, si può clonare il repository con il comando

#align(center, `git clone git@github.com:Error-418-SWE/WMS3.git`)

oppure

#align(center, `git clone https://github.com/Error-418-SWE/WMS3.git`)

== Avviare la web app

Per avviare la web app è necessario collocarsi all'interno della cartella scaricata al passaggio _Scaricare il progetto_ (@download) ed eseguire il comando

#align(center, `docker compose up -d`)

Questo avvierà i container Docker che formano il prodotto:
- Container PostgreSQL (database);
- Container Web (web app).

Completato l'avvio dei container, la web app sarà disponibile all'indirizzo

#align(center, link("http://localhost:3000/"))

== Terminare l'esecuzione
Per terminare l'esecuzione della web app è necessario collocarsi nella cartella scaricata al passaggio _Scaricare il progetto_ (@download) ed eseguire il comando

#align(center, `docker compose down`)

#pagebreak()

= Tecnologie

== Introduzione

In questa sezione, viene presentata una panoramica completa degli strumenti e delle tecnologie utilizzati per lo sviluppo e l'implementazione del software “WMS3”. Questo include una descrizione dettagliata delle tecnologie, del linguaggio di programmazione adottato, delle librerie e dei framework necessari.

L'obiettivo principale è assicurare che il software sia sviluppato utilizzando le tecnologie adeguate in termini di efficacia ed efficienza.

== Elenco delle tecnologie

=== Tecnologie implementative

#figure(
  table(
    columns: 3,
    [*Tecnologia*], [*Descrizione*], [*Versione*],
    [Typescript],
    [Superset di JavaScript che aggiunge tipizzazione, offrendo maggiore struttura al codice.],
    [5.3.3],

    [HTML],
    [Linguaggio di markup standard utilizzato per la creazione di pagine web.],
    [5.0],

    [Next.js],
    [Framework di sviluppo web front-end basato su React e utilizzato per la creazione di applicazioni web.],
    [14.1.0],
    
    [Node.js],
    [Runtime system orientato agli eventi per l'esecuzione di codice JavaScript estendibile tramite moduli.],
    [20.11.0],

    [React],
    [Libreria JavaScript utilizzata per la creazione di interfacce utente dinamiche e reattive. Si basa sul concetto di "components", ovvero blocchi di codice autonomi che gestiscono la propria logica e rendering.],
    [18.0.0],

    [Tailwind CSS],
    [Framework CSS utilizzato per lo sviluppo di interfacce utente web.],
    [3.4.1],

    [Shadcn-UI],
    [Libreria di componenti React personalizzati per la creazione di interfacce utente.],
    [0.8.0],

    cell(
      colspan: 3,
      fill: gray.lighten(50%), 
      [*Tecnologie ambiente 3D*]
    ),

    [Drei],
    [Libreria che fornisce componenti e utilità per semplificare lo sviluppo di applicazioni in 3D utilizzando React e Three.js.],
    [9.97.6],

    [Fiber],
    [Libreria open-source che facilita l'integrazione di Three.js all'interno di applicazioni React.],
    [8.15.16],

    [Three.js],
    [Libreria JavaScript utilizzata per creare e visualizzare grafica computerizzata 3D animata in un browser Web utilizzando WebGL.],
    [0.161.2],

  ),
  caption: "Tecnologie utilizzate per lo sviluppo."
)

=== Tecnologie per la persistenza dei dati

#figure(
  table(
    columns: (1fr, 3fr, 1fr),
    [*Tecnologia*], [*Descrizione*], [*Versione*],
    [PostgreSQL],
    [Sistema di gestione di database relazionali.],
    [16.2],
  ),
  caption: "Tecnologie utilizzate per la persistenza dei dati."
)
\
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

=== Tecnologie per il deployment

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
  ),
  caption: "Tecnologie utilizzate per il deploy."
)

#pagebreak()

= Architettura di sistema

== Architettura di implementazione 
Il software WMS3 al fine di perseguire manutenibilità, flessibilità e scalabilità, adotta ed implementa un'architettura "layered", nota anche come "Multi-tier architecture".

I layer definiti sono "closed", ovvero una richiesta si sposta esclusivamente da un livello superiore a quello immediatamente adiacente.

Tale architettura permette di individuare e suddividere la logica del software in 3 principali aspetti, definiti tier (separation of concerns), quali:

- *Persistence layer*: gestisce l'accesso al database e fornisce gli strumenti dedicati alla lettura dei dati al suo interno. I dati letti vengono processati al fine di poter creare gli elementi del Business layer;

- *Business layer*: si occupa di elaborare i dati ricevuti dal layer di persistenza e applicare le regole di business definite. È responsabile di implementare la logica dell'applicazione in modo indipendente dalle tecnologie di persistenza e di presentazione utilizzate;

- *Presentation layer*: permette di trasformare i dati elaborati dal Business layer e le informazioni in una forma comprensibile e accessibile agli utenti finali. Questo include la creazione di interfacce utente grafiche e visualizzazioni 3D degli elementi di interesse.

#figure(
  image("./imgs/layeredArchitecture.png", width: 100%),
  caption: [
    Layered architecture.
  ],
)

=== Vantaggi
- Ogni livello dell'archiettetura crea un livello di astrazione che permette di perseguire _separation of concerns_ e di rendere il software più manutenibile e scalabile;
- Semplicità di implementazione in termini di costi e tempo;
- Facilità di test e debug;

=== Svantaggi
- Cambiamenti consistenti possono richiedere modifiche in layer diversi.

== Design pattern utilizzati

=== Data Mapper <data_mapper>
Il design pattern Data Mapper viene utilizzato per interpretare i dati letti del database mantenendo separate la logica di business dal layer di persistenza. Le classi relative a questo pattern fungono da intermediari tra l'applicazione e la sorgente dati e sono responsabili della conversione delle strutture dati atte alla persistenza (ottenute in formato JSON a seguito di query al database) in oggetti del dominio dell'applicazione.

=== Repository <repository>
Il design pattern Repository viene implementato per separare la logica di business dalla logica di accesso ai dati. Le classi relative a questo pattern eseguono operazioni di lettura, aumentando l'astrazione dei dettagli specifici della persistenza dei dati e permettendo all'applicazione di interagirvi in modo indipendente dal tipo di archivio sottostante.

=== Provider <provider>
Il design pattern Provider viene applicato nel contesto tecnologico del progetto, soprattutto rispetto all'utilizzo di React, vengono sfruttate delle Context API per permette di gestire e trasferire i dati attraverso l'albero dei componenti in modo strutturato, evitando il "prop drilling", ovvero l'effetto che si verifica nei casi in cui è necessario trasportare i dati attraverso più livelli di componenti, anche se alcuni di essi non ne necessitano.

=== Strategy <strategy>
Il design pattern Strategy consente di definire una famiglia di algoritmi, incapsularli in classi separate e renderli intercambiabili. In questo modo è possibile applicare l'algoritmo appropriato senza dover conoscere i dettagli implementativi.

È stato implementato nella gestione di diversi algoritmi di creazione del piano, degli algoritmi di ricerca dei prodotti e degli algoritmi di ricerca delle zone.

=== Factory <factory>
Il design pattern Factory permette, definendo un'interfaccia comune, la creazione di oggetti senza specificarne esplicitamente le classi esatte, lasciando alle sottoclassi la decisione su quale istanziare.

È stato adottato per separare l'implementazione dalla creazione degli oggetti relativi agli algoritmi di ricerca dei prodotti e delle zone.



== Classi e Componenti
Ciascun layer possiede il suo indipendente sistema di classi e componenti e prevede metodi per comunicare con i layer adiacenti.

=== Persistence layer
Mediante le Server Action offerte da Next.js, vengono eseguite delle query SQL atte alla lettura dei dati utili all'applicazione da un database esterno.
Esse sono implementate e rese disponibili in file separati, organizzati nell'omonima cartella "Server Action", contenente:

- *getAllBins*: ritorna le informazioni di tutti i bin lette dal database;

- *getBinById*: dato un codice identificativo univoco, ritorna le informazioni relative al bin corrispondente lette dal database;

- *getAllCategories*: ritorna le informazioni di tutte le categorie di prodotti lette dal database;

- *getAllProducts*: ritorna le informazioni di tutti i prodotti lette dal database;

- *getProductById*: dato un codice identificativo univoco, ritorna le informazioni relative al prodotto corrispondente lette dal database;

- *SVGSanitize*: dato un path ad un file SVG caricato, ritorna il contenuto del relativo file SVG sanificato, ovvero normalizzato e reso sicuro, prevenendo attacchi XSS;

- *readSavedSVG*: ritorna il contenuto del file SVG salvato su server;

- *saveSVG*: dato il contenuto di un file SVG, esso viene salvato come _saved.svg_;

- *getAllZones*: ritorna le informazioni di tutte le zone lette dal database;

- *getBinsByZoneId*: dato un codice identificativo univoco, ritorna le informazioni relative a tutti i bin contenuti nella zona corrispondente lette dal database;

- *getZoneById*: dato un codice identificativo univoco, ritorna le informazioni relative alla zona corrispondente lette dal database.


Al fine di agevolare la divisione tra il Persistence layer ed il Business layer, viene utilizzato il pattern Repository (@repository) mediante classi che implementano l'interfaccia `dataRepositoryInterface`, quali:

- *binRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Bin`;

- *productRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Product`;

- *zoneRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Zone`.

Il pattern Repository impiega in maniera consequenziale le classi correlate del pattern Data Mapper (@data_mapper), le quali implementano l'interfaccia `DataMapperInterface`.
Di seguito sono elencate le classi specifiche:

- *binMapper*: è responsabile della creazione di oggetti `Bin`;

- *productMapper*: è responsabile della creazione di oggetti `Product`;

- *zoneMapper*: è responsabile della creazione di oggetti `Zone`.



#figure(
  image("./imgs/Persistence Layer patterns class diagram.svg", width: 100%),
  caption: [
    Diagramma delle classi del layer di persistenza
  ],
)

Nel diagramma delle classi del layer di persistenza fornito, le classi `Zone`, `Bin` e `Product` sono rappresentate senza gli attributi e i metodi per garantire una maggiore chiarezza grafica.
Tali informazioni sono rappresentate dettagliatamente nel diagramma delle classi del layer di business.

=== Business layer
Le classi che vengono utilizzate per rappresentare il modello dell'applicativo sono:

- *Bin*:

  rappresenta un elemento bin, ovvero uno spazio definito in grado di contenere un prodotto.
  I suoi attributi sono:

  - *id*: stringa di massimo dieci caratteri che rappresenta il codice identificativo univoco del bin.
    Essa è composta da:
    #align(center, `idZona_letteraColonna_numeroLivello`)

    La lettera corrispondente alla colonna fa riferimento ad una mappatura per cui "A" equivale alla colonna zero e viene incrementata seguendo i caratteri dell'alfabeto inglese con l'aumentare del numero della colonna.

    Dopo la lettera "Z" viene utilizzato "AA" proseguendo con la logica descritta;

  - *level*: intero che rappresenta il numero del del livello di appartenenza;

  - *column*: intero che rappresenta il numero della colonna di appartenenza;

  - *height*: numero in virgola mobile che rappresenta l'altezza del bin;

  - *length*: numero in virgola mobile che rappresenta la profondità del bin;

  - *width*: numero in virgola mobile che rappresenta la larghezza del bin;

  - *product*: riferimento al prodotto contenuto nel bin. Può essere `null`.

  - *state*: enum `BinState` che identifica lo stato di un bin contestualmente alla richiesta di spostamento dei prodotti.

    Può assumere i valori:

    - *Idle*: valore di default, dichiara che il bin non è coinvolto in richieste di spostamento di prodotti;

    - *ProductIncoming*: dichiara che il bin è coinvolto in una richiesta di spostamento di un prodotto, il quale deve essere immesso al suo interno;

    - *ProductOutgoing*: dichiara che il bin è coinvolto in una richiesta di spostamento del prodotto al suo interno, il quale deve essere prelevato.


Per ogni attributo è presente il corrispondente metodo get.

Sono presenti i metodi set per gli attributi `id`, `product` e `state`.

Inoltre è previsto il metodo `clearProduct` che permette di assegnare il valore `null` all'attributo che riferisce il prodotto contenuto nel bin.

\
- *Zone*:

  rappresenta un elemento zona, può essere interpretata come uno scaffale oppure, nel caso abbia un solo livello, come una zona del piano definita per contenere bin.
  I suoi attributi sono:

  - *id*: intero che rappresenta il codice identificativo univoco della zona;

  - *xcoordinate*: numero in virgola mobile che rappresenta la coordinata X di posizione nel piano;

  - *ycoordinate*: numero in virgola mobile che rappresenta la coordinata Y di posizione nel piano;

  - *height*: numero in virgola mobile che rappresenta l'altezza della zona;

  - *length*: numero in virgola mobile che rappresenta la profondità della zona;

  - *width*: numero in virgola mobile che rappresenta la larghezza della zona;

  - *bins*: lista di elementi Bin contenuti nella zona;

  - *orientation*: booleano che identifica l'orientamento (perpendicolare o parallelo) della zona rispetto all'asse delle ascisse del piano.

  \
  Per ogni attributo è presente il corrispondente metodo get.

  Sono disponibili i metodi set per gli attributi `xcoordinate` e `ycoordinate`.

  Sono inoltre forniti i metodi:

  - *getBin*: dato un codice identificativo univoco, ritorna l'elemento `Bin` corrispondente presente in `bins`, oppure `null` se non presente;

  - *getLevels*: ritorna una lista contenente le liste di bin che rappresentano i livelli della zona;

  - *getColumns*: ritorna una lista contenente le liste di bin che rappresentano le colonne della zona;

  - *getMaxUsedLevel*: ritorna il numero dell'ultimo livello della zona con almeno un bin contenente un prodotto;

  - *getMaxUsedColumn*: ritorna il numero dell'ultima colonna della zona con almeno un bin contenente un prodotto.

\
- *Product*:

  rappresenta un prodotto, i suoi attributi sono:

  - *id*: intero che rappresenta il codice identificativo univoco del prodotto;

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

  - *id*: intero che rappresenta il codice identificativo univoco della richiesta;

  - *startPoint*: riferimento al bin iniziale;

  - *endPoint*: riferimento al bin finale;

  - *product*: riferimento al prodotto da spostare.

  Per ogni attributo è presente il corrispondente metodo get.



\
- *SVG*:

  rappresenta un file SVG utilizzato per la configurazione dell'ambiente di lavoro mediante file.
  I suoi attributi sono:

  - *length*: numero in virgola mobile che rappresenta la lunghezza dell'immagine rappresentata dal file;
  - *width*: numero in virgola mobile che rappresenta la larghezza dell'immagine rappresentata dal file;
  - *svg*: stringa contenente il path del file.

  Per ogni attributo è presente il corrispondente metodo get.

\
- *Floor*:

  rappresenta il piano dell'ambiente 3D, i suoi attributi sono:

  - *length*: numero in virgola mobile che rappresenta la profondità del piano;

  - *width*: numero in virgola mobile che rappresenta la larghezza del piano;

  - *SVG*: elemento `SVG` utilizzato per la configurazione dell'ambiente di lavoro. Nel caso in cui non sia stato identificato nessun file SVG, la variabile è `null`.

  Per ogni attributo è presente il corrispondente metodo get e set.

  Inoltre è presente il metodo `clone` utile per creare una copia dell'oggetto invocante.

  Potendo generare l'oggetto `Floor` con modalità diverse a seconda della presenza del file SVG, la sua creazione è gestita tramite il design pattern Strategy (@strategy) e le relative classi che implementano l'interfaccia `FloorStrategy`:

  - *StandardFloorStrategy*: rappresenta la creazione di un elemento `Floor` senza file SVG;

  - *CustomFloorStrategy*: rappresenta la creazione di un elemento `Floor` con file SVG;

  Inoltre è presente la classe:

  - *FloorStrategyContext*: utilizza un `FloorStrategy` per generare un elemento `Floor`.


#figure(
  image("./imgs/Business Layer classes.svg", width: 90%),
  caption: [
    Diagramma delle classi del layer di business
  ],
)

#figure(
  image("./imgs/Business Layer floor.svg", width: 100%),
  caption: [
    Diagramma delle classi Floor del layer di business
  ],
)

\
Per gestire la possibilità di cercare specifici prodotti e specifiche zone, sono state realizzate delle classi che permettono l'implementazione dei design pattern Strategy (@strategy) e Factory (@factory).

Le classi relative al design pattern Strategy implementano l'interfaccia `SearchStrategy` e sono:

- *ProductSearchStrategy*: permette la ricerca di prodotti in base al loro codice identificativo, nome o categoria;

- *ZoneSearchStrategy*: permette la ricerca di zone in base al loro codice identificativo.

\
La classe relativa al design pattern Factory è:

- *SearchStrategyFactory*: permette l'adozione del corretto algoritmo di ricerca in funzione del tipo di oggetto fornito.

#figure(
  image("./imgs/Business Layer search.svg", width: 100%),
  caption: [
    Diagramma delle classi Search del layer di business
  ],
)


\
In aggiunta alle classi, per aderire all'adozione del pattern Provider (@provider), sono presenti i componenti:

- *warehouseProvider*: fornisce un provider per gestire dati relativi alle variabili di contesto dell'ambiente grafico;

- *ElementDetailsProvider*: fornisce un provider per gestire dati relativi ai componenti da visualizzare in un pannello dedicato;

- *formContextProvider*: fornisce un provider per gestire dati relativi allo stato di processing di un form;

- *binsProvider*: fornisce un provider per gestire dati relativi agli oggetti `Bin`;

- *floorProvider*: fornisce un provider per gestire dati relativi agli oggetti `Floor`;

- *ordersProvider*: fornisce un provider per gestire dati relativi agli oggetti `Order`;

- *productsProvider*: fornisce un provider per gestire dati relativi agli oggetti `Product`;

- *zonesProvider*: fornisce un provider per gestire dati relativi agli oggetti `Zone`.


=== Presentation layer
==== UI
L'interfaccia utente è realizzata mediante elementi importati da Shadcn-UI e componenti personalizzati.

I componenti realizzati sono i seguenti:

- *Form di creazione*:

  - *creationForm*: componente dedicato alla selezione della modalità di creazione dell'ambiente di lavoro;

  - *dropFileArea*: componente dedicato al caricamento di un file SVG;

  - *manualCreationFrame*: componente dedicato alla creazione manuale dell'ambiente di lavoro;

  - *svgCreationFrame*: componente dedicato alla definizione dei parametri di creazione dell'ambiente di lavoro mediante file SVG;

  - *zodScheme*: schema dedicato alla validazione dei dati di creazione dell'ambiente di lavoro.

- *Componenti relativi ai bin*:

  - *binItemDetails*: componente dedicato alla visualizzazione delle informazioni dettagliate di un bin.

- *Componenti relativi agli ordini*:

  - *orderItem*: componente dedicato alla visualizzazione di un ordine;

  - *ordersPanel*: componente dedicato alla visualizzazione ordinata di tutti gli ordini dall'ultimo effettuato al meno recente. Ogni ordine è rappresentato da un `OrderItem`.

- *Componenti relativi ai prodotti*:

  - *productItem*: componente dedicato alla visualizzazione di un prodotto;

  - *productItemDetails*: componente dedicato alla visualizzazione delle informazioni dettagliate di un prodotto;

  - *productsPanel*: componente dedicato alla visualizzazione di tutti i prodotti.

- *Componenti relativi alle impostazioni*:

  - *floorDimensionsItem*: componente dedicato alla visualizzazione delle dimensioni del piano;

  - *restoreItem*: componente dedicato al comando atto al ripristino o alla reimpostazione dell'ambiente di lavoro. Il ripristino permette di caricare nuovamente, con i parametri precedentemente specificati, l'ambiente di lavoro, mentre è possibile eseguirne una riconfigurazione mediante la reimpostazione;

  - *settingsPanel*: componente dedicato al pannello delle impostazioni contenente la versione del software e i componenti `floorDimensionsItem` e `restoreItem`;

  - *zodDimensionScheme*: schema dedicato alla validazione dei dati dimensionali per la modifica del piano.

- *Zone*:

  - *bin_columns*: componente dedicato alla visualizzazione delle colonne di bin di una zona (necessario al componente `ZoneItemDetails` utilizzato);

  - *levelItem*: componente dedicato alla visualizzazione di un livello della zona durante il processo di creazione/modifica dello stesso;

  - *zoneCreationFrame*: componente dedicato alla creazione di una zona;

  - *zoneItem*: componente dedicato alla visualizzazione di una zona;

  - *zoneItemDetails*: componente dedicato alla visualizzazione delle informazioni dettagliate di una zona;

  - *zonePanel*: componente dedicato alla visualizzazione di tutte le zone;

  - *zoneZodSchemes*: schemi dedicati alla validazione dei dati necessari alla creazione di una zona, sia durante la configurazione manuale, che mediante inserimento di un file SVG.

- *panel*: componente generico utilizzato per la visualizzazione e l'organizzazione dei componenti al suo interno.


==== Three.js
L'ambiente tridimensionale è realizzato mediante i componenti:

- *Floor*: elemento che rappresenta il piano dell'ambiente di lavoro;

- *Bin3D*: elemento che rappresenta un bin nell'ambiente di lavoro;

- *Zone3D*: elemento che rappresenta uno scaffale o un'area del piano dedicata al contenimento di bin nell'ambiente di lavoro;

- *Warehouse*: elemento che contiene la logica principale della visualizzazione dell'ambiente grafico ed il canvas con gli elementi 3D.


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




#pagebreak()

= Requisiti soddisfatti

Di seguito vengono riportati i requisti funzionali e di qualità soddisfatti dall'applicazione.

Per una visione più completa sui requisiti si rimanda al documento #adr_v.

== Requisiti funzionali soddisfatti

#show figure: set block(breakable: true)
#show "#ndp_v": [#ndp_v]
#show "#pdq_v": [#pdq_v]
#show "<=": [$<=$]
#let requirements = json("requirements.json");


#let filterFunctionalRequirements() = {
  let subset = ()
  let fields = ("id", "description", "achieved")
    for item in requirements.at("functional") {
      for field in fields {
        if field == "achieved" {
          if item.at(field) {
            subset.push("Soddisfatto")
          }
          else {
            subset.push("Non soddisfatto")
          }
        }
        else {
          subset.push(item.at(field))
        }
      }
    }
  return subset
}

#figure(
  table(
    columns: (15%, 65%, 20%),
    align: (center, left, center),
    [*Codice*], [*Descrizione*], [*Stato*],
    ..filterFunctionalRequirements()
  ),
  caption: [Requisiti funzionali]
)

== Requisiti di qualità soddisfatti

#let filterQualityRequirements() = {
  let subset = ()
  let fields = ("id", "description", "achieved")
    for item in requirements.at("quality") {
      for field in fields {
        if field == "achieved" {
          if item.at(field) {
            subset.push("Soddisfatto")
          }
          else {
            subset.push("Non soddisfatto")
          }
        }
        else {
          subset.push(item.at(field))
        }
      }
    }
  return subset
}

#figure(
  table(
    columns: (15%, 65%, 20%),
    align: (center, left, center),
    [*Codice*], [*Descrizione*], [*Stato*],
    ..filterQualityRequirements()
  ),
  caption: [Requisiti di qualità]
)
