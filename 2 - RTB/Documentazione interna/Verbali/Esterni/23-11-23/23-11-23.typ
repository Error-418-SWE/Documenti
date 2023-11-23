#import "/template.typ": *

//change title
#show: project.with(
  date: "23/11/23",
  subTitle: "",
  docType: "verbale",
  externalParticipants : (
    (name: "Matteo Bassani", role: "Referente aziendale"),
  ), // Rimuovere se non ci sono partecipanti esterni
  authors: (
    "Zaccone Rosario",
  ),
  timeStart: "14:00",
  timeEnd: "14:45",
);

= Ordine del giorno
- Presentazione, supportata da una board Miro, delle assunzioni fatte dal team durante il periodo di individuazione degli use case;

- Presentazione, supportata da una board Miro, delle domande raccolte dal team rigurdo l'analisi dei requisiti. Le domande si articolano in:
 - use case;
 - chiarimenti tecnici;
 - device da supportare;
 - requisiti non funzionali.

- Richieste all'azienda proponente riguardo materiale utile durante il progetto;

- Organizzazione di un prossimo meeting.
\

== Presentazione delle assunzioni fatte
Il team ha iniziato il meeting presentando delle assunzioni al referente aziendale, per avere un riscontro riguardo la loro validità.\
La prima assunzione specificava la presenza di un solo prodotto per ogni bin, ed è stata confermata e ritenuta una semplificazione utile. Per aree di carico/scarico questa assunzione non è valida, ma per semplicità di sviluppo si può tenere questa semplificazione.\
La seconda assunzione specificava la presenza di scaffali in dimensioni standard, ma è stata rifiutata, poirchè lo scaffale va costruito parametricamente, eventualmente fornendo opzioni preimpostate.

La terza assunzione riguardava la possibilità di eliminare scaffali solo se vuoti, che ha trovato il favore del proponente.\

L'ultima assunzione, che riguardava la presenza di dimensioni fisse per i bin, è stata rifiutata poichè si devono prevedere bin di dimensioni diverse.
\

== Presentazione delle domande raccolte
=== Use case
Si sono discussi i seguenti use case:
- possibilità di passare in modalità modifica in qualsiasi momento: gli utenti avranno la flessibilità di attivare la modalità di modifica quando lo ritengono opportuno, consentendo loro di apportare modifiche e aggiornamenti in modo tempestivo;
- richiesta utente di sincronizzazione dei dati del DB;
- ricerca per ID, per nome, per scaffale: è stata discussa una funzionalità di ricerca che consente agli utenti di recuperare informazioni in base all'identificativo del prodotto, al nome o alla collocazione sullo scaffale. Si è discusso anche di un'interfaccia grafica per rendere chiara e accessibile questa funzionalità di ricerca;
- possibilità di ottenerne le informazioni di uno specifico prodotto cliccandoci sopra.
I suddetti use case sono stati sottoposti all'approvazione del referente aziendale, garantendo così la congruenza con le esigenze e gli obiettivi aziendali. \

=== Chiarimenti tecnici
Si è discusso su alcuni aspetti tecnici del progetto, e in seguito ai chiarimenti dati dal proponente si è giunti alle seguenti conclusioni:
- il file SVG rappresenta solo la piantina del magazzino e segue standard XML;
- non è richiesta la persistenza dei dati;
- il DB contiene tutte le informazioni necessarie a ricreare lo scenario;
- lo spostamento di un prodotto è gestito dalla business logic del servizio esterno col quale ci si interfaccia tramite REST API. Il nostro progetto deve occuparsi solo di inviare la richiesta.
\
=== Device da supportare
Il team ha discusso insieme al proponente se l'applicazione dovesse supportare altri device come smartphone e tablet, e di conseguenza come sarebbero cambiate le feature e le modalità di visualizzazione. Il referente ha chiarito che l'applicazione deve essere progettata principalmente per l'utilizzo su desktop, e in misura minore su tablet. Non si presuppone l'utilizzo da parte degli utenti tramite telefono, le funzionalità fornite saranno uniformi su entrambi i dispositivi, senza differenze sostanziali. È importante sottolineare che gli operatori non faranno uso di funzionalità 3D nell'ambito delle operazioni svolte tramite l'applicazione.
\
=== Requisiti non funzionali
Il team ha chiesto informazioni riguardo possibili vincoli sui requisiti non funzionali in vista della loro individuazione. Il referente ha specificato l'assenza di vincoli a riguardo.
\

== Richieste all'azienda proponente riguardo materiale utile durante il progetto
Il team ha avanzato la richiesta di materiale e informazioni come le le caratteristiche dei prodotti, esempi di codifica di scaffali e bin ed esempi di piantina di magazzino. Le proposte sono state accolte dal referente aziendale, che ci ha assicurato il soddisfacimento delle nostre richieste.

== Organizzazione di un prossimo meeting
L'incontro si è concluso con la proposta del prossimo meeting in data 30 novembre 2023, in orario alle 16:00 o alle 17:00, ancora da confermare.

= Azioni da intraprendere
A seguito del meeting sono state individuate le seguenti operazioni da svolgere:
- modifica delle assunzioni in seguito ai chiarimenti forniti dal referente;
- continuazione del lavoro di stesura degli use case;
- organizzazione di un meeting interno post meeting esterno per riflettere meglio sul lavoro da fare e sulla sua suddivisione.

= Firme partecipanti esterni