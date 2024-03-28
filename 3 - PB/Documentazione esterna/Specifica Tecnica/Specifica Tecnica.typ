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

Ciascun layer possiede il suo sistema di classi e componenti e prevede metodi per comunicare con i layer adiacenti.

#figure(
  image("./imgs/layeredArchitecture.png", width: 100%),
  caption: [
    Layered architecture.
  ],
)

=== Vantaggi
- Ogni livello dell'archiettetura crea un livello di astrazione che permette di perseguire la _separation of concerns_ e di rendere il software più manutenibile e scalabile;
- Semplicità di implementazione in termini di costi e tempo;
- Semplicità di test e debug.

=== Svantaggi
- Cambiamenti consistenti possono richiedere modifiche in layer diversi.

== Persistence layer
Il layer di persistenza è responsabile della gestione dell'accesso al database e della lettura dei dati al suo interno. I dati letti vengono processati e trasformati in oggetti del Business layer.

\
=== Next.js Server Actions

L'accesso al database avviene mediante Server Actions, feature offerta da Next.js che permette la definizione di codice eseguibile solamente lato server, senza eseguire operazioni di fetch tipiche delle chiamate API. Questo permette di non esporre sulla rete endpoint sensibili e di mantenere la sicurezza dei dati.

Quando viene richiamata una Server Action, Next.js può restituire sia l'interfaccia utente aggiornata sia i nuovi dati in un'unica risposta, integrandosi perfettamente con l'architettura _caching and revalidating_ di Next.js. Tale architettura implementa una strategia di caching ottimizzata per massimizzare le prestazioni e minimizzare i costi. Questo comporta la generazione statica delle route e la memorizzazione nella cache delle richieste di dati. Il diagramma sottostante illustra il comportamento predefinito della cache: una route viene generata staticamente al momento della compilazione o quando viene visitata per la prima volta.

#figure(
  image("./imgs/nextjs-caching.png", width: 80%),
  caption: [
    Next.js caching and revalidating.
  ],
)

Le Server Action sono del tutto analoghe all'utilizzo di una funzione all'interno del codice, ma con la differenza che la sua esecuzione avviene lato server, mediante una chiamata POST interamente gestita da Next.js.

Il risultato della chiamata viene restituito in formato JSON.

\
=== Server Actions implementate

Le Server Actions implementate trovano applicazione in operazioni di lettura dal database, pertanto la natura asincrona delle operazioni implica l'utilizzo di Promise per la gestione dei risultati.

- *getAllBins*:
  - *obiettivo: * ottenere le informazioni di tutti i bin presenti nel database;
  - *parametri: * nessuno;
  - *risultati:*
    - *Esito positivo: * JSON contenente lista dei bin presenti nel database;
    - *Esito negativo: * JSON vuoto.
\
- *getBinById*:
  - *obiettivo: * dato un codice identificativo univoco, ritorna le informazioni relative al bin corrispondente lette dal database;
  - *parametri: * `id:string` del bin interessato;
  - *risultati; *
    - *Esito positivo: * JSON contenente le informazioni del bin corrispondente;
    - *Esito negativo: * JSON vuoto.

\
- *getAllCategories*:
  - *obiettivo: * ottenere le informazioni di tutte le categorie presenti nel database;
  - *parametri: * nessuno;
  - *risultati: *
    - *Esito positivo: * JSON contenente lista delle categorie presenti nel database;
    - *Esito negativo: * JSON vuoto.

\
- *getAllProducts*:
  - *obiettivo: * ottenere le informazioni di tutti i prodotti presenti nel database;
  - *parametri: * nessuno;
  - *risultati: *
    - *Esito positivo: * JSON contenente lista dei prodotti presenti nel database;
    - *Esito negativo: * JSON vuoto.

\
- *getProductById*:
  - *obiettivo: * dato un codice identificativo univoco, ritorna le informazioni relative al prodotto corrispondente lette dal database;
  - *parametri: * `id:string` del prodotto interessato;
  - *risultati: *
    - *Esito positivo: * JSON contenente le informazioni del prodotto corrispondente;
    - *Esito negativo: * JSON vuoto.

\
- *SVGSanitize*:
  - *obiettivo: * dato un file SVG, ne effettua la sanificazione da elementi non necessari;
  - *parametri: * `svg:string` del file SVG da sanificare;
  - *risultati: *
    - *Esito positivo: * JSON contenente il file SVG pulito;
    - *Esito negativo: * JSON vuoto.

\
- *readSavedSVG*:
  - *obiettivo: * leggere il contenuto di un file SVG salvato;
  - *parametri: * nessuno;
  - *risultati: *
    - *Esito positivo: * JSON contenente il file SVG salvato;
    - *Esito negativo: * JSON vuoto.

\
- *saveSVG*:
  - *obiettivo: * salvare un file SVG sul server;
  - *parametri: * `svg:string` del file SVG da salvare;
  - *risultati: *
    - *Esito positivo: * JSON contenente il file SVG salvato;
    - *Esito negativo: * JSON vuoto.

\
- *getAllZones*:
  - *obiettivo: * ottenere le informazioni di tutte le zone presenti nel database;
  - *parametri: * nessuno;
  - *risultati: *
    - *Esito positivo: * JSON contenente lista delle zone presenti nel database;
    - *Esito negativo: * JSON vuoto.

\
- *getBinsByZoneId*:
  - *obiettivo: * dato un codice identificativo univoco, ritorna le informazioni relative ai bin presenti nella zona corrispondente lette dal database;
  - *parametri: * `id:string` della zona interessata;
  - *risultati: *
    - *Esito positivo: * JSON contenente lista dei bin presenti nella zona corrispondente;
    - *Esito negativo: * JSON vuoto.

\
- *getZoneById*:
  - *obiettivo: * dato un codice identificativo univoco, ritorna le informazioni relative alla zona corrispondente lette dal database;
  - *parametri: * `id:string` della zona interessata;
  - *risultati: *
    - *Esito positivo: * JSON contenente le informazioni della zona corrispondente;
    - *Esito negativo: * JSON vuoto.

\
=== Repository Pattern
Il Repository Pattern permette di separare la logica di business dalla logica di accesso ai dati, garantendo una maggiore flessibilità e manutenibilità del codice. L'obiettivo è creare un livello di astrazione tra la logica di accesso ai dati e la logica di business, consentendo di modificare l'implementazione del database senza influenzare il codice di business.

*Vantaggi*
- Dependency inversion principle: i moduli di alto livello non dipendono dai moduli di basso livello, rendendo la logica di business indipendente dalla logica di accesso ai dati;
- La separazione tra la logica di business e la logica di accesso ai dati semplifica la manutenzione e il testing del codice.

\
*Interfaccia implementata*
- *DataMapperInterface*: interfaccia che definisce i metodi per la creazione di oggetti a partire dai dati letti dal database.
  - *Metodi:*
    - *getAll*:
      - *obiettivo: * ottenere tutte le informazioni relative agli oggetti;
      - *parametri: * nessuno;
      - *risultati: *
        - *Esito positivo: * Promise contenente la lista degli oggetti;
        - *Esito negativo: * Promise contenente lista vuota.
    - *getById*:
      - *obiettivo: * ottenere le informazioni relative all'oggetto corrispondente al codice identificativo univoco;
      - *parametri: * `id:string` dell'oggetto interessato;
      - *risultati: *
        - *Esito positivo: * Promise contenente le informazioni dell'oggetto corrispondente;
        - *Esito negativo: * Promise contenente lsita vuota.

\
*Classi implementate*

L'interfaccia `DataMapperInterface` è implementata dalle seguenti classi:

- *binRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Bin`.
  - *Metodi*:
    - *getAll*: ottiene tutte le informazioni relative ai bin;
    - *getById*: ottiene le informazioni relative al bin corrispondente al codice identificativo univoco.

- *productRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Product`.
  - *Metodi*:
    - *getAll*: ottiene tutte le informazioni relative ai prodotti;
    - *getById*: ottiene le informazioni relative al prodotto corrispondente al codice identificativo univoco.

- *zoneRepository*: è responsabile dell'ottenimento dei dati relativi agli oggetti `Zone`.
  - *Metodi*:
    - *getAll*: ottiene tutte le informazioni relative alle zone;
    - *getById*: ottiene le informazioni relative alla zona corrispondente al codice identificativo univoco.

\
=== Data Mapper Pattern
Il Data Mapper Pattern, assieme al Repository Pattern, permette di separare la logica di business dalla logica di accesso ai dati. Il Data Mapper Pattern si occupa di mappare i dati letti dal database in oggetti del Business layer, garantendo una maggiore flessibilità e manutenibilità del codice.

Permette la mappatura dei dati letti dal database in oggetti del Business layer, stabilendo un contratto che i dati letti devono rispettare per essere trasformati in oggetti.

*Vantaggi*
- Separazione della logica di business dalla logica di accesso ai dati;
- Permette di circoscrivere la complessità relativa alla logica di creazione degli oggetti di business;
- Maggiore flessibilità e manutenibilità del codice;
- Facilità di testing e debugging.

\
*Interfaccia implementata*
- *DataMapperInterface*: interfaccia che definisce i metodi per la creazione di oggetti a partire dai dati letti dal database.
  - *Metodi:*
    - *toDomain*: metodo astratto che definisce la logica di mappatura dei dati JSON recuperati dal database in oggetti di business.
      - *parametri*: `data:JSON` contenente i dati recuperati dal database;
      - *risultati*: oggetto di tipo `T` corrispondente all'oggetto di business.

\
*Classi implementate*
- *binMapper*: è responsabile della creazione di oggetti `Bin`.
  - *Metodi:*
    - *toDomain*: mappatura dei dati JSON in oggetti `Bin`.

- *productMapper*: è responsabile della creazione di oggetti `Product`.
  - *Metodi:*
    - *toDomain*: mappatura dei dati JSON in oggetti `Product`.

- *zoneMapper*: è responsabile della creazione di oggetti `Zone`
  - *Metodi:*
    - *toDomain*: mappatura dei dati JSON in oggetti `Zone`.

#figure(
  image("./imgs/Persistence Layer patterns class diagram.svg", width: 100%),
  caption: [
    Diagramma delle classi del layer di persistenza
  ],
)

Nel diagramma delle classi del layer di persistenza fornito, le classi `Zone`, `Bin` e `Product` sono rappresentate senza gli attributi e i metodi per garantire una maggiore chiarezza grafica.
Tali informazioni sono rappresentate dettagliatamente nel diagramma delle classi del layer di business.

\
== Business layer
Il layer di business è responsabile dell'elaborazione dei dati ricevuti dal layer di persistenza e dell'applicazione delle regole di business definite. È responsabile di implementare la logica dell'applicazione in modo indipendente dalle tecnologie di persistenza e di presentazione utilizzate.

\
=== Bin

Rappresenta un elemento bin, ovvero uno spazio definito in grado di contenere un prodotto.

\
*Attributi*:
- *id*:
  - *descrizione*: stringa di massimo 10 caratteri che rappresenta il codice identificativo univoco del bin. La struttura dell'id è la seguente:
  #align(center, `idZona_letteraColonna_numeroLivello`)

    La lettera corrispondente alla colonna fa riferimento ad una mappatura per cui "A" equivale alla colonna zero, e viene incrementata seguendo i caratteri dell'alfabeto inglese con l'aumentare del numero della colonna.

    Dopo la lettera "Z" viene utilizzato "AA" proseguendo con la logica descritta;
  - *tipo*: `string`;
  - *visibilità*: `private`.
\
- *level*:
  - *descrizione*: intero che rappresenta il numero del livello di appartenenza;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *column*:
  - *descrizione*: intero che rappresenta il numero della colonna di appartenenza;
  - *tipo*: `number`;
  - *visibilità*: `private`.
\
- *height*:
  - *descrizione*: numero in virgola mobile che rappresenta l'altezza del bin;
  - *tipo*: `number`;
  - *visibilità*: `private`.
\
- *length*:
  - *descrizione*: numero in virgola mobile che rappresenta la profondità del bin;
  - *tipo*: `number`;
  - *visibilità*: `private`.
\
- *width*:
  - *descrizione*: numero in virgola mobile che rappresenta la larghezza del bin;
  - *tipo*: `number`;
  - *visibilità*: `private`.
\
- *product*:
  - *descrizione*: oggetto `Product` che rappresenta il prodotto contenuto nel bin;
  - *tipo*: `Product`;
  - *visibilità*: `private`.

\
- *state*:
  - *descrizione*: enumerazione `BinState` che identifica lo stato di un bin contestualmente alla richiesta di spostamento dei prodotti.
    - *Valori dell'enumerazione*:
      - *Idle*: valore di default, dichiara che il bin non è coinvolto in richieste di spostamento di prodotti;
      - *ProductIncoming*: dichiara che il bin è coinvolto in una richiesta di spostamento di un prodotto, il quale deve essere immesso al suo interno;
      - *ProductOutgoing*: dichiara che il bin è coinvolto in una richiesta di spostamento del prodotto al suo interno, il quale deve essere prelevato.
  - *tipo*: BinState.
  - *visibilità*: `private`.

\
*Metodi*:
- *Getters*:
  - Getters presenti per ogni attributo della classe.
- *Setters*:
  - *setId*:
    - *obiettivo*: permette di modificare l'attributo `id`;
    - *parametri*: `id:string` che rappresenta il nuovo codice identificativo univoco;
    - *tipo di ritorno*: `void`.
  - *setProduct*:
    - *obiettivo*: permette di assegnare un prodotto al bin;
    - *parametri*: `product:Product` che rappresenta il prodotto da assegnare;
    - *tipo di ritorno*: `void`.
  - *setState*:
    - *obiettivo*: permette di modificare lo stato del bin;
    - *parametri*: `state:BinState` che rappresenta il nuovo stato;
    - *tipo di ritorno*: `void`.
- *clearProduct*:
  - *obiettivo*: permette di assegnare il valore `null` all'attributo `product`;
  - *parametri*: nessuno;
  - *tipo di ritorno*: `void`.

\
=== Zone

Rappresenta una zona di contenimento dei bin, interpretabile come scaffale (se a più livelli) o area singola di stoccaggio (se a un solo livello).

\
*Attributi*:
- *id*:
  - *descrizione*: stringa di massimo 10 caratteri che rappresenta il codice identificativo univoco della zona;
  - *tipo*: `string`;
  - *visibilità*: `private`.

\
- *xcoordinate*:
  - *descrizione*: numero in virgola mobile che rappresenta la coordinata X di posizione nel piano;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *ycoordinate*:
  - *descrizione*: numero in virgola mobile che rappresenta la coordinata Y di posizione nel piano;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *height*:
  - *descrizione*: numero in virgola mobile che rappresenta l'altezza della zona;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *length*:
  - *descrizione*: numero in virgola mobile che rappresenta la profondità della zona;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *width*:
  - *descrizione*: numero in virgola mobile che rappresenta la larghezza della zona;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *bins*:
  - *descrizione*: lista di oggetti `Bin` che rappresentano i bin presenti nella zona;
  - *tipo*: `Bin[]`;
  - *visibilità*: `private`.

\
- *orientation*:
  - *descrizione*: enumerazione `ZoneOrientation` che identifica l'orientamento della zona rispetto all'asse X.
  - *tipo*: `boolean`:
    - *True*: orientamento orizzontale, parallelo all'asse X;
    - *False*: orientamento verticale, perpendicolare all'asse X.
  - *visibilità*: `private`.

\
*Metodi*:
- *Getters*:
  - Getters presenti per ogni attributo della classe.
- *Setters*:
  - *setXCoordinate*:
    - *obiettivo*: permette di modificare la coordinata X di posizione nel piano;
    - *parametri*: `x:number` che rappresenta la nuova coordinata X;
    - *tipo di ritorno*: void.
  - *setYCoordinate*:
    - *obiettivo*: permette di modificare la coordinata Y di posizione nel piano;
    - *parametri*: `y:number` che rappresenta la nuova coordinata Y;
    - *tipo di ritorno*: void.
- *getBin*:
  - *obiettivo*: ottenere il bin corrispondente ad un codice identificativo univoco;
  - *parametri*: `id:string` del bin interessato;
  - *tipo di ritorno*: `Bin` corrispondente al codice identificativo univoco fornito o `null`.

- *getLevels*:
  - *obiettivo*: ottenere una lista contenente le liste di bin che rappresentano i livelli della zona;
  - *parametri*: nessuno;
  - *tipo di ritorno*: lista di liste di bin `Bin[[]]`.

- *getColumns*:
  - *obiettivo*: ottenere una lista contenente le liste di bin che rappresentano le colonne della zona;
  - *parametri*: nessuno;
  - *tipo di ritorno*: lista di liste di bin `Bin[[]]`.

- *getMaxUsedLevel*:
  - *obiettivo*: ottenere il numero dell'ultimo livello della zona con almeno un bin contenente un prodotto;
  - *parametri*: nessuno;
  - *tipo di ritorno*: intero che rappresenta il numero dell'ultimo livello `number`;

- *getMaxUsedColumn*:
  - *obiettivo*: ottenere il numero dell'ultima colonna della zona con almeno un bin contenente un prodotto;
  - *parametri*: nessuno;
  - *tipo di ritorno*: intero che rappresenta il numero dell'ultima colonna `number`;

\
=== Product

Rappresenta il prodotto da gestire in magazzino.

\
*Attributi*:
- *id*:
  - *descrizione*: stringa di massimo 10 caratteri che rappresenta il codice identificativo univoco del prodotto;
  - *tipo*: `string`.
  - *visibilità*: `private`.

\
- *name*:
  - *descrizione*: stringa che rappresenta il nome del prodotto;
  - *tipo*: `string`.
  - *visibilità*: `private`.

\
- *weight*:
  - *descrizione*: numero in virgola mobile che rappresenta il peso del prodotto;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *height*:
  - *descrizione*: numero in virgola mobile che rappresenta l'altezza del prodotto;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *length*:
  - *descrizione*: numero in virgola mobile che rappresenta la profondità del prodotto;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *width*:
  - *descrizione*: numero in virgola mobile che rappresenta la larghezza del prodotto;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *categories*:
  - *descrizione*: lista di stringhe che rappresentano le categorie di appartenenza del prodotto;
  - *tipo*: `string[]`.
  - *visibilità*: `private`.

\
*Metodi*:
- *Getters*:
  - Getters presenti per ogni attributo della classe.

\
=== Order

Rappresenta un ordine di movimentazione di un prodotto tra un bin di partenza e uno di destinazione.

\
*Attributi*:
- *id*:
  - *descrizione*: stringa di massimo 10 caratteri che rappresenta il codice identificativo univoco dell'ordine;
  - *tipo*: `string`.
  - *visibilità*: `private`.

\
- *startPoint*:
  - *descrizione*: oggetto `Bin` che rappresenta il bin di partenza dell'ordine;
  - *tipo*: `Bin`.
  - *visibilità*: `private`.

\
- *endPoint*:
  - *descrizione*: oggetto `Bin` che rappresenta il bin di destinazione dell'ordine;
  - *tipo*: `Bin`.
  - *visibilità*: `private`.

\
- *product*:
  - *descrizione*: oggetto `Product` che rappresenta il prodotto coinvolto nell'ordine;
  - *tipo*: `Product`.
  - *visibilità*: `private`.

\
*Metodi*:
- *Getters*:
  - Getters presenti per ogni attributo della classe.

\
=== SVG
Rappresenta un file SVG utilizzato per la configurazione dell'ambiente di lavoro mediante file SVG.

\
*Attributi*:
- *length*:
  - *descrizione*: numero in virgola mobile che rappresenta la profondità dell'immagine rappresentata dal file;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *width*:
  - *descrizione*: numero in virgola mobile che rappresenta la larghezza dell'immagine rappresentata dal file;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *svg*:
  - *descrizione*: stringa che rappresenta il contenuto del file SVG;
  - *tipo*: `string`.
  - *visibilità*: `private`.

  \
*Metodi*:
- *Getters*:
  - Getters presenti per ogni attributo della classe.

\
=== Floor
Rappresenta il piano dell'ambiente 3D.

\
*Attributi*:
- *length*:
  - *descrizione*: numero in virgola mobile che rappresenta la profondità del piano;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *width*:
  - *descrizione*: numero in virgola mobile che rappresenta la larghezza del piano;
  - *tipo*: `number`;
  - *visibilità*: `private`.

\
- *SVG*:
  - *descrizione*: oggetto `SVG` che rappresenta il file SVG del piano;
  - *tipo*: SVG.
  - *visibilità*: `private`.

\
*Metodi*:
- *Getters*:
  - Getters presenti per ogni attributo della classe.
- *Setters*:
  - Setters presenti per gli attributi `length`, `width` e `SVG`.
- *clone*:
  - *obiettivo*: permette di creare una copia dell'oggetto invocante;
  - *parametri*: nessuno;
  - *tipo di ritorno*: `Floor`.

\
=== FloorStrategy #text(size: 10pt, fill: gray, style: "italic", "Strategy Pattern")
Potendo generare l'oggetto `Floor` con modalità diverse a seconda della presenza del file SVG, la sua creazione è gestita tramite il design pattern Strategy e le relative classi che implementano l'interfaccia `FloorStrategy`.

La scelta di tale pattern è dettata dalla necessità di separare l'algoritmo di creazione dell'oggetto `Floor` dalla sua implementazione, permettendo di variare il comportamento dell'oggetto in base al contesto. L'input dell'algoritmo di creazione è il medesimo, ma il comportamento varia a seconda della strategia adottata.

\
*Interfaccia implementata*
- *FloorStrategy*: interfaccia che definisce il metodo per la creazione di un oggetto `Floor`.
  - *Metodi*:
    - *createFloor*: metodo astratto che definisce la logica di creazione dell'oggetto `Floor`.
      - *parametri*: `URLSearchParams` che rappresenta i parametri per la creazione dell'oggetto `Floor`;
      - *tipo di ritorno*: Promise contente l'oggetto `Floor` creato.

\
*Classi implementate*

Le classi che implementano l'interfaccia `FloorStrategy` sono:
- *StandardFloorStrategy*:
  - *obiettivo*: rappresenta la creazione di un elemento `Floor` senza file SVG;
  - *metodo*: `createFloor`.

- *CustomFloorStrategy*:
  - *obiettivo*: rappresenta la creazione di un elemento `Floor` con file SVG;
  - *metodo*: `createFloor`.

La decisione in merito alla strategia da adottare è sancita dalla classe `FloorStrategyContext`. Questa classe, in base alla presenza o meno del file SVG, sceglie la strategia da adottare per la creazione dell'oggetto `Floor`.

\
*FloorStrategyContext*

*Attributi*
- *strategy*: oggetto che implementa l'interfaccia `FloorStrategy` che rappresenta la strategia da adottare per la creazione dell'oggetto `Floor`.
*Metodi*
- *Setters*:
  - *setStrategy*: metodo che permette di impostare la strategia da adottare per la creazione dell'oggetto `Floor`.
- *createFloor*:
  - *obiettivo*: metodo che permette di creare l'oggetto `Floor` in base alla strategia adottata;
  - *parametri*: `URLSearchParams` che rappresenta i parametri per la creazione dell'oggetto `Floor`;
  - *tipo di ritorno*: Promise contenente l'oggetto `Floor` creato.


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
=== Search Engine #text(size: 10pt, fill: gray, style: "italic", "Factory e Strategy Pattern")
Il Factory Pattern, utilizzato insieme allo Strategy Pattern, permette di gestire la possibilità di cercare specifici prodotti e specifiche zone. Disponendo infatti di famiglie diverse di algoritmi per la ricerca (Strategy Pattern per Zone e Product), il Factory Pattern permette di adottare il corretto algoritmo in funzione del tipo di oggetto fornito.

\
Lo Strategy Pattern permette di definire una famiglia di algoritmi, incapsularli e renderli intercambiabili. Questo pattern permette di variare l'algoritmo indipendentemente dal contesto in cui viene utilizzato, rendendo facilmente estendibile il sistema di ricerca.

\
*Interfaccia implementata*
- *SearchStrategy\<T extends Zone | Product>*: interfaccia che definisce il metodo per la ricerca di un oggetto. L'interfaccia è parametrizzata in modo da poter essere utilizzata per la ricerca di oggetti di tipo `Zone` o `Product`.

\
*Metodi*
  - *search*: metodo astratto che definisce la logica di ricerca dell'oggetto.
    - *parametri*:
      - *list : T[]*: lista di oggetti in cui cercare;
      - *query : string*: stringa da cercare;
      - *type : string*: tipo di ricerca da effettuare;
    - *tipo di ritorno*: Promise contenente la lista di oggetti che rispondono al parametro di ricerca.

\
*Classi implementate*
- *ProductSearchStrategy*:

  Permette la ricerca di prodotti in base al loro codice identificativo, nome o categoria;

  *Attributi*
   - Nessuno.

  \
  *Metodi*
    - *search*:
      - *obiettivo*: ricerca di prodotti in base al loro codice identificativo, nome o categoria;
      - *parametri*:
        - *list : Product[]*: lista di prodotti in cui cercare;
        - *query : string*: stringa da cercare;
        - *type : string*: tipo di ricerca da effettuare;
          - *Valori ammessi*: "id", "name", "category".
      - *tipo di ritorno*: lista di prodotti che rispondono al parametro di ricerca `Product[]`.

    \
    - *searchById*:
      - *obiettivo*: ricerca di prodotti in base al loro codice identificativo;
      - *parametri*:
        - *list : Product[]*: lista di prodotti in cui cercare;
        - *query : string*: stringa da cercare;
      - *tipo di ritorno*: lista di prodotti che rispondono al parametro di ricerca `Product[]`.

    \
    - *searchByName*:
      - *obiettivo*: ricerca di prodotti in base al loro nome;
      - *parametri*:
        - *list : Product[]*: lista di prodotti in cui cercare;
        - *query : string*: stringa da cercare;
      - *tipo di ritorno*: lista di prodotti che rispondono al parametro di ricerca `Product[]`.

    \
    - *searchByCategory*:
      - *obiettivo*: ricerca di prodotti in base alla categoria;
      - *parametri*:
        - *list : Product[]*: lista di prodotti in cui cercare;
        - *query : string*: stringa da cercare;
      - *tipo di ritorno*: lista di prodotti che rispondono al parametro di ricerca `Product[]`.

\
- *ZoneSearchStrategy*:

  Permette la ricerca di zone in base al loro codice identificativo.

  *Attributi*
   - Nessuno.

  \
  *Metodi*
    - *search*:
      - *obiettivo*: ricerca di zone in base al loro codice identificativo;
      - *parametri*:
        - *list : Zone[]*: lista di zone in cui cercare;
        - *query : string*: stringa da cercare;
        - *type : string*: tipo di ricerca da effettuare;
          - *Valori ammessi*: "id".
      - *tipo di ritorno*: lista di zone che rispondono al parametro di ricerca `Zone[]`.

    \
    - *searchById*:
      - *obiettivo*: ricerca di zone in base al loro codice identificativo;
      - *parametri*:
        - *list : Zone[]*: lista di zone in cui cercare;
        - *query : string*: stringa da cercare;
      - *tipo di ritorno*: lista di zone che rispondono al parametro di ricerca `Zone[]`.

\
- *SearchStrategyFactory*:

Permette la creazione di oggetti `SearchStrategy` in base al tipo di oggetto da cercare.

*Attributi*
- Nessuno.

\
*Metodi*
- *static createSearchStrategy\<T extends Zone | Product>*:
  - *obiettivo*: creazione di oggetti `SearchStrategy` in base al tipo di oggetto da cercare;
  - *parametri*:
    - *type : string*: tipo di oggetto da cercare;
      - *Valori ammessi*: "zone", "product".
  - *tipo di ritorno*: oggetto `SearchStrategy` corrispondente al tipo di oggetto da cercare.

#figure(
  image("./imgs/Business Layer search.svg", width: 100%),
  caption: [
    Diagramma delle classi Search del layer di business
  ],
)


\
=== Provider Pattern
Il Provider Pattern permette di gestire lo stato dell'applicazione in modo centralizzato, permettendo di mantenere lo stato dell'applicazione in un unico punto, semplificando la gestione e la condivisione dei dati tra i componenti. Questo pattern inoltre previene il fenomeno di prop drilling, ovvero la necessità di passare attraverso più livelli di componenti valori che non sono utilizzati direttamente dal componente intermedio.

Inoltre, creando un sistema di controllo dello stato centralizzato e condiviso, si evita la duplicazione dei dati e si facilita la manutenzione del codice.

\
Questo pattern è derivativo dall'utilizzo di React come framework, in quanto la sua stessa natura funzionale è incentrata sulla gestione dello stato dell'applicazione e dei componenti. Le Context API pertanto prevedono la possibilità di dichiarare un contesto contenente dati e funzioni che possono essere condivisi tra i componenti figli.

Questo contesto, mediante i componenti Provider implementati, permette di condividere lo stato dell'applicazione tra i componenti figli, evitando la necessità di passare manualmente i dati attraverso i componenti intermedi.

\
*Componenti implementati*

*Provider del modello*
- *zonesProvider*:
  - *obiettivo*: fornisce un provider per gestire dati relativi agli oggetti `Zone`;
  - *stato gestito*:
    - *zones*: lista di oggetti `Zone` che rappresentano le zone dell'ambiente di lavoro;
      - *tipo*: `Zone[]`.
    - *setZones*: funzione che permette di modificare la lista di oggetti `Zone`;
      - *tipo*: `(zones: Zone[]) => void`.
    - *zonesLoaded*: booleano che rappresenta lo stato di caricamento delle zone;
      - *tipo*: `boolean`.
    - *setZonesLoaded*: funzione che permette di modificare lo stato di caricamento delle zone.
      - *tipo*: `(loaded: boolean) => void`.
  - *tipo*: `JSX.Element`.

\
- *productsProvider*:
  - *obiettivo*: fornisce un provider per gestire dati relativi agli oggetti `Product`;
  - *stato gestito*:
    - *products*: lista di oggetti `Product` che rappresentano i prodotti dell'ambiente di lavoro;
      - *tipo*: `Product[]`.
    - *setProducts*: funzione che permette di modificare la lista di oggetti `Product`;
      - *tipo*: `(products: Product[]) => void`.
    - *productsLoaded*: booleano che rappresenta lo stato di caricamento dei prodotti;
      - *tipo*: `boolean`.
    - *setProductsLoaded*: funzione che permette di modificare lo stato di caricamento dei prodotti.
      - *tipo*: `(loaded: boolean) => void`.
  - *tipo*: `JSX.Element`.

\
- *binsProvider*:
  - *obiettivo*: fornisce un provider per gestire dati relativi agli oggetti `Bin`;
  - *stato gestito*:
    - *bins*: lista di oggetti `Bin` che rappresentano i bin dell'ambiente di lavoro;
      - *tipo*: `Bin[]`.
    - *setBins*: funzione che permette di modificare la lista di oggetti `Bin`;
      - *tipo*: `(bins: Bin[]) => void`.
    - *binsLoaded*: booleano che rappresenta lo stato di caricamento dei bin;
      - *tipo*: `boolean`.
    - *setBinsLoaded*: funzione che permette di modificare lo stato di caricamento dei bin.
      - *tipo*: `(loaded: boolean) => void`.
  - *tipo*: `JSX.Element`.

\
- *ordersProvider*:
  - *obiettivo*: fornisce un provider per gestire dati relativi agli oggetti `Order`;
  - *stato gestito*:
    - *orders*: lista di oggetti `Order` che rappresentano gli ordini dell'ambiente di lavoro;
      - *tipo*: `Order[]`.
    - *setOrders*: funzione che permette di modificare la lista di oggetti `Order`.
      - *tipo*: `(orders: Order[]) => void`.
  - *tipo*: `JSX.Element`.

\
- *floorProvider*:
  - *obiettivo*: fornisce un provider per gestire dati relativi all'oggetto `Floor`;
  - *stato gestito*:
    - *floor*: oggetto `Floor` che rappresenta il piano dell'ambiente di lavoro;
      - *tipo*: `Floor`.
    - *setFloor*: funzione che permette di modificare l'oggetto `Floor`;
      - *tipo*: `(floor: Floor) => void`.
    - *floorRefresher*: valore intero utilizzato per forzare il refresh del piano;
      - *tipo*: `number`.
    - *setFloorRefresher*: funzione che permette di modificare il valore di `floorRefresher`.
      - *tipo*: `(refresher: number) => void`.
  - *tipo*: `JSX.Element`.

\
*Provider per elementi UI*
- *ElementDetailsProvider*
  - *obiettivo*: fornisce un provider per gestire dati relativi ai componenti da visualizzare in un pannello dedicato;
  - *stato gestito*:
    - *elementDetails*: oggetto che rappresenta il componente da visualizzare;
      - *tipo*: `JSX.Element`.
    - *setElementDetails*: funzione che permette di modificare l'oggetto `element`;
      - *tipo*: `(element: JSX.Element) => void`.
    - *showElementDetails*: booleano che rappresenta la visibilità del pannello;
      - *tipo*: `boolean`;
    - *setShowElementDetails*: funzione che permette di modificare la visibilità del pannello.
      - *tipo*: `(show: boolean) => void`.
  - *tipo*: `JSX.Element`.

\
- *formContextProvider*:
  - *obiettivo*: fornisce un provider per gestire dati relativi allo stato di processing di un form. Utilizzato per il lo stato di processing del file SVG caricato durante il processo di configurazione dell'ambiente;
  - *stato gestito*:
    - *processing*: booleano che rappresenta lo stato di processing del form;
      - *tipo*: `boolean`.
    - *setProcessing*: funzione che permette di modificare lo stato di processing del form.
      - *tipo*: `(processing: boolean) => void`.
  - *tipo*: `JSX.Element`.

\
*Provider ambiente 3D*
- *warehouseProvider*
  - *obiettivo*: fornisce un provider per gestire dati relativi alle variabili di contesto dell'ambiente grafico;
  - *stato gestito*:
    - *selectedBin*: oggetto `Bin` che rappresenta il bin selezionato;
      - *tipo*: `Bin`.
    - *setSelectedBin*: funzione che permette di modificare l'oggetto `selectedBin`;
      - *tipo*: `(bin: Bin) => void`.
    - *gridCellSize*: numero in virgola mobile che rappresenta la dimensione di una cella della griglia;
      - *tipo*: `number`.
    - *setGridCellSize*: funzione che permette di modificare la dimensione di una cella della griglia;
      - *tipo*: `(size: number) => void`.
    - *moveCameraToPosition*: funzione che permette di spostare la camera in una posizione specifica.
      - *tipo*: `(position: Vector3) => void`.
    - *cameraRef*: riferimento alla camera dell'ambiente 3D.
      - *tipo*: `RefObject\<CameraControls\>`.

\
== Presentation layer
=== UI
L'interfaccia utente è realizzata mediante elementi importati da Shadcn-UI e componenti personalizzati.

I componenti realizzati sono i seguenti:

- *Form di configurazione dell'ambiente*:

  - *creationForm*:
    - *descrizione*: componente dinamico dedicato alla creazione dell'ambiente di lavoro. Rappresenta la struttura portante del form di configurazione dell'ambiente di lavoro, contenendo al suo interno i componenti `manualCreationFrame` e `svgCreationFrame`.
    - *interazione con l'utente*:
      - *RadioGroup*: permette di selezionare il metodo di creazione dell'ambiente di lavoro;
        - *nome:* "choice";
        - *opzioni*:
          - *manuale*: "Creazione manuale";
          - *custom*: "Creazione mediante file SVG".

      - *manualCreationFrame*: componente dedicato alla creazione manuale dell'ambiente di lavoro;

      - *svgCreationFrame*: componente dedicato alla definizione dei parametri di creazione dell'ambiente di lavoro mediante file SVG;

      - *CheckBox*: permette di selezionare se importare o meno i dati relativi ai Prodotti dal database.
        - *nome*: "loadProdotti";

    - *validazione*:
      - *zodScheme*: schema dinamico dedicato alla validazione dei dati di creazione dell'ambiente di lavoro. La validazione è effettuata in base al metodo di creazione selezionato determinato dal valore di "choice".

        - *manualCreationSchema*: schema dedicato alla validazione dei dati di creazione dell'ambiente di lavoro mediante configurazione manuale. In particolare:
          - *choice*: deve corrispondere a "manuale";
          - *loadProdotti*: `boolean`;
          - *larghezza*: `number` e maggiore di 0;
          - *profondità*: `number` e maggiore di 0.

        - *svgCreationSchema*: schema dedicato alla validazione dei dati di creazione dell'ambiente di lavoro mediante file SVG. In particolare:
          - *choice*: deve corrispondere a "custom";
          - *loadProdotti*: `boolean`;
          - *loadScaffali*: `boolean`;
          - *latoMaggiore*: `number` e maggiore di 0;
          - *svg*: stringa non vuota.

  \
  - *manualCreationFrame*:
    - *descrizione*: componente dedicato alla creazione manuale dell'ambiente di lavoro. Contiene i campi relativi alla definizione delle dimensioni del piano.
    - *interazione con l'utente*:
      - *Input*: permette di inserire la larghezza del piano;
        - *nome*: "larghezza".
      - *Input*: permette di inserire la profondità del piano.
        - *nome*: "profondità".
    - *validazione*:
      - *manualCreationSchema*.

  \
  - *svgCreationFrame*:
    - *descrizione*: componente dedicato alla definizione dei parametri di creazione dell'ambiente di lavoro mediante file SVG;
    - *interazione con l'utente*:
      - *dropFileArea*: permette di caricare un file SVG;
      - *Input*: permette di inserire il lato maggiore del piano;
        - *nome*: "latoMaggiore".
      - *CheckBox*: permette di selezionare se importare o meno i dati relativi ai Scaffali dal database.
        - *nome*: "loadScaffali".
    - *validazione*:
      - *svgCreationSchema*.
  \
  - *dropFileArea*:
    - *descrizione*: componente dedicato al caricamento di un file SVG;
    - *interazione con l'utente*:
      - *FileInput*: permette di selezionare un file da caricare;
        - *nome*: "file";
        - *formato file ammesso*: "image/svg+xml";
        - *dimensione massima file:* 10MB.
    - *validazione*:
      - *svgCreationSchema*.

\
- *Componenti relativi ai prodotti*:

  - *productItem*:
    - *descrizione*: componente dedicato alla visualizzazione di un prodotto;
    - *parametri*:
      - *product*: oggetto `Product` che rappresenta il prodotto da visualizzare.
    - *informazioni visualizzate*:
      - *ID*: codice identificativo univoco del prodotto;
      - *Nome*: nome del prodotto;
      - *Categorie*: categorie di appartenenza del prodotto.
    - *interazione con l'utente*:
      - *Button*: permette di visualizzare i dettagli del prodotto;
        - *azione*: mostra i dettagli del prodotto mediante il componente `productItemDetails`.

  - *productsPanel*:
    - *descrizione*: componente dedicato alla visualizzazione di tutti i prodotti presenti nel magazzino. Ogni prodotto è rappresentato da un `ProductItem`;
    - *interazione con l'utente*:
      - *SearchBar*: permette di cercare un prodotto all'interno della lista;
        - *azione*: filtra i prodotti presenti in base alla stringa inserita;
        - *tipologia di ricerca*:
          - *ID*: ricerca per codice identificativo univoco;
          - *Nome*: ricerca per nome.
      - *Combobox*: permette di selezionare la categoria di appartenenza dei prodotti da visualizzare;
        - *opzioni*: lista di categorie di appartenenza dei prodotti presenti nel magazzino.
      - *Tabs*: permette di visuallizza o i prodotti collocati o i prodotti non collocati.
        - *opzioni*:
          - *Collocati*: visualizza solo i prodotti collocati;
          - *Non collocati*: visualizza solo i prodotti non collocati.

  \
  - *productItemDetails*:
    - *descrizione*: componente dedicato alla visualizzazione delle informazioni dettagliate di un prodotto;
    - *parametri*:
      - *product*: oggetto `Product` che rappresenta il prodotto di cui visualizzare i dettagli.
    - *informazioni visualizzate*:
      - *ID*: codice identificativo univoco del prodotto;
      - *Nome*: nome del prodotto;
      - *Peso*: peso del prodotto;
      - *Larghezza*: larghezza del prodotto;
      - *Lunghezza*: lunghezza del prodotto;
      - *Altezza*: altezza del prodotto;
      - *Categorie*: categorie di appartenenza del prodotto.

\
- *Componenti relativi ai bin*:
  - *binItemDetails*:
    - *descrizione*: componente dedicato alla visualizzazione delle informazioni dettagliate di un bin;
    - *parametri*:
      - *bin*: oggetto `Bin` che rappresenta il bin di cui visualizzare i dettagli.
    - *informazioni visualizzate*:
      - *ID*: codice identificativo univoco del bin;
      - *Larghezza*: larghezza del bin;
      - *Lunghezza*: lunghezza del prodotto;
      - *Altezza*: altezza del prodotto;
      - *ProductItemDetails*: componente dedicato alla visualizzazione dei dati di un prodotto. Visibile solo se all'interno del bin è presente un prodotto.
    - *interazione con l'utente*:
      - *ProductComboBox*: nel caso il bin fosse vuoto, è possibile collocare al suo interno un prodotto selezionandolo dalla lista dei prodotti non collocati.

  \
  - *ProductComboBox*:
    - *descrizione*: componente dedicato alla selezione di un prodotto da collocare in un bin;
    - *parametri*:
      - *bin*: oggetto `Bin` che rappresenta il bin in cui collocare il prodotto.
    - *interazione con l'utente*:
      - *Combobox*: permette di selezionare un prodotto dalla lista dei prodotti non collocati.
        - *opzioni*: lista di oggetti `Product` non collocati.

\
- *Componenti relativi agli ordini*:

  - *orderItem*:
    - *descrizione*: componente dedicato alla visualizzazione di un ordine;
    - *parametri*:
      - *order*: oggetto `Order` che rappresenta l'ordine da visualizzare.
    - *informazioni visualizzate*:
      - *ID*: codice identificativo univoco dell'ordine;
      - *Prodotto*: nome del prodotto coinvolto nell'ordine;
      - *Bin di partenza*: codice identificativo univoco del bin di partenza;
      - *Bin di destinazione*: codice identificativo univoco del bin di destinazione.

  - *ordersPanel*:
    - *descrizione*: componente dedicato alla visualizzazione di tutti gli ordini presenti nel magazzino. Ogni ordine è rappresentato da un `OrderItem`.

\
- *Componenti relativi alle impostazioni*:

  - *settingsPanel*:
    - *descrizione*: componente dedicato alla visualizzazione delle impostazioni dell'applicazione e della versione dell'applicativo;
    - *interazione con l'utente*:
      - floorDimensionsItem: componente dedicato alla visualizzazione e modifica delle dimensioni del piano;
      - restoreItem: componente dedicato al ripristino o alla reimpostazione dell'ambiente di lavoro.
    - *validazione*:
      - *zodDimensionScheme*: schema dedicato alla validazione dei dati dimensionali per la modifica del piano. In particolare:
        - *larghezza*: number e maggiore di 0;
        - *profondità*: number e maggiore di 0.

  \
  - *floorDimensionsItem*:
    - *descrizione*: componente dedicato alla visualizzazione e modifica delle dimensioni del piano;
    - *interazione con l'utente*:
      - *Input*: permette di inserire la larghezza del piano;
        - *nome*: "larghezza".
      - *Input*: permette di inserire la profondità del piano.
        - *nome*: "profondità".
    - *validazione*:
      - *zodDimensionScheme*.

  \
  - *restoreItem*:
    - *descrizione*: componente dedicato al ripristino o alla reimpostazione dell'ambiente di lavoro;
    - *interazione con l'utente*:
      - *Button*: permette di ripristinare l'ambiente di lavoro;
        - *azione*: ripristina l'ambiente di lavoro allo stato iniziale.
      - *Button*: permette di reimpostare l'ambiente di lavoro.
        - *azione*: riporta al `creationForm` avviando nuovamente la procedura di configurazione dell'ambiente.

\
- *Zone*:

  - *zoneCreationFrame*:
    - *descrizione*: componente dedicato alla creazione e/o modifica di una zona;
    - *parametri*:
      - *zone*: oggetto `Zone` che rappresenta la zona da modificare, opzionale.
    - *interazione con l'utente*:
      - *Input*: permette di insereire l'ID della zona (disabilitato in caso di modifica);
        - *nome*: "ID".
      - *Input*: permette di inserire la lunghezza della zona;
        - *nome*: "lunghezza".
      - *Input*: permette di inserire la larghezza della zona;
        - *nome*: "larghezza".
      - *Input*: permette di inserire l'altezza della zona;
        - *nome*: "altezza".
      - *Combobox*: permette di selezionare l'orientamento della zona;
        - *opzioni*: "Verticale", "Orizzontale".
      - *RadioGroup*: permette di indicare la modalità di definizione delle colonne:
        - *opzioni*:
          - *manuale*: Abilita il campo "nColumns" per l'inserimento manuale del numero di colonne di larghezza uguale in cui suddividere la zona;
          - *custom*: Abilita il campo "customColumns" per l'inserimento della stringa rappresentate le dimensioni delle colonne in cui suddividere la zona.
            - *formato*: "dim1 dim2 dim3 ...  dimn".
      - *Button*: permette di incrementare il numero di livelli della zona;
        - *azione*: aggiunge un livello alla zona. Ogni livello aggiunto è rappresentato dal componente `levelItem`.
      - *Button*: permette di salvare la zona.
        - *azione*: salva la zona.
    - *validazione*:
      - *zoneZodSchemes*: schema dedicato alla validazione dei dati di creazione e modifica di una zona. In particolare:
        - *ID*: stringa non vuota;
        - *lunghezza*: `number` e maggiore di 0;
        - *larghezza*: `number` e maggiore di 0;
        - *altezza*: `number` e maggiore di 0;
        - *orientamento*: stringa non vuota;
        - *nColumns*: `number` e maggiore di 0;
        - *customColumns*: stringa non vuota.

  \
  - *levelItem*:
    - *descrizione*: componente dedicato alla visualizzazione di un ripiano durante il processo di modifica o creazione;
    - *informazioni visualizzate*:
      - *Livello del piano*: livello identificativo del ripiano: indica la posizione del ripiano all'interno dello scaffale;
      - *Altezza*: altezza del ripiano.
    - *interazione con l'utente*:
      - *Input*: permette di inserire l'altezza del ripiano;
        - *nome*: "altezza".
      - *Button*: permette di eliminare il ripiano.
        - *azione*: elimina il ripiano.

  \
  - *bin_columns*:
    - *descrizione*: definisce le colonne del componente `data-table` utilizzato all'interno di `zoneItemDetails` per la visualizzazione dei bin presenti all'interno della zona interssata. Le colonne definite sono:
      - *Id*: id del bin;
      - *Prodotto*: nome del prodotto presente all'interno del bin (se presente);
      - *Button*: permette di visualizzare i dettagli del bin.
        - *azione*: mostra i dettagli del bin mediante il componente `binItemDetails`.

  \
  - *zoneItem*:
    - *descrizione*: componente dedicato alla visualizzazione di una zona;
    - *parametri*:
      - *zone*: oggetto `Zone` che rappresenta la zona da visualizzare.
    - *informazioni visualizzate*:
      - *ID*: codice identificativo univoco della zona.
    - *interazione con l'utente*:
      - *Button*: permette di visualizzare i dettagli della zona;
        - *azione*: mostra i dettagli della zona mediante il componente `zoneItemDetails`.
      - *Button*: permette di cancellare la zona.
        - *azione*: cancella la zona.

  \
  - *zoneItemDetails*:
    - *descrizione*: componente dedicato alla visualizzazione delle informazioni dettagliate di una zona;
    - *parametri*:
      - *zone*: oggetto `Zone` che rappresenta la zona di cui visualizzare i dettagli.
    - *informazioni visualizzate*:
      - *ID*: codice identificativo univoco della zona;
      - *Lunghezza*: lunghezza della zona;
      - *Larghezza*: larghezza della zona;
      - *Altezza*: altezza della zona;
      - *Orientamento*: orientamento della zona;
      - *Data-Table*: visualizzazione dei bin presenti all'interno della zona mediante il componente `bin_columns`.
    - *interazione con l'utente*:
      - *Button*: permette di modificare la zona;
        - *azione*: modifica la zona mediante il componente `zoneCreationFrame`.
      - *Button*: permette di cancellare la zona.
        - *azione*: cancella la zona.

  \
  - *zonePanel*:
    - *descrizione*: componente dedicato alla visualizzazione di tutte le zone presenti nel magazzino. Ogni zona è rappresentata da un `ZoneItem`;
    - *interazione con l'utente*:
      - *SearchBar*: permette di cercare una zona all'interno della lista;
        - *azione*: filtra le zone presenti in base alla stringa inserita;
        - *tipologia di ricerca*:
          - *ID*: ricerca per codice identificativo univoco.
      - *Button*: permette di aggiungere una nuova zona.
        - *azione*: aggiunge una nuova zona mediante il componente `zoneCreationFrame`.

- *Panel*:
  - *descrizione*: componente dedicato alla visualizzazione di un pannello laterale. Utilizzato dai componenti `zonePanel`, `productsPanel`, `ordersPanel` e `settingsPanel`.

\
=== Three.js
Gli oggetti di modello vengono passati come parametri ai componenti Three.js per la loro creazione, rendendo dunque indipendente l'oggetto di business indipendente dalla sua rappresentazione grafica.

Mediante l'utilizzo dei framework \@react-three/fiber e \@react-three/drei, è possibile creare elementi 3D all'interno di un'applicazione React trattando gli elementi come componenti.

\
- *Floor*:
  - *descrizione*: componente dedicato alla visualizzazione del piano dell'ambiente di lavoro;
  - *parametri*:
    - Floor: oggetto `Floor` che rappresenta il piano dell'ambiente di lavoro.

\
- *Bin3D*:
  - *descrizione*: componente dedicato alla visualizzazione di un bin all'interno dell'ambiente di lavoro;
  - *parametri*:
    - Bin: oggetto `Bin` che rappresenta il bin da visualizzare.
  - *visualizzazione*:
    - *box*: rappresenta il bin all'interno dell'ambiente di lavoro. Il colore del box varia a seconda dei seguenti fattori:
      - *blu*: bin occupato contenente un prodotto;
      - *nero*: bin occupato non contenente un prodotto;
      - *rosso*: bin selezionato;
      - *giallo*: bin di destinazione di un ordine;
      - *verde*: bin di partenza di un ordine.
  - *interazione con l'utente*:
    - *onDoubleClick*: permette di selezionare il bin visualizzando i dettagli mediante i componenti `binItemDetails` e `productItemDetails` (se contenente un prodotto);
    - *onDrag*: permette di spostare il bin all'interno dell'ambiente di lavoro, in modo da generare un nuovo ordine di spostamento. L'evento onDrag è disponibile solo per i bin3D che rappresentano un bin il cui _state_ ottenibile dal metodo `getBinState` risulta *Idle* e con un prodotto al suo interno.

\
- *Zone3D*:
  - *descrizione*: componente dedicato alla visualizzazione di una zona all'interno dell'ambiente di lavoro. I bin al suo interno sono generati e visualizzati mediante il componente `Bin3D`;
  - *parametri*:
    - Zone: oggetto `Zone` che rappresenta la zona da visualizzare.
  - *interazione con l'utente*:
    - *onDoubleClick*: permette di selezionare la zona visualizzando i dettagli mediante il componente `zoneItemDetails`;
    - *onDrag*: permette di spostare la zona all'interno dell'ambiente di lavoro.

\
- *Warehouse*:
  - *descrizione*: componente dedicato alla visualizzazione dell'ambiente di lavoro e del Canvas di rendering;
  - *interazione con l'utente*:
    - *Zone3D*: permette di visualizzare le zone presenti all'interno dell'ambiente di lavoro;
    - *Floor*: permette di visualizzare il piano dell'ambiente di lavoro;
    - *Grid*: permette di visualizzare la griglia di riferimento per il collocamento degli scaffali nell'ambiente di lavoro;
    - *GridModeSelector*: permette di selezionare la dimensione della griglia di riferimento;
    - *CameraControls ed ExtendedCameraControls*: permette di controllare la camera all'interno dell'ambiente di lavoro;
    - *KeyboardControls*: permette di controllare la camera mediante tastiera.

\
- *ExtendedCameraControls*:
  - *descrizione*: componente dedicato al controllo avanzato della camera all'interno dell'ambiente di lavoro;
  - *interazione con l'utente*:
    - *onKeyDown*: permette di reimpostare la posizione della camera mediante il tasto "R";
    - *useFrame*: intercettati i tasti "W", "A", "S", "D" e "Shift" permette di spostare la camera all'interno dell'ambiente di lavoro.

\
- *GridModeSelector*:
  - *descrizione*: componente dedicato alla selezione della dimensione della griglia di riferimento;
  - *interazione con l'utente*:
    - *ToggleGruop*: permette di selezionare la dimensione della griglia di riferimento;
      - *opzioni*:
        - *0*: griglia non visibile;
        - *0.1*: griglia con celle di 0.1 unità, rappesentanti 10cm;
        - *0.5*: griglia con celle di 0.5 unità, rappesentanti 50cm;
        - *1*: griglia con celle di 1 unità, rappesentanti 1m.

\
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
