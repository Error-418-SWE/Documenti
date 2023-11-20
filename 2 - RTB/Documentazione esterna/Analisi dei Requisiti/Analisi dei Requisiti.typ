#import "/template.typ":*

#show: project.with(
  title:"Analisi dei Requisiti",
  subTitle: "Casi d'uso e requisiti", 
  docType: "doc",
  partecipants: (
  (name: "Banzato Alessio", role: "Redattore"),
  (name: "Carraro Riccardo", role: "Amministratore"),
  (name: "Gardin Giovanni",  role: "Amministratore"),
  (name: "Nardo Silvio",   role: "Verificatore"),
  (name: "Oseliero Antonio",   role: "Responsabile"),
  (name: "Todesco Mattia",  role: "Verificatore"),
  (name: "Zaccone Rosario",  role: "Analista"),
  ),
  showIndex: true,
  showLog: false
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


==== UC-1.1.1 Visualizzazione errore lettura del file SVG dovuto a estensione del file sbagliata
$bold("Descrizione: ")$
il file per la configurazione dell'ambiente caricato ha un'estensione inattesa.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- é stato caricato un file per la configurazione dell'ambiente;
- il programma non ha potuto leggere tale file a causa dell'incongruenza della sua estensione.

$bold("Postcondizioni: ")$
viene visualizzato l'errore relativo al caricamento di un file con estensione diversa da SVG.

$bold("Scenario: ")$
L'utente ha caricato un file per la configurazione dell'ambiente con estensione errata.



==== UC-1.1.2 Visualizzazione errore lettura del file SVG dovuto a file privo di informazioni
$bold("Descrizione: ")$
il file SVG caricato non contiene informazioni utili alla configurazione dell'ambiente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- é stato caricato un file per la configurazione dell'ambiente;
- tale file è stato aperto correttamente dal programma;
- il programma non ha potuto ottenere informazioni dal file.

$bold("Postcondizioni: ")$
viene visualizzato l'errore relativo al caricamento di un file SVG privo di informazioni.

$bold("Scenario: ")$
L'utente ha caricato un file SVG vuoto o con informazioni non utili.




==== UC-1.1.3 Visualizzazione errore lettura del file SVG dovuto a informazioni fornite incongruenti
$bold("Descrizione: ")$
il file SVG caricato contiene informazioni incongruenti e quindi non utilizzabili per la configurazione dell'ambiente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- é stato caricato un file per la configurazione dell'ambiente;
- tale file è stato aperto correttamente dal programma;
- il programma ha ricavato informazioni non valide dal file.

$bold("Postcondizioni: ")$
viene visualizzato l'errore relativo al caricamento di un file con informazioni incongruenti.

$bold("Scenario: ")$
L'utente ha caricato un file per la configurazione dell'ambiente contenente informazioni incongruenti.
