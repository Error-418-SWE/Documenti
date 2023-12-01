#import "/template.typ": *

#show: project.with(
  title:"Analisi dei Requisiti",
  subTitle: "",
  authors: (
    "Banzato Alessio",
    "Nardo Silvio"
  ),
);

#set text(font:"New Computer Modern")
#set align(left)
#show "link": word => text[#text(fill:blue, word)]


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



#set heading(numbering: none) 
 
#set heading(numbering: (..nums) => {
  let values = nums.pos();
  if (values.len() > 0){
      values.at(values.len()-1) = values.at(values.len()-1);
  }
  values.at(0) = values.at(0)-1;
  return "UC-"+values.map(str).join(".");
}) 

= UC1
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
- UC-1.1 Visualizzazione errore lettura del file SVG.



=== UC-1.1 Visualizzazione errore lettura del file SVG
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
- UC-1.1.1 Visualizzazione errore lettura del file SVG dovuto a file privo di informazioni;
- UC-1.1.2 Visualizzazione errore lettura del file SVG dovuto a informazioni fornite incongruenti.



==== UC-1.1.1 Visualizzazione errore lettura del file SVG dovuto a file privo di informazioni
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




==== UC-1.1.2 Visualizzazione errore lettura del file SVG dovuto a informazioni fornite incongruenti
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



= UC-2 Configurazione ambiente 3d manuale
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



=== UC-2.1 Visualizzazione errore sui dati
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



= Caricamento dati da database

#figure(image("./imgs/uc3.png", format: "png"), caption: [UML UC-3])

$bold("Descrizione: ")$ 
i prodotti vengono inseriti dal database nei rispettivi bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l’ambiente deve essere correttamente configurato;
- il database deve contenere almeno un prodotto con le relative coordinate.

$bold("Postcondizioni: ")$
- i prodotti si trovano nei rispettivi bin.

$bold("Scenario: ")$
- l’utente configura l’accesso al database;
- l’utente inizia la procedura di caricamento dei prodotti.

$bold("Estensioni: ")$
- UC-3.3 Visualizzazione messaggio di errore.

$bold("Inclusioni: ")$
- UC-3.2 Configurazione collegamento al database.




=== UC-3.1 Visualizzazione messaggio di errore
$bold("Descrizione: ")$ 
i dati inseriti per la modifica dell'ambiente di lavoro non sono validi con quanto configurato precedentemente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'utente ha immesso i dati per la modifica dell'ambiente;
- tali dati non sono congrui con la precedente configurazione dell'ambiente.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo ad un'immissione errata dei dati per la modifica dell'ambiente.

$bold("Scenario: ")$
- l'utente ha immesso dei dati errati per la modifica dell'ambiente.




== UC-4 Creazione scaffale
$bold("Descrizione: ")$ 
uno scaffale viene creato in base ai valori dati dall'utente e aggiunto nell'ambiente in una posizione valida specificata. Seccessivamente vengono creati i bin contenuti dallo scaffale e posizionati in esso.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente di lavoro deve essere stato configurato con successo.

$bold("Postcondizioni: ")$
- nell'ambiente di lavoro è stato aggiunto un nuovo scaffale;
- nello scaffale creato sono stati aggiunti i bin da esso contenuti.

$bold("Scenario: ")$
- l'utente seleziona l'aggiunta di uno scaffale;
- l'utente inserisce i dati necessari alla creazione dello scaffale;
- l'utente posiziona lo scaffale in una posizione valida nell'ambiente di lavoro.



== UC-5 Modifica scaffale
$bold("Descrizione: ")$ 
modifica delle caratteristiche di uno scaffale già esistente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- nell'ambiente deve essere posizionato almeno uno scaffale.

$bold("Postcondizioni: ")$
- i valori di uno scaffale scelto sono stati modificati come indicato.

$bold("Scenario: ")$
- l'utente seleziona uno scaffale nell'ambiente di lavoro;
- l'utente seleziona il comando per la modifica dello scaffale;
- l'utente inserisce i nuovi valori relativi alle proprietà da modificare dello scaffale.

$bold("Estensioni: ")$
- UC-5.1 Visualizzazione errore inserimento valori errati per la modifica di uno scaffale.



=== UC-5.1 Visualizzazione errore inserimento valori errati per la modifica di uno scaffale 
$bold("Descrizione: ")$ 
i dati inseriti per la modifica di uno scaffale sono errati e non possono essere accettati.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
-l'attività di modifica di uno scaffale deve essere stata attivata;
-l'inserimento dei valori per la modifica deve essere avvenuto.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo ai dati errati.

$bold("Scenario: ")$
- l'utente ha avviato la procedura di modifica di uno scaffale esistente;
- l'utente ha immesso dati non validi o che comporterebbero incongruenze con i bin o altri elementi dell'ambiente.


== UC-6 Eliminazione scaffale
$bold("Descrizione: ")$ 
lo scaffale selezionato presente nell'ambiente viene eliminato.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- nell'ambiente deve essere posizionato almeno uno scaffale;
- la modalità di modifica dell'ambiente deve essere attiva;
- lo scaffale da eliminare deve contenere solo bin vuoti.

$bold("Postcondizioni: ")$
- lo scaffale selezionato viene rimosso dall'ambiente;
- vengono rimossi i bin in esso contenuti.

$bold("Scenario: ")$
- l'utente seleziona uno scaffale nell'ambiente;
- l'utente seleziona il comando per la rimozione dello scaffale;
- l'utente conferma l'operazione da una finestra di conferma.

$bold("Estensioni: ")$
- UC-6.1 Visualizzazione errore scaffale da eliminare non vuoto.


=== UC-6.1 Visualizzazione errore scaffale da eliminare non vuoto
$bold("Descrizione: ")$ 
è stata richiesta l'eliminazione di uno scaffale contenente almeno un bin non vuoto.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'attività di eliminazione di uno scaffale deve essere stata attivata;
- lo scaffale interessato contiene almeno un bin non vuoto.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo all'eliminazione di uno scaffale non vuoto.

$bold("Scenario: ")$
- l'utente ha richiesto l'eliminazione di uno scaffale non vuoto.



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

== UC-8 Modifica di un bin
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

=== UC-8.1 Dimensioni del bin negative o uguali a zero
$bold("Descrizione: ")$
le dimensioni del bin definite dall'utente sono negative o uguali a zero.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- UC-8 Modifica Bin.

$bold("Postcondizioni: ")$
- viene mostrato un messaggio di errore;
- il bin rimane al suo stato precedente.

$bold("Scenario: ")$ 
- l'utente inserisce dimensioni minori o uguali a zero;
- viene visualizzato un messaggio di errore;
- la modifica viene rifiutata e il bin non viene cambiato.

=== UC-8.2 Dimensioni del bin eccessive
$bold("Descrizione: ")$
le dimensioni del bin definite dall'utente sono eccessive.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- UC-8 Modifica Bin.

$bold("Postcondizioni: ")$
viene mostrato un messaggio di errore e il bin rimane al suo stato precedente.

$bold("Scenario: ")$ 
- l'utente inserisce dimensioni troppo grandi per il bin;
- viene visualizzato un messaggio di errore;
- la modifica viene rifiutata e il bin non viene cambiato.

== UC-9 Eliminazione bin vuoto
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

== UC-10 Caricamento dei prodotti da database
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

== UC-11 Interrogazione bin 
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

