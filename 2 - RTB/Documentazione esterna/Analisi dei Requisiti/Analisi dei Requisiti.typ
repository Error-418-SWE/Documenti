#import "/template.typ": *

#show: project.with(
  title:"Analisi dei Requisiti",
  subTitle: "",
  authors: (
    "Banzato Alessio",
    "Nardo Silvio",
    "Oseliero Antonio",
    "Gardin Giovanni",
  ),
);

= Introduzione

== Scopo del documento
Il presente documento ha come obiettivo la descrizione del prodotto software tramite la definizione di casi d'uso e requisiti, facilmente identificabili da un codice. Ogni caso d'uso sarà inoltre associato ad un diagramma creato utilizzando il linguaggio UML (_Unified Modeling Language_).

== Redazione del documento
Questo documento viene redatto in modo incrementale, così da risultare sempre conforme agli accordi presi tra gruppo e Proponente durante lo sviluppo del progetto. Vengono inoltre adottati i seguenti criteri di qualità:

+ *Correttezza*: ogni caso d'uso e requisito riportato corrisponde a ciò che è richiesto nel prodotto;

+ *Non ambiguità*: ogni parte del documento, caso d'uso e requisito deve essere descritto in modo tale che ne esista una sola interpretazione, e che questa sia facilmente comprensibile da tutte le parti coinvolte nel progetto. Per contribuire a questo scopo il gruppo _Error\_418_ mette a disposizione un _*Glossario*_ nel quale vengono definiti i termini tecnici del dominio di progetto. Ogni ricorrenza di tali termini nei documenti è segnalata dalla lettera _g_ al pedice del termine stesso;

+ *Completezza*: il documento contiene tutti i requisiti necessari allo sviluppo del progetto, classificandoli per categorie di importanza, e comprende anche la descrizione di tutti i possibili scenari del prodotto;

+ *Coerenza*: ciò che è scritto nel documento non deve andare in conflitto con il contenuto di altri documenti o del documento stesso. Ogni caso d'uso o requisito deve esprimere un concetto diverso dagli altri;

+ *Verificabilità*: deve essere possibile controllare la presenza di ogni requisito nel prodotto finale tramite un procedimento misurabile. La verificabilità è un parametro fortemente influenzato dall'ambiguità: più un requisito è ambiguo, meno sarà verificabile;

+ *Modificabilità*: deve essere definito un modello per la stesura dei singoli casi d'uso e requisiti, così che la loro modifica possa avvenire nel modo più efficiente possibile;

+ *Tracciabilità*: per ogni requisito si deve indicare la fonte da dove è stato ricavato, in modo da semplificare il processo di verifica della completezza e correttezza.

== Riferimenti
=== Normativi

- Norme di progetto;

- Regolamento del progetto didattico: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_ ;

- Specifica dei requisiti software secondo IEEE 830-1998: \
  _#link("https://ieeexplore.ieee.org/document/720574")_ .

=== Informativi

- Verbali interni;

- Verbali esterni;

- Capitolato: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_ ;

- Analisi dei requisiti: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf")_ ;

- Analisi e descrizione delle funzionalità, Use Case e relativi diagrammi (UML): \
  _#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")_ .

#set heading(numbering: (..nums) => {
  let values = nums.pos();
  if (values.len() > 0){
      values.at(values.len()-1) = values.at(values.len()-1);
  }
  values.at(0) = values.at(0)-1;
  return "UC-"+values.map(str).join(".");
})

= Creazione magazzino
#figure(image("./imgs/uc1.png", format: "png"), caption: [UML UC-1])
== Importazione mappa magazzino da file SVG
$bold("Descrizione: ")$
All'avvio dell'applicazione e in ogni momento si desideri, si può decidere di caricare un file SVG il quale viene utilizzato dal programma per configurare le aree di lavoro.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- è stato dato inizio alla procedura di configurazione dell'ambiente di lavoro tramite file.

$bold("Postcondizioni: ")$
- il file SVG è stato caricato con successo e il programma ha configurato l'ambiente di conseguenza;
- l'ambiente così generato ha rimosso eventuali elementi precedentemente configurati.

$bold("Scenario: ")$
- l'utente carica un file SVG tramite un'apposita interfaccia.

$bold("Estensioni: ")$
- UC-1.1.1 Visualizzazione errore lettura del file SVG.
\
=== Visualizzazione errore lettura del file SVG
$bold("Descrizione: ")$
il file caricato dall'utente non ha permesso al programma di configurare l'ambiente di lavoro.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'utente ha caricato un file per la configurazione dell'ambiente di lavoro;
- il programma non ha potuto configurare l'ambiente di lavoro a causa del file caricato.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore.

$bold("Scenario: ")$
- l'utente ha caricato un file non adatto.

$bold("Generalizzazioni: ")$
- UC-1.1.1.1 Visualizzazione errore lettura del file SVG dovuto a file privo di informazioni;
- UC-1.1.1.2 Visualizzazione errore lettura del file SVG dovuto a informazioni fornite incongruenti.

\
==== Visualizzazione errore file privo di informazioni
$bold("Descrizione: ")$
il file SVG caricato non contiene informazioni utili alla configurazione dell'ambiente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- é stato caricato un file per la configurazione dell'ambiente;
- il file è stato aperto correttamente dal programma;
- il programma non ha potuto ottenere informazioni dal file.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo al caricamento di un file SVG privo di informazioni.

$bold("Scenario: ")$
- L'utente ha caricato un file SVG vuoto o con informazioni non utili.

\
==== Visualizzazione errore informazioni del file incongruenti
$bold("Descrizione: ")$
il file SVG caricato contiene informazioni incongruenti e quindi non utilizzabili per la configurazione dell'ambiente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- é stato caricato un file per la configurazione dell'ambiente;
- tale file è stato aperto correttamente dal programma;
- il programma ha ricavato informazioni non valide dal file.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo al caricamento di un file con informazioni incongruenti.

$bold("Scenario: ")$
- L'utente ha caricato un file per la configurazione dell'ambiente contenente informazioni incongruenti.


= Configurazione ambiente 3d manuale
$bold("Descrizione: ")$
configurazione manuale del perimetro dell'ambiente di lavoro.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- è stato dato inizio alla procedura di configurazione manuale dell'ambiente di lavoro.

$bold("Postcondizioni: ")$
- la forma e il perimetro dell'ambiente di lavoro è stato configurato manualmente;
- l'ambiente così generato ha rimosso eventuali elementi precedentemente configurati.

$bold("Scenario: ")$
- l'utente inserisce i dati relativi alla configurazione.

$bold("Estensioni: ")$
- UC-2.1 Visualizzazione errore sui dati.


\
=== Visualizzazione errore dati inseriti non validi
$bold("Descrizione: ")$
i dati inseriti per la configurazione manuale dell'ambiente di lavoro non sono validi.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- inseriti dati per la configurazione manuale dell'ambiente;
- tali dati non sono utilizzabili dal programma.


$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo all'inserimento di dati non validi.

$bold("Scenario: ")$
- l'utente inserisce dati relativi alla configurazione dell'ambiente non validi.

= Caricamento dati database

#figure(image("./imgs/uc3.png", format: "png"), caption: [UML UC-3])

== Caricamento dati da database
$bold("Descrizione: ")$
i prodotti vengono inseriti dal database nei rispettivi bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l’ambiente deve essere correttamente configurato;

$bold("Postcondizioni: ")$
- i prodotti si trovano nei rispettivi bin.

$bold("Scenario: ")$
- l’utente configura l’accesso al database;
- l’utente inizia la procedura di caricamento dei prodotti.

$bold("Inclusioni: ")$
- UC-3.2 Configurazione collegamento al database.

$bold("Estensioni: ")$

- UC-3.3 Visualizzazione messaggio di errore.

== Configurazione collegamento al database
$bold("Descrizione: ")$
l'utente imposta i dati necessari affinchè il programma possa configurarsi con il database in cui sono contenuti i dati.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l’ambiente deve essere correttamente configurato;
- il database deve essere disponibile;
- l'utente deve disporre delle credenziali per configurarsi al database.

$bold("Postcondizioni: ")$
- il sistema è correttamente configurato per accedere al database.

$bold("Scenario: ")$
- l’utente configura l’accesso al database;

== Visualizzazione messaggio di errore
$bold("Descrizione: ")$
i dati contenuti nel database sono in un formato non conforme o sono errati

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'utente ha iniziato la procedura di caricamento dati da database;
- l'accesso al database deve essere stato correttamente configurato.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo alla presenza di dati errati o non conformi all'interno del database.

$bold("Scenario: ")$
- l'utente prova a caricare i dati dal database ma questi sono errati o non conformi a quelli che il sistema può riconoscere (es. numero scaffali/bin incompatibile con le coordinate dei prodotti).


= Richiesta di spostamento di un prodotto

#figure(image("./imgs/uc4.png", format: "png"), caption: [UML UC-4])

== Richiesta di spostamento di un prodotto
$bold("Descrizione: ")$
l'utente seleziona il prodotto di cui desidera una ricollocazione all'interno del magazzino e avvia una richiesta di spostamento verso un altro bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- devono esistere almeno due bin distinti;
- uno dei due bin deve contenere un prodotto;
- uno dei due bin deve essere vuoto.

$bold("Postcondizioni: ")$
- viene inviata una richiesta di spostamento al magazzino tramite l'uso di API;
- il bin di partenza viene evidenziato in modo da identificare il fatto che da quel bin è in atto uno spostamento;
- il bin di arrivo viene evidenziato in modo da identificare il fatto che in quel bin è in atto uno spostamento;

$bold("Scenario: ")$
- l'utente seleziona un bin che contiene un prodotto;
- l'utente sposta il prodotto all'interno di un altro bin vuoto;
- viene inviata una notifica a magazzino che segnala lo spostamento;
- i due bin, di partenza e di arrivo, vengono evidenziati per segnalare lo spostamento in corso.

= Interrogazione bin

#figure(image("./imgs/uc5.png", format: "png"), caption: [UML UC-5])

== Interrogazione di un bin
$bold("Descrizione: ")$
deve essere possibile visualizzare il prodotto contenuto in un determinato bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l’ambiente deve essere correttamente configurato e deve esistere almeno un bin.

$bold("Postcondizioni: ")$
- vengono visualizzate le informazioni del bin.

$bold("Scenario: ")$
- l’utente seleziona un bin;
- vengono visualizzate le informazioni sul bin e, se presente, sul prodotto contenuto nel bin.

= Ricerca prodotti

#figure(image("./imgs/uc6.png", format: "png"), caption: [UML UC-6])

== Ricerca di un prodotto

$bold("Descrizione: ")$
l'utente ricerca un prodotto.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente visualizza la posizione del bin contenente il prodotto ricercato.

$bold("Scenario: ")$
- l'utente ricerca un prodotto;
- il bin contenente il prodotto cercato viene evidenziato.

$bold("Generalizzazioni: ")$
- UC-6.1.1 Ricerca per ID;
- UC-6.1.2 Ricerca per Nome;
- UC-6.1.3 Ricerca per Scaffale.

=== Ricerca per ID
$bold("Descrizione: ")$
l'utente ricerca un prodotto tramite il suo ID di magazzino.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente visualizza la posizione del bin contenente il prodotto ricercato.

$bold("Scenario: ")$
- l'utente ricerca un prodotto usando come chiave l'ID univoco di magazzino;
- il bin contenente il prodotto cercato viene evidenziato.

=== Ricerca per Nome
$bold("Descrizione: ")$
l'utente ricerca un prodotto tramite il nome associato al prodotto.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente visualizza la posizione del bin contenente il prodotto ricercato.

$bold("Scenario: ")$
- l'utente ricerca un prodotto usando come chiave per la ricerca il nome del prodotto;
- il bin contenente il prodotto cercato viene evidenziato;
- i prodotti associati al nome possono essere più di uno.

=== Ricerca per Scaffale
$bold("Descrizione: ")$
l'utente ricerca i prodotti contenuti all'interno di uno scaffale del magazzino.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente visualizza la posizione dei prodotti contenuti nello scaffale cercato.

$bold("Scenario: ")$
- l'utente ricerca i materiali contenuti all'interno di uno scaffale del magazzino;
- lo scaffale viene evidenziato.


== UC-7 Creazione di un bin
$bold("Descrizione: ")$
deve essere possibile creare delle aree adibite a contenere prodotti.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato;
- deve esistere almeno un'area libera e valida.

$bold("Postcondizioni: ")$
- l'area selezionata viene classificata come bin.

$bold("Scenario: ")$
- l'utente entra nella modalità di modifica;
- l'utente seleziona un'area libera e valida.

\
== Modifica di un bin
$bold("Descrizione: ")$
deve essere possibile modificare le dimensioni dei bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato e deve esistere almeno un bin modificabile.

$bold("Postcondizioni: ")$
- le dimensioni del bin sono state ridefinite.

$bold("Scenario: ")$
- l'utente entra nella modalità di modifica;
- l'utente seleziona un bin;
- vengono mostrate le informazioni del bin;
- l'utente modifica le dimensioni del bin.

$bold("Estensioni: ")$
- UC-8.1 Dimensioni del bin negative o uguali a zero;
- UC-8.2 Dimensioni del bin eccessive.

\
== Eliminazione bin vuoto
$bold("Descrizione: ")$
deve essere possibile eliminare un bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato;
- deve esistere almeno un bin vuoto.

$bold("Postcondizioni: ")$
- il bin è tornato ad essere un'area libera.

$bold("Scenario: ")$
- l'utente entra nella modalità di modifica;
- l'utente seleziona un bin vuoto;
- l'utente chiede di eliminare il bin;
- viene richiesta la conferma dell'eliminazione.

\
=== Visualizzazione errore scaffale da eliminare non vuoto
$bold("Descrizione: ")$
è stata richiesta l'eliminazione di un bin non vuoto.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'attività di eliminazione di un bin deve essere stata attivata;
- lo scaffale interessato contiene un prodotto.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo all'eliminazione di un bin non vuoto.

$bold("Scenario: ")$
- l'utente ha richiesto l'eliminazione di un bin non vuoto.

\
== Visualizzazione errore inserimento dati dimensionali non validi
$bold("Descrizione: ")$
i dati inseriti per la modifica delle dimensioni dell'elemento interessato non sono validi.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- inseriti dati per la modifica o la creazione degli elementi dell'ambiente;
- tali dati non sono utilizzabili dal programma.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo all'inserimento di dati non validi.

$bold("Scenario: ")$
- l'utente inserisce dati relativi alla configurazione degli elementi dell'ambiente non validi.

$bold("Generalizzazioni: ")$
- UC-2.9.1 Dimensioni negative o uguali a 0;
- UC-2.9.2 Dimensioni eccessive.

\
=== Dimensioni negative o uguali a zero
$bold("Descrizione: ")$
le dimensioni inserite per la modifica dell'elemento interessato sono minori o uguali a zero.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- inseriti dati dimensionali per la modifica o la creazione degli elementi dell'ambiente;
- le dimensioni inserite non sono valide.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo all'inserimento di dimensioni non valide.

$bold("Scenario: ")$
- l'utente inserisce dati relativi alla configurazione degli elementi dell'ambiente minori o uguali a zero.

\
=== Dimensioni eccessive
$bold("Descrizione: ")$
le dimensioni inserite per la modifica dell'elemento interessato eccessive per il contesto di inserimento.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- inseriti dati dimensionali per la modifica o la creazione degli elementi dell'ambiente;
- le dimensioni inserite sono eccessive.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo all'inserimento di dimensioni eccessive.

$bold("Scenario: ")$
- l'utente inserisce dati relativi alla configurazione degli elementi dell'ambiente eccessivi.

\
= Caricamento dei prodotti da database
$bold("Descrizione: ")$
i prodotti vengono inseriti dal database nei rispettivi bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato;
- il database deve contenere almeno un prodotto con le relative coordinate.

$bold("Postcondizioni: ")$
- i prodotti si trovano nei rispettivi bin.

$bold("Scenario: ")$
- l'utente configura l'accesso al database;
- l'utente inizia la procedura di caricamento dei prodotti.

= Interrogazione bin
$bold("Descrizione: ")$
deve essere possibile visualizzare la prodotto contenuta in un determinato bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato e deve esistere almeno un bin.

$bold("Postcondizioni: ")$
- vengono visualizzate le informazioni del bin.

$bold("Scenario: ")$
- l'utente seleziona un bin;
- vengono visualizzate le informazioni sul bin e, se presente, sul prodotto contenuto nel bin.

= Esplorazione magazzino

#figure(image("./imgs/uc7.png", format: "png"), caption: [UML UC-7])

== Spostamento della visuale
$bold("Descrizione: ")$
Una volta che il sistema è stato configurato l'utente può visualizzare il magazzino e spostare la visuale sui tre assi.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- il sistema è stato correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente ha spostato la visuale sul magazzino nella direzione indicata.

$bold("Scenario: ")$
- l'utente visualizza il magazzino;
- l'utente sposta la visuale secondo uno dei quattro assi;
- l'utente ha cambiato la prospettiva sul magazzino.

== Rotazione della visuale
$bold("Descrizione: ")$
Una volta che il sistema è stato configurato l'utente può visualizzare il magazzino e ruotare la camera sul magazzino a destra o sinistra.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- il sistema è stato correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente ha spostato la visuale sul magazzino nella direzione indicata.

$bold("Scenario: ")$
- l'utente visualizza il magazzino;
- l'utente ruota lavisuale a destra o a sinistra;
- l'utente ha cambiato la prospettiva sul magazzino.

== Zoom della visuale
$bold("Descrizione: ")$
Una volta che l'ambiente è stato configurato l'utente può avvicinare o allontanare la visuale dal magazzino (zoom in, zoom out).

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- il sistema è stato correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente ha avvicinato o allontanato la visuale dal magazzino.

$bold("Scenario: ")$
- l'utente visualizza il magazzino;
- l'utente effettua uno zoom in o uno zoom out sul magazzino;
- l'utente ha cambiato la prospettiva sul magazzino.
