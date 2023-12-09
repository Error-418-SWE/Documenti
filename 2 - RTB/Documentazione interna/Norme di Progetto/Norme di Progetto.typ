#import "/template.typ": *

#show: project.with(
  title: "Norme di Progetto",
  subTitle: "Norme, processi e disciplina",
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

= Processi di accordo
== Processo di fornitura
=== Scopo e descrizione
Il processo di fornitura ha come obiettivo l'offerta di un prodotto o servizio che soddisfi i requisiti concordati con proponente e committente. Tra quest'ultimi e il fornitore deve essere stabilito un accordo all'interno del quale vengono definiti i requisiti, le tempistiche e i costi da rispettare. Prima di allora, il fornitore avrà effettuato un'attenta analisi del progetto proposto e dei rischi annessi alla sua realizzazione, con relative linee guida per mitigarli.
=== Rapporti con il proponente
Il dialogo tra il gruppo _Error_418_ e il proponente dovrà essere attivo e frequente fino al termine del progetto didattico, in modo che si riescano a raccogliere più feedback possibili riguardo la correttezza del lavoro svolto. Questa comunicazione avverrà in due modalità:
+ scritta, asincrona, utilizzata per:
  - comunicazioni di breve durata;
  - condivisione di verbali e materiali informativi;
  - coordinamento.
+ orale, sincrona, durante i quali si affronteranno:
  - feedback sul lavoro prodotto;
  - chiarimenti sul capitolato;
  - chiarimenti riguardo casi d'uso e requisiti.
I meeting avranno cadenza variabile, e saranno fissati al termine di altri incontri oppure via e-mail. Il contenuto di ogni incontro sarà raccolto all'interno del relativo verbale. Ognuno di questi verbali sarà validato dal proponente tramite l'apposizione di una firma, e sarà liberamente consultabile all'interno del repository GitHub del gruppo dedicato ai documenti (_#link("https://github.com/Error-418-SWE/Documenti/tree/main")_), al percorso `NomeMilestone/Documentazione esterna/Verbali`, dove `NomeMilestone` è uno tra:
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


= Processi di ciclo di vita

== Processi organizzativi abilitanti

I processi organizzativi abilitanti garantiscono la capacità dell'organizzazione di acquisire e fornire prodotti o servizi attraverso l'avvio, il supporto e il controllo di progetti. Questi processi forniscono le risorse e l'infrastruttura necessarie a supportare i progetti e il conseguimento degli obiettivi dell'organizzazione e degli accordi fra parti. Non sono da intendersi come un insieme esaustivo di processi aziendali atti alla gestione strategica dell'organizzazione.

I processi organizzativi abilitanti sono i seguenti:
//+ Processo di gestione dei modelli di ciclo di vita;
+ Processo di gestione dell'infrastruttura;
// + Processo di gestione del portfolio;
+ Processo di gestione delle risorse umane;
// + Processo di gestione della qualità;
// + Processo di gestione della conoscenza.

=== Processi di gestione dell'infrastruttura

==== Scopo

Lo scopo del processo di gestione dell'infrastruttura è fornire l'infrastruttura e i servizi a supporto dell'organizzazione per il conseguimento degli obiettivi di progetto nel corso dell'intero ciclo di vita.

Questo processo definisce, fornisce e regola i servizi, gli strumenti e le tecnologie di comunicazione e condivisione delle informazioni a supporto degli scopi dell'organizzazione.

==== Requisiti

L'infrastruttura è costituita dai servizi, dagli strumenti e dalle tecnologie di comunicazione e condivisione delle informazioni adottate a supporto degli scopi dell'organizzazione. L'infrastruttura risponde alle necessità di comunicazione interna ed esterna.

// Li sposterei
I principi della comunicazione che ispirano i processi di gestione dell'infrastruttura sono:

+ Comunicazione aperta: le comunicazioni avvengono in modalità pubblica, ovvero tutti i membri possono partecipare (compatibilmente con i loro impegni di progetto e sempre nel rispetto delle rispettive responsabilità). I membri del gruppo hanno accesso e possono liberamente consultare i messaggi, le eventuali registrazioni e i verbali;
+ Comunicazione onesta: quanto comunicato rappresenta sempre il reale stato del progetto. Nessun membro, in nessun caso, deve nascondere le criticità incontrate;
+ Comunicazione proattiva: comunicare con cognizione di causa, offrendo spunti concreti di discussione. Ogni comunicazione deve poter essere processata dagli interessati nel minor tempo possibile.
+ Comunicazione frequente: la frequenza della comunicazione permette di prendere decisione in modo tempestivo e informato.

I requisiti dei processi di gestione dell'infrastruttura sono:

+ Semplicità di adozione di strumenti e servizi;
+ Accesso rapido alle informazioni, anche in mobilità;
+ Non ridondanza tra strumenti e servizi adottati.

==== Infrastruttura di comunicazione

===== Comunicazione interna <comunicazioneInterna>

#link("https://discord.com/")[*Discord*] rappresenta il canale primario di comunicazione interna. È una piattaforma di comunicazione che fornisce:

+ Un servizio di messaggistica istantanea che permette la suddivisione delle conversazioni in canali tematici;
+ Un servizio di videochiamate usato per le comunicazioni sincrone interne in modalità remota.

Le comunicazioni testuali tramite messaggio istantaneo sono organizzate per argomento. Discord adotta il termine "canale" per designare tale suddivisione tematica. I canali attualmente in uso sono:

- Canale generale (`#random`): usato per le comunicazioni informali;
- Canale meeting (`#meeting`): usato per l'organizzazione dei meeting interni e la condivisione degli ordini del giorno;
- Canale di riferimento (`#riferimenti`): usato come bacheca per raccogliere ed organizzare, in un unico luogo, le risorse a supporto degli scopi dell'organizzazione;
- Altri canali tematici: le comunicazioni relative ad uno specifico prodotto dei processi dell'organizzazione avvengono in un canale dedicato.

La suddivisione delle comunicazioni interne in canali ha lo scopo di ridurre le distrazioni, facilitare l'accesso alle informazioni e semplificare la comunicazione interna.

Le comunicazioni sincrone in videochiamata avvengono nei cosiddetti "canali vocali". Vengono forniti quattro canali vocali generici ad accesso libero. I membri dell'organizzazione hanno la facoltà di incontrarsi in qualsiasi momento in videochiamate interne. I canali vocali non sono organizzati tematicamente perché offrono la persistenza.

#link("https://miro.com/")[*Miro*] è un servizio di collaborazione per team basato su _whiteboard_. Offre la possibilità di creare board multimediali e permette la collaborazione asincrona. È utilizzato per:

+ Raccogliere i feedback interni da discutere durante i meeting di retrospettiva;
+ Supportare gli incontri interni di _brainstorming_;
+ Supportare i meeting con gli interlocutori esterni.

Oltre a Discord e Miro, l'organizzazione comunica anche tramite *Jira* (ITS) e *GitHub* (VCS). L'uso di questi strumenti è discusso in dettaglio nelle sezioni apposite.

===== Comunicazione esterna

Le modalità e la frequenza delle comunicazioni esterne sono da stabilirsi con i diretti interessati, secondo necessità e disponibilità degli interlocutori. Le comunicazioni esterne avvengono su due canali primari: Gmail e Zoom.

#link("https://mail.google.com/")[*Gmail*] è il servizio di posta elettronica di Google. L'indirizzo di posta elettronica dell'organizzazione è:
#align(center, `error418swe@gmail.com`)
Viene utilizzato per tutte le comunicazioni da e verso gli interlocutori esterni. Tutti i membri dell'organizzazione possono accedere in qualsiasi momento alla casella di posta elettronica. Inoltre, tutte le conversazioni vengono inoltrate automaticamente agli indirizzi e-mail istituzionali di ciascun membro.

L'indirizzo è reso noto nel frontespizio di ogni documento prodotto dall'organizzazione.

#link("https://zoom.us/")[*Zoom*] è un servizio di teleconferenza. A meno di accordi specifici tra le parti, l'organizzazione utilizza Zoom per effettuare videochiamate con gli interlocutori esterni.

==== Mantenimento dell'infrastruttura

Sono compiti dell'amministratore il mantenimento dell'infrastruttura, l'aggiornamento delle norme e dei processi e l'identificazione di nuovi servizi a supporto delle attività dell'organizzazione.

L'organizzazione adotta nuovi servizi, strumenti e tecnologie di comunicazione avendo cura di non introdurre ridondanza. L'organizzazione si dota di un insieme di strumenti e servizi minimo e sufficiente a coprire tutti i requisiti di comunicazione.

=== Processo di gestione delle Risorse Umane

La natura didattica del progetto riduce le prerogative del processo di gestione delle Risorse umane. Per questa ragione, l'organizzazione dichiara la _conformance to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.2.4_.

==== Scopo

Questo processo fornisce all'organizzazione le risorse umane necessarie all'esecuzione dei processi di ciclo di vita al fine di realizzare gli obiettivi di progetto, dell'organizzazione e degli stakeholder.

==== Attività e compiti

===== Identificare le competenze dei membri

L'organizzazione sottopone, ad ogni nuovo membro, un form conoscitivo atto a identificare le competenze pregresse. Il form è realizzato con #link("https://www.google.it/intl/it/forms/about/")[*Google Forms*] e include domande su:

+ Strumenti di collaborazione;
+ Linguaggi di programmazione;
+ Tecnologie;
+ Strumenti di automazione;
+ Strumenti di controllo di versione.

Le risposte sono non vincolanti e non influiscono in alcun modo sulla rotazione dei ruoli, sui compiti assegnati o sull'organizzazione interna.

===== Identificare le competenze richieste

Le competenze richieste sono identificate tramite:

+ Analisi dei Capitolati;
+ Studio del dominio di progetto;
+ Incontri con i Proponenti e successivi colloqui.

===== Sviluppare le competenze <gestione-risorse-umane-sviluppo>

Lo sviluppo di nuove competenze riguarda i membri, e non i ruoli. Per questa ragione, i processi di sviluppo di competenze sono universali e condivisi.

L'organizzazione si adopera per sviluppare le competenze dei membri mediante:

+ Attività di _peer-tutoring_ in concomitanza delle rotazioni di ruolo;
+ Pubblicazione interna di tutorial tecnici scritti (eventualmente accompagnati da brevi video, se utili a migliorare la comprensione degli argomenti trattati);
+ Attività di _tutoring_ interno su richiesta, sincrono, in base alla necessità;
+ Attività di _mentoring_ esterno su richiesta, in base alla necessità e alla disponibilità dell'interlocutore esterno;
+ Condivisione delle best practice in sessione collettiva.

Le sessioni di tutoring sono "a sportello" ed è responsabilità dei singoli membri richiederne l'attivazione. Il responsabile, identificati i temi di maggior interesse, può espressamente richiedere che un ruolo copra le esigenze di tutoring interno tramite le modalità sopra indicate.

===== Acquisire e fornire competenze

I membri dell'organizzazione sono prestabiliti. Qualora le competenze interne all'organizzazione siano deficitarie, è richiesta l'attivazione delle attività descritte in @gestione-risorse-umane-sviluppo.

Non sono previste variazioni della composizione dell'organizzazione, se non in via straordinaria e comunque discussa preventivamente con il Committente.

= Processi di gestione tecnica

== Processo di pianificazione di progetto <pianificazione>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.1_
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

===== Suddivisione temporale <sprint>
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

== Processo di valutazione e controllo di progetto <valutazioneControllo>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.2_
=== Scopo
Il processo di valutazione e controllo ha lo scopo di determinare lo stato del progetto tramite la verifica dell'allineamento del lavoro con i piani definiti. Tale allineamento viene dimostrato osservando i seguenti parametri:

- tempistiche;
- costi;
- obiettivi raggiunti.

Questo viene fatto all'interno di revisioni periodiche chiamate retrospettive, e viene messo per iscritto all'interno dei verbali di tali riunioni e nei paragrafi di consuntivo del Piano di progetto.

=== Attività
==== Piano di valutazione e controllo del progetto
La valutazione e il controllo del progetto vengono fatte settimanalmente, in corrispondenza della riunione di retrospettiva. Durante questa riunione si valuta ciò che è stato svolto durante il periodo di lavoro (_sprint_) che si sta concludendo, se ne identificano i problemi e si decidono soluzioni di controllo che vadano a risolvere o arginare i problemi individuati.

Oltre a queste revisioni periodiche interne, sono presenti attività nelle quali il gruppo espone la propria situazione al Proponente, tramite riunione su Zoom, e Committente, tramite le attività denominate "diario di bordo".

Inoltre, è necessario che il gruppo svolga delle revisioni tecniche con il Committente per avere una valutazione esterna. Queste due revisioni sono chiamate Requirements and Technology Baseline (o RTB) e Product Baseline (o PB).

==== Valutazione <valutazione>
Durante l'attività di valutazione il gruppo deve analizzare la situazione del progetto, e per fare ciò deve adottare degli strumenti che rappresentino tale situazione nel modo più oggettivo possibile. Il momento in cui si effettua questo compito è la retrospettiva settimanale. Questa viene fatta tramite meeting interno su Discord con il supporto di una board Miro. Il meeting è suddiviso concettualmente in tre parti, rappresentate all'interno della board da tre riquadri:

- Keep doing: raccoglie tutti gli aspetti positivi (e di conseguenza da mantenere) dello sprint;
- Improvements: raccoglie tutte le problematiche incontrate durante lo sprint;
- Task: raccoglie tutte le attività da svolgere nel prossimo sprint, alcune delle quali direttamente collegate agli elementi appartenenti ad "Improvements".

Tramite Miro il gruppo riesce ad avere una panoramica della situazione del lavoro, che viene poi completata da Jira, l'Issue Tracking Systema adottato. Al suo interno il gruppo ha definito le due milestone principali (RTB e PB), nelle quali ha creato delle Epic che rappresentano ciò che è necessario produrre per quella milestone, e che raccolgo tutti i task necessari alla produzione di tali prodotti (documenti o software).

Milestone e Epic vengono accompagnate all'interno di Jira da una barra di completamento che rappresenta in verde il lavoro svolto, in blu il lavoro in fase di svolgimento e lascia vuota la parte dedicata alle attività definite ma non ancora in svolgimento. Queste barre contribuiscono a una rappresentazione oggettiva della situazione del progetto.

Oltre a queste, Jira offre la funzionalità di visualizzazione di un burndown-chart, ovvero un grafico che rappresenta l'andamento del lavoro all'interno di uno sprint in due possibili modalità:

- quantità di story points completati;
- quantità di issue completate.

Entrambe le rappresentazioni pongono nell'asse $x$ del grafico il tempo, indicato in giorni. Questi grafici contengono inoltre una retta rappresentante l'andamento ideale del lavoro, grazie alla quale risulta più semplice verificare l'efficienza del gruppo.

Al termine dell'incontro di retrospettiva viene redatto il paragrafo di consuntivo dello sprint nel Piano di progetto, nel quale, oltre a fare un resoconto dello sprint, si guarda anche come sta procedendo il progetto dal punto di vista economico. Dato che ogni ruolo ha un costo, a fine sprint si calcolano i costi totali, in base alle ore che sono state svolte dai singoli ruoli in quel periodo. Questo indicatore contribuisce ad avere un resoconto completo del progetto, e permette al gruppo di comprendere meglio come sta lavorando e se sta gestendo correttamente le risorse a sua disposizione.

==== Controllo
Nell'attività di controllo si intraprendono azioni correttive nei confronti dei problemi individuati. Questi problemi possono essere di duplice natura:

+ mancato raggiungimento degli obiettivi prefissati;
+ miglioramenti e accortezze da adottare.

===== Mancato raggiungimento degli obiettivi prefissati
È necessario che alla chiusura dello sprint le attività ancora in fase di svolgimento vengano riportate nello sprint successivo, insieme a tutte quelle attività pianificate ma non ancora iniziate che sono considerate importanti. Tutte le attività che non vengono considerate importanti, ad esempio attività di cui si è rivalutato il grado di priorità, vengono inserite nel backlog, ovvero un archivio di task non assegnate a nessuno sprint. Una situazione di mancato raggiungimento degli obiettivi può essere causata anche da una pianificazione errata e troppo ottimista, ed è quindi necessario che essa sia rivista e migliorata.

===== Miglioramenti e accortezze da adottare
In questo caso le soluzioni correttive vengono decise dal gruppo tramite la visualizzazione e l'analisi della board Miro durante la retrospettiva. Nella board infatti, come esposto nella @valutazione, alcune delle task raccolte rispondono direttamente ai problemi individuati nella parte di Improvements.