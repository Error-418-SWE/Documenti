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

= Processi di gestione tecnica

== Pianificazione di progetto <pianificazione>

=== Scopo
Il processo di pianificazione di progetto ha come scopo la produzione e coordinazione di un piano efficace ed applicabile per garantire una corretta gestione del lavoro. La pianificazione viene inserita in un documento denominato Piano di progetto (@PdP).

=== Attività
Nel processo di pianificazione sono presenti due attività principali:

+ Definizione del progetto;
+ Pianificazione del progetto e della gestione tecnica.

==== Definizione del progetto
In questa attività il gruppo deve definire tutto ciò che caratterizza il progetto, ovvero i suoi obiettivi e vincoli, sia di carattere funzionale che tecnologico. Durante la lavorazione del progetto verranno prodotti diversi output, che possono essere suddivisi nelle due macro categorie di: documentazione, codice. Entrambi questi prodotti dovranno essere realizzati rispettando determinate regole e processi, ed è quindi necessario che il gruppo definisca in questa attività uno o più cicli di vita da seguire.

==== Pianificazione del progetto e della gestione tecnica
È l'attività principale del processo, nella quale viene definita nel concreto la pianificazione.

===== Suddivisione temporale
Il gruppo ha individuato tre periodi di lavoro principali:

- Raccolta e analisi dei requisiti: vengono delineati i requisiti che il prodotto finale dovrà rispettare tramite un continuo rapporto con l'azienda proponente;
- Sviluppo della Requirements and Technology Baseline (RTB): si studiano le tecnologie da utilizzare e si applicano le conoscenze acquisite per realizzare un PoC (Proof of Concept), ovvero un prodotto software che permetta di dimostrare la padronanza delle tecnologie selezionate ai fini dello sviluppo del progetto;
- Periodo di sviluppo del Minimum Viable Product (MVP): viene progettato e implementato un prodotto software che rispetti almeno i requisiti minimi di accettazione, e che offra tutte le funzionalità richieste.

Ognuno di questi viene suddiviso a sua volta in periodi della durata di una settimana denominati _sprint_. Al termine di ogni _sprint_ viene effettuato un incontro interno di retrospettiva, nel quale si analizza criticamente la settimana appena conclusa, mostrandone aspetti positivi, aspetti da migliorare e fissando obiettivi che verrano poi riportati nell'Issue Tracking System sotto forma di task. Questi andranno a comporre il _backlog_ dello _sprint_ successivo, e il loro progressivo completamento andrà a produrre un _burndown-chart_, utilizzato dal gruppo come strumento che rappresenti in modo oggettivo l'andamento del lavoro.

===== Definizione di ruoli, responsabilità e costi
Al fine di migliorare l'assegnazione del lavoro vengono definiti sei ruoli, ognuno dei quali con precise responsabilità da rispettare. Ogni membro del gruppo dovrà assumere ognuno di questi ruoli all'interno del periodo di lavoro al progetto. L'assegnazione dei ruoli avviene con frequenza bisettimanale. Di seguito viene riportata la descrizone di ogni ruolo con i relativi compiti:

+ *Responsabile*: è presente durante l'intero progetto, in particolare si occupa di:
  - coordinare il gruppo;
  - verificare che il lavoro proceda secondo le tempistiche e i costi stabiliti;
  - rappresentare il gruppo nei rapporti con il committente;
  - gestire la pianificazione di ogni _sprint_.
+ *Amministratore*: ruolo presente durante tutto il progetto. Ha il compito di:
  - predisporre e controllare il corretto utilizzo delle procedure e degli strumenti adottati;
  - implementare e manutenere gli automatismi in modo da migliorare l'efficienza del gruppo.
+ *Analista*: è presente principalmente nei primi due periodi del progetto. Si occupa di redigere il documento Analisi dei requisiti, nel quale:
  - definisce i casi d'uso;
  - raccoglie e classifica i requisiti.
+ *Progettista*: ruolo presente principalmente negli ulimi due periodi, nei quali:
  - delinea l'architettura del prodotto;
  - definisce le linee guida implementative valutando le scelte più efficienti e sostenibili.
+ *Programmatore*: è attivo negli ultimi due periodi del progetto, ed è il responsabile della traduzione in codice eseguibile dell'architettura definita dal progettista;
+ *Verificatore*: è presente durante l'intero progetto, e si occupa di controllare che il lavoro prodotto dal gruppo rispetti gli standard qualitativi adottati.

Ad ogni ruolo è inoltre associato un costo orario, tramite cui il gruppo calcola il preventivo totale del progetto e quello di ogni _sprint_ seguito dal relativo consuntivo.

=== Piano di progetto <PdP>
Il piano di progetto è il documento principale che viene redatto durante questo processo, e ha il compito di governare la pianificazione e l'avanzamento del progetto. In questo documento vengono determinati i task e gli obiettivi da raggiungere, fornendo anche un'analisi critica del lavoro svolto fino a quel momento. Sono presenti cinque sezioni:

+ Rischi e loro mitigazione;
+ Divisione temporale di sviluppo;
+ Preventivo dei costi di realizzazione;
+ Pianificazione del lavoro;
+ Consuntivo del progetto.

La redazione del documento va di pari passo con l'avanzamento del progetto, in modo tale da essere sempre aggiornato alla situazione corrente del lavoro.