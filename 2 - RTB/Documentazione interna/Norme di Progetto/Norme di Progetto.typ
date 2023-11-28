#import "/template.typ": *

#show: project.with(
  title: "Norme di Progetto",
  subTitle: "",
  authors: (
    "Banzato Alessio",
    "Gardin Giovanni"
  ),
  showIndex: true,
  showLog: true,
  isExternalUse: false,
);

= Introduzione

== Scopo del documento
Questo documento contiene le regole del _way of working_ che disciplinano le attività di ogni membro del gruppo _Error_418_. Queste regole mirano a garantire coerenza, uniformità e efficacia nel processo collaborativo, promuovendo un ambiente di lavoro strutturato e efficiente.
L'approccio adottato per la redazione di questo documento è di natura incrementale. Ciò significa che il testo è soggetto ad aggiornamenti e revisioni continue al fine di integrare progressivamente le nuove norme, le _best practices_ e i cambiamenti che emergono nel corso dello sviluppo del progetto. Questa flessibilità consente al gruppo di adattarsi prontamente alle dinamiche di lavoro e alle esigenze specifiche del contesto, garantendo un documento sempre allineato alle necessità attuali del team.

== Scopo del progetto
Il capitolato C5, denominato _WMS3: Warehouse Management 3D_ e aggiudicato al team, ha come obiettivo la realizzazione di un sistema di gestione di magazzino in tre dimensioni. L'applicazione sviluppata consentirà all'utente di accedere a un ambiente virtuale tridimensionale, dove potrà navigare all'interno di un magazzino e visualizzare gli oggetti presenti nelle scaffalature.
L'utente avrà la possibilità di cercare specifici prodotti all'interno del magazzino, sfruttando la visualizzazione 3D per individuare rapidamente la posizione degli articoli desiderati, potrà modificare l'assetto del magazzino e inviare una notifica verso l'esterno in caso ci sia il bisogno di prelevare un articolo.

== Glossario
Al fine di eliminare le ambiguità durante la consultazione dei documenti, verrà introdotto un Glossario, che rappresenta una raccolta delle definizioni dei termini più rilevanti, fornendo chiarimenti sui significati particolari associati a ciascun termine.

== Riferimenti

=== Riferimenti normativi

- Capitolato d'appalto C5: _WMS3_
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")

=== Riferimenti informativi

- Documentazione Typst
#link("https://typst.app/docs/")

- Documentazione Git
#link("https://git-scm.com/docs")

- Documentazione Jira
#link("https://confluence.atlassian.com/jira")

- Documentazione Three.js
#link("https://threejs.org/docs/")
\
\
= Processi di accordo
== Fornitura
=== Scopo e descrizione
Il processo di fornitura ha come obiettivo l'offerta di un prodotto o servizio che soddisfi i requisiti concordati con proponente e committente. Tra quest'ultimi e il fornitore, in questo caso il gruppo _Error_418_, deve essere stabilito un accordo all'interno del quale vengono definiti i requisiti, le tempistiche e i costi da rispettare. Prima di ciò, lo stesso fornitore deve aver effettuato un'attenta analisi del progetto proposto e dei rischi annessi alla sua realizzazione, con relative linee guida per mitigarli.
=== Rapporti con il proponente
Il dialogo tra il gruppo _Error_418_ e il proponente dovrà essere attivo e frequente fino al termine del progetto didattico, in modo che si riescano a raccogliere più feedback possibili riguardo la correttezza del lavoro svolto. Questa comunicazione avverrà in due modalità:
+ scritta, tramite e-mail, utilizzata per:
  - comunicazioni di breve durata;
  - condivisione di verbali e materiali informativi;
  - fissare meeting.
+ orale, tramite meeting su Zoom, durante i quali si affronteranno:
  - feedback sul lavoro prodotto;
  - chiarimenti sul capitolato;
  - chiarimenti riguardo casi d'uso e requisiti.
I meeting avranno cadenza variabile, e saranno fissati al termine di altri incontri oppure via e-mail. Il contenuto di ogni incontro sarà raccolto all'interno del relativo verbale. Ognuno di questi verbali sarà validato dal proponente tramite l'apposizione di una firma, e sarà liberamente consultabile all'interno del repository GitHub del gruppo dedicato ai documenti (_#link("https://github.com/Error-418-SWE/Documenti/tree/main")_), al percorso `NomeBaseline/Documentazione esterna/Verbali`, dove `NomeBaseline` è uno tra:
- 1 - Candidatura;
- 2 - RTB;
- 3 - PB.

=== Documentazione prodotta
In questa sezione viene descritta la documentazione prodotta dal gruppo nel processo di fornitura, la quale sarà resa disponibile al proponente, _Sanmarco Informatica_, e ai committenti, i professori Tullio Vardanega e Riccardo Cardin.

==== Valutazione dei capitolati
Documento nel quale il gruppo ha analizzato le diverse proposte di progetto rese disponibili dai vari proponenti. Per ogni capitolato vengono presentati tre paragrafi:
+ *Descrizione*: vengono indicati i nominativi di proponente e committente, e viene presentato l'obiettivo del progetto;
+ *Dominio tecnologico*: vengono elencate le tecnologie consigliate dal proponente del capitolato;
+ *Considerazioni*: il gruppo dà la propria valutazione sul capitolato.

==== Analisi dei rischi
Nel documento di Analisi dei rischi vengono presentati i rischi a cui il gruppo potrebbe essere esposto durante il periodo in cui lavora al progetto. Ogni rischio viene classificato secondo tre parametri:
- *Impatto*: esprime l'effetto generato dall'evento;
- *Probabilità*: esprime la probabilità del verificarsi del rischio;
- *Conseguenze*: effetti collaterali a breve o medio termine che il rischio può comportare.
Ad ogni rischio sono inoltre associate delle buone pratiche da seguire per mitigarlo.

==== Preventivo dei costi
Nel Preventivo dei costi viene esposta una tabella che presenta una previsione riguardo il numero di ore di lavoro totali, per membro e per ruolo e viene fornito un calcolo del costo totale del progetto. Prima della tabella vengono spiegate le motivazioni che hanno portato alla suddivisione oraria individuata, effettuando una tripartizione del periodo di lavoro complessivo e analizzando ogni ruolo presente all'interno del team.

==== Lettera di presentazione
Breve documento dove il gruppo si presenta e dichiara il suo impegno nello svolgimento del capitolato scelto. Viene dato un riferimento al repository dove si potranno trovare i documenti necessari alla candidatura e vengono dichiarati il costo della realizzazione del prodotto e la data di consegna prevista.

==== Analisi dei Requisiti
In questo documento vengono raccolti tutti gli use case e requisiti individuati dal gruppo con il supporto del proponente. Ogni use case e requisito è identificato da un codice, così da essere facilmente individuabile e tracciabile. All'inizio del documento sono inoltre descritti i criteri di qualità che il gruppo ha seguito durante la redazione.

==== Piano di Progetto
Documento che governa la pianificazione dell'avanzamento del progetto, determinando task e obiettivi da raggiungere e analizzando il lavoro lavoro svolto. È articolato in cinque sezioni:
- Rischi e loro mitigazione;
- Divisione temporale di sviluppo;
- Preventivo dei costi di realizzazione;
- Pianificazione del lavoro;
- Consuntivo del progetto.

==== Piano di Qualifica
Nel Piano di Qualifica vengono fissati obiettivi di qualità e vengono descritti i processi necessari per conseguirli con realative procedure di controllo.

==== Glossario
Nel Glossario vengono elencati e definiti in modo preciso tutti i termini rilevanti utilizzati all'interno del progetto. È un documento estremamente importante per evitare situazioni di ambiguità, e garantire così una corretta comprensione della documentazione da parte di tutte le parti coinvolte.

=== Strumenti utilizzati
In questa sezione sono indicati gli strumenti utilizzati dal gruppo nel processo di fornitura.

- *Zoom*: applicazione per videoconferenze;
- *Google slides*: servizio cloud offerto da Google, utilizzato dal gruppo per le presentazioni del diario di bordo, ovvero l'attività in cui il gruppo aggiorna il committente riguardo l'andamento del lavoro;
- *Jira*: Issue Tracking System utilizzato per la pianificazione del lavoro.

= Processi di supporto

== Documentazione

=== Scopo e descrizione
Il processo di documentazione del lavoro ha molteplici obbiettivi, il primo è quello di tenere traccia di cio che è stato svolto e delle decisioni prese nell'ambito del progetto, il secondo è quello di normare le attività in modo che i componenti del gruppo possano lavorare in maniera uniforme ed ordinata.\
La documentazione è quindi un processo di supporto all’attività di gestione di progetto, essendo un mezzo che, tramite versionamento e integrazione continua, norma attività di codifica, progettazione, analisi ed integrazione.\
Questa sezione descrive tutte le norme riguardanti la stesura, il mantenimento e l'aggiornamento della documentazione prodotta da Error_418 per ogni fase del ciclo di vita del software.

=== Aspettative
- Definire una serie di regole per la stesura di documenti o per metodi di lavoro in modo che ogni attività svolta da un membro del gruppo sia valutabile secondo criteri di correttezza decisi a priori.
- Documentare come svolgere un lavoro in modo che un membro del gruppo possa lavorare in maniera uniforme rispetto al resto del gruppo.

=== Typst
Il team Error 418 ha deciso di utilizzare Typst come linguaggio per redarre la documentazione. Questo è un linguaggio di markup che permette molte delle funzionalità offerte da strumenti come LaTeX, richiedendo però molto meno sforzo durante la procedura di creazione e di compilazione del file.\
Questo permette di evitare l'apprendimento della sintassi LaTeX che può risultare ostica ai novizi e consentendo al team di concentrarsi esclusivamente sul corpo del file evitando perdite di tempo e frustrazione data da errori che non si capisce come risolvere o che richiederebbero molto tempo per essere risolti.

=== Ciclo di vita
La creazione e il versionamento di un documento è stato automatizzato quanto più possibile in modo da ridurre l'impatto dell'errore umano.\
Le modalità che permetto di creare un documento sono:
+ creare un nuovo branch a partire dal branch che raccoglie i sorgenti (src);
+ creare una nuova cartella rinominata con lo stesso nome del sorgente che si andrà a creare;
+ creare un nuovo file .typ a partire da uno dei template che sono stati creati appositamente dal team (per scopo e struttura dei template controllare la sezione @template);
+ scrivere il corpo del documento modificando eventualmente alcuni specifici campi del template (titolo, data, ecc..);
+ accertarsi che il documento rispetti tutte le norme definite nelle "Norme di progetto";
+ salvare e creare la pull request per integrare il sorgente all'interno del branch src;
+ scegliere un nome della pull request aderente alle norme definite nelle "Norme di progetto";
+ una volta creata la pull request avvierà una serie di action che provvederanno a verificare la correttezza la presenza o meno di alcuni campi del documento, creare o aggiornare il changelog, compilare il documento e integrare il risultante file .pdf all'interno del branch main;
=== Template <template>
Il team ha creato dei template per la creazione di documenti, questo facilita il lavoro di compilazione e verifica da parte delle GitHub.\
Possono essere trovate nella root della repository github nel branch src.\
I template sono:
- template.typ: per la creazione di documenti interni o esterni;
- quickstart.typ: per la creazione di verbali interni o esterni.

=== Struttura dei documenti
Esistono due tipi di documenti fondamentali: "documento" e "verbali" e hanno alcune differenze a livello di struttura.\
Ogni documento è formato da un file Typst e da un file log.csv creato automaticamente dalle github action (e che si occupano anche di aggiornarlo). Questi due file vengono automaticamente compilati insieme e il .pdf risultante viene inserito all'interno del branch main.

==== Verbali
Un verbale è la documentazione di un meeting svolto tra i membri del gruppo (verbale interno) o con un referente esterno (verbale esterno). Documentare le riunioni permette di tenere traccia delle decisioni prese dal gruppo in un dato momento e permette a chi non riesce a presenziare di tenersi al passo con il gruppo in maniera asincrona. \
I verbali devono essere rinominati nel seguente modo "yy-mm-dd.typ" e nello stesso modo deve essere chiamata la sottocartella in cui è inserito.

===== Intestazione dei verbali
Ogni verbale, interno o esterno, deve presentare:
- intestazione:\
  + logo del gruppo (logo.png disponibile nella root del branch src);
  + nome del gruppo: Error 418;
  + titolo del documento: standardizzato nella forma "Verbale"+"interno/esterno"+"data del verbale nella forma dd/mm/yy";
  + eventuale sottotitolo: specifica se una riunione ha avuto uno specifico argomento di discussione, è opzionale;
  + referente: referente dell'azienda proponente che ha partecipate alla riunione in caso di verbale esterno;
  + redattori e destinatari;
  + partecipanti: chi ha partecipato alla riunione e il ruolo che ha ricoperto;
  + ora di inizio meeting, ora di fine meeting e durata del meeting (calcolata automanticamente).
===== Corpo del verbale
L'effettivo contenuto del documento dove vengono riportati i dettaglio gli argomenti trattati nel meeting, il corpo è così organizzato:
- section "Ordine del giorno": riporta gli argomenti da trattare nel meeting;
- subsection: ogni subsection riporta l'effettivo resoconto dell'incontro con evetuali dubbi e soluzioni a cui si è arrivati durante il meeting;
- section "Azioni da intraprendere": riporta le operazioni che andranno svolte a seguito del meeting per risolvere problemi emersi durante il meeting o per continuare il lavoro.
- firme esterne: per verbali esterni, firma del referente esterno che approva il resoconto stilato del gruppo.

==== Documenti
Documenti prodotto dal team Error 418:
- Norme di Progetto;
- Piano di Progetto;
- Piano di Qualifica;
- Glossario
- Analisi dei Requisiti
- Specifica Architetturale;
- Manuale Utente.

===== Intestazione dei documenti
Ogni documento deve presentare:
- intestazione:\
  + logo del gruppo (logo.png disponibile nella root del branch src);
  + nome del gruppo: Error 418;
  + titolo del documento
  + redattori e destinatari;
  + tabella con i componenti del gruppo e i ruoli che ricoprono;
  + changelog;
  + indice.

===== Corpo del documento
Il contenuto del documento è suddiviso in capitoli, ognuno dei quali è composto da più
sezioni.

=== Convenzioni stilisteche

==== Sintattiche/Grammaticali

Per la scrittura dei documenti è richiesto uno stile di scrittura impersonale (preferendo per esempio frasi come "il gruppo ha fatto" anziché "abbiamo fatto"). Si richiede inoltre di spezzare i paragrafi troppo lunghi con un "a capo" in modo da dividere il testo in aree logiche di più facile comprensione e lettura.

=== Elenchi puntati
Viene inserito ";" alla fine delle voci dell'elenco tranne l'ultima che termina con ".". Ogni voce dell'elenco inizia con una lettera minuscola.