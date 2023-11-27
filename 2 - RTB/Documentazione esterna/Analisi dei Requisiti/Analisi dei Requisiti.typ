#import "/template.typ": *

#show: project.with(
  title:"Analisi dei Requisiti",
  subTitle: "",
  authors: (
    "Banzato Alessio",
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

= Casi d'uso
#set heading(numbering: none) 

== UC7 - Creazione di un bin
$bold("Descrizione: ")$
deve essere possibile creare delle aree adibite a contenere prodotti.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$ 
l'ambiente deve essere correttamente configurato e deve esistere almeno un'area libera e valida.

$bold("Postcondizioni: ")$ 
l'area selezionata viene classificata come bin.

$bold("Scenario: ")$ 
	- l'utente entra nella modalità di modifica;
	- l'utente seleziona un'area libera e valida.

== UC8 - Modifica di un bin
$bold("Descrizione: ")$ 
deve essere possibile modificare le dimensioni dei bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
l'ambiente deve essere correttamente configurato e deve esistere almeno un bin modificabile.

$bold("Postcondizioni: ")$
le dimensioni del bin sono state ridefinite.

$bold("Scenario: ")$ 
	- l'utente entra nella modalità di modifica;
	- l'utente seleziona un bin;
	- vengono mostrate le informazioni del bin;
	- l'utente modifica le dimensioni del bin.

$bold("Estensioni: ")$ 
  - UC8.1 - Dimensioni del bin negative o uguali a zero;
	- UC8.2 - Dimensioni del bin eccessive.

=== UC8.1 - Dimensioni del bin negative o uguali a zero
$bold("Descrizione: ")$
le dimensioni del bin definite dall'utente sono negative o uguali a zero.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
UC8 - Modifica Bin.

$bold("Postcondizioni: ")$
viene mostrato un messaggio di errore e il bin rimane al suo stato precedente.

$bold("Scenario: ")$ 
	- l'utente inserisce dimensioni minori o uguali a zero;
	- viene visualizzato un messaggio di errore;
	- la modifica viene rifiutata e il bin non viene cambiato.

=== UC8.2 - Dimensioni del bin eccessive
$bold("Descrizione: ")$
le dimensioni del bin definite dall'utente sono eccessive.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
UC8 - Modifica Bin.

$bold("Postcondizioni: ")$
viene mostrato un messaggio di errore e il bin rimane al suo stato precedente.

$bold("Scenario: ")$ 
	- l'utente inserisce dimensioni troppo grandi per il bin;
	- viene visualizzato un messaggio di errore;
	- la modifica viene rifiutata e il bin non viene cambiato.

== UC9 - Eliminazione bin vuoto
$bold("Descrizione: ")$
deve essere possibile eliminare un bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
l'ambiente deve essere correttamente configurato e deve esistere almeno un bin vuoto.

$bold("Postcondizioni: ")$
il bin è tornato ad essere un'area libera.

$bold("Scenario: ")$ 
	- l'utente entra nella modalità di modifica;
	- l'utente seleziona un bin vuoto;
	- l'utente chiede di eliminare il bin;
	- viene richiesta la conferma dell'eliminazione.

== UC10 - Assegnazione prodotto al bin
$bold("Descrizione: ")$
deve essere possibile aggiungere un prodotto in un bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
l'ambiente deve essere correttamente configurato e deve esistere almeno un bin libero.

$bold("Postcondizioni: ")$
il bin contiene il prodotto inserito.

$bold("Scenario: ")$ 
	- l'utente seleziona il prodotto da inserire nel bin;
	- l'utente seleziona il bin in cui inserire il prodotto;
	- il prodotto viene inserito nel bin.

$bold("Estensioni: ")$ 

== UC11 - Interrogazione bin 
$bold("Descrizione: ")$
deve essere possibile visualizzare la prodotto contenuta in un determinato bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
l'ambiente deve essere correttamente configurato e deve esistere almeno un bin.

$bold("Postcondizioni: ")$
vengono visualizzate le informazioni del bin.

$bold("Scenario: ")$ 
	- l'utente seleziona un bin;
	- vengono visualizzate le informazioni sul bin e, se presente, sul prodotto contenuto nel bin.
