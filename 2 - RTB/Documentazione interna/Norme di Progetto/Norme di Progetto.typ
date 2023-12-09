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
//todo: aggiungere il fatto che sarà l'amministratore ad avere il compito di redigere i verbali post meeting

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
+ processo di gestione dei modelli di ciclo di vita;
+ processo di gestione dell'infrastruttura;
// + Processo di gestione del portfolio;
+ processo di gestione delle risorse umane;
// + Processo di gestione della qualità;
// + Processo di gestione della conoscenza.

=== Processo di gestione dei modelli di ciclo di vita
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.1_

==== Scopo

Lo scopo del processo di gestione del modello di ciclo di vita è definire, mantenere e garantire regole, processi, modelli e procedure di ciclo di vita. \
Questo processo fornisce politiche, processi, modelli e procedure del ciclo di vita coerenti con gli obiettivi dell'organizzazione, che sono definiti, adattati, migliorati e mantenuti per supportare le esigenze individuali dei progetti all'interno del contesto dell'organizzazione, e che sono in grado di essere applicati mediante metodi e strumenti efficaci e comprovati.\

Il gruppo adotta il modello PDCA (Plan-Do-Check-Act) per la gestione del ciclo di vita del software. Questo modello prevede quattro fasi:
+ pianificazione (Plan): definizione degli obiettivi e dei processi necessari per raggiungerli;
+ esecuzione (Do): attuazione del piano;
+ verifica (Check): monitoraggio e misurazione dei processi e dei prodotti rispetto agli obiettivi e ai requisiti, e reportistica dei risultati;
+ attuazione (Act): azioni per migliorare le prestazioni, se necessario, in base ai risultati della verifica.

==== Organizzazione del processso 
===== Pianificazione
La pianificazione del processo è compito del Responsabile, il quale al termine dello sprint precedente, in base alle attività svolte e ai risultati ottenuti, pianifica le attività da svolgere nello sprint successivo. \
La pianificazione è un'attività iterativa, che viene svolta all'inizio dello sprint. Il Responsabile, in relazione al progresso svolto, può decidere di modificare la pianificazione iniziale, aggiungendo o rimuovendo attività. \
Questo processo permette di individuare le attività da svolgere, le risorse necessarie e le tempistiche di svolgimento, mediante il sistema di ticketing offerto da Jira.\
Il risutato di questo processo è visibile all'interno del Piano di Progetto.\
\ 
===== Esecuzione
Identifica il processo di sviluppo del prodotto, dove quanto pianificato viene concretamente svolto. \
Il processo di esecuzione è composto da due attività principali:
+ sviluppo del prodotto;
+ sviluppo della documentazione.

Durante questo processo, ogni ruolo svolge le attività assegnate seguendo quanto stabilito nella pianificazione, e sarà compito del Responsabile verificare che le attività siano svolte correttamente e nei tempi previsti. Ogni membro avrà la possibilità di segnalare eventuali criticità, avendo a disposizione una board apposita sulla piattaforma Miro.\ Questo permette di avere un resoconto pronto a fine sprint in merito al processo di avanzamento, individuando: \
- "Keep doing": attività che hanno dato buoni risultati e che quindi vanno mantenute;
- "Things to change": attività che hanno dato risultati non soddisfacenti e che quindi vanno modificate.
\
La progressione del lavoro è visibile mediante:
- retrospettiva;
- grafici di burndown (Jira);
- board di avanzamento (Miro).

I prodotti di questo processo, permettono dunque di procedere con la verifica e lo stabilimento delle contromisure e dei miglioramenti necessari.
\ \
===== Verifica
Al termine di ogni sprint, il gruppo procederà con il meeting di retrospettiva, durante il quale verranno analizzati i risultati ottenuti e le attività svolte, basandosi sui prodotti della fase di esecuzione: \
+ grafici di burndown:
  - permettono di avere una visione rapida di quanto del lavoro pianificato è stato portato a termine: si tratta di una metrica puramente quantitativa, che tiene conto di del numero di ticket chiusi e del numero di ticket aperti;
+ board di avanzamento:
  - "Keep doing": attività che hanno dato buoni risultati e che quindi vanno mantenute: questo permette al gruppo di individuare il _modus operandi_ più efficace ed efficiente per svolgere le attività;
  - "Things to change": attività che hanno dato risultati non soddisfacenti e che quindi vanno modificate: si tratta dell'aspetto più delicato da considerare, in quanto permette di individuare le criticità e le inefficienze del processo di sviluppo, e di conseguenza di apportare le modifiche necessarie per migliorare il processo stesso.

Questa analisi individua i miglioramenti da apportare al processo di sviluppo, stabilendo le contromisure necessarie per migliorare il processo stesso.
  \ \
===== Attuazione
L'attuazione è l'ultima fase del processo di gestione del ciclo di vita, e consiste nell'attuare le contromisure stabilite durante la fase di verifica. \
L'obiettivo è sopperire alle mancanze e alle inefficienze del processo di sviluppo, in modo da migliorare la qualità del prodotto e la produttività del gruppo. \
Diventa compito del Responsabile stabilire le attività necessarie per attuare le contromisure, e di conseguenza di pianificare le attività da svolgere nello sprint successivo. \
Il risultato di questo processo è visibile all'interno del Piano di Progetto.
\
\
==== Ruoli 
===== Responsabile
Il Responsabile è la figura chiave che guida il progetto, assumendo il ruolo di referente principale per il gruppo e per gli stakeholders. \ 

Le responsabilità del Responsabile includono:

+ coordinamento: ha il compito di supervisionare i membri del gruppo, assicurandosi che le attività siano svolte seguendo le norme identificate in questo documento;

+ pianificazione: stabilisce le attività da svolgere, le relative scadenze e priorità, sancendo l'inizio e la fine di ogni sprint;

+ monitoraggio e gestione dei costi: tiene sotto controllo l'andamento del progetto, stima i costi e gestisce l'analisi dei rischi, garantendo che il progetto rimanga entro il budget previsto;

+ norme di progetto: si occupa della stesura e dell'aggiornamento delle norme di progetto, che devono essere rispettate da tutti i membri del gruppo;

+ relazioni esterne: gestisce tutte le interazioni con il Proponente e i Committenti assicurando una comunicazione fluida e efficace;
\ \
===== Amministratore
L'Amministratore è la figura che gestisce l'ambiente di lavoro e gli strumenti utilizzati dal gruppo per tutta la durata del progetto. Ha il compito di assicurare che gli strumenti proposti ai membri del gruppo siano efficienti e favoriscano la qualità del lavoro. Monitora, assieme al Responsabile, il rispetto delle regole stabilite in questo documento e verifica che i servizi a disposizione del gruppo siano adeguati alle attività pianificate, promuovendo la produttività. \

Le responsabilità dell'Amministratore includono:

+ redazione dei verbali: l'Amministratore è responsabile della stesura dei verbali relativi ai meeting interni ed esterni;

+ gestione delle risorse: si occupa dell'amministrazione delle risorse, delle infrastrutture e dei servizi necessari per l'esecuzione dei processi di supporto;

+ automatizzazione dei processi: determina gli strumenti necessari per automatizzare i processi, come la compilazione dei file sorgenti e il sistema di versionamento automatico;

+ risoluzione dei problemi: affronta e risolve i problemi legati alla gestione dei processi.


\ \
===== Analista
L'Analista individua i bisogni del Proponente e li trasforma in requisiti che saranno l'input delle attività successive. Il suo lavoro si svolge intensamente nel periodo di avvio del progetto, e si conclude con la stesura dell'Analisi dei Requisiti. \
Il suo compito è di rilevanza in quanto un'incompleta o superficiale analisi può impattare in modo sensibile sulle attività successive, causando ritardi e costi aggiuntivi, andando ad inficiare sulla qualità e completezza del prodotto finale. \

Le responsabilità dell'Analista includono:
+ documento di Analisi dei Requisiti: l'Analista è incaricato di scrivere questo documento cruciale, che dettaglia i requisiti specifici del progetto.

+ interazione con i clienti: l'Analista lavora a stretto contatto con il Proponente o i Committenti per capire e studiare i loro bisogni;

+ classificazione dei requisiti: individua i requisiti e li classifica come funzionali e non funzionali, e come obbligatori, desiderabili o opzionali;

+ definizione del problema e degli obiettivi: l'Analista esamina la situazione attuale, identifica il problema e stabilisce gli obiettivi da raggiungere;

+ trasformazione dei bisogni in requisiti: durante l'Analisi dei Requisiti, l'Analista converte i bisogni dei clienti in requisiti specifici per la soluzione.

\ \
===== Progettista
Il Progettista ha il compito di sviluppare una soluzione che soddisfi le esigenze identificate dall'Analista, rispettando i vincoli individuati. Il Progettista trasforma i requisiti in un'architettura che modella il problema. \

Le responsabilità del Progettista includono:

+ sviluppo di un'architettura robusta e resistente ai malfunzionamenti;

+ realizzazione di soluzioni affidabili, efficienti, sostenibili e conformi ai requisiti;

+ decomposizione del sistema in componenti e organizzazione delle loro interazioni, ruoli e responsabilità;

+ garanzia di un basso grado di accoppiamento nell'architettura.

\ \
===== Programmatore
Il Programmatore è la figura più numerosa all'intero del gruppo con precise competenze tecniche.\

Le responsabilità del Programmatore includono:
+ scrittura del codice sorgente, perseguendo mantenibilità e conformità a quanto stabilito dall'architettura definita dalla progettazione;

+ creazione di test specifici per la verifica e la validazione del codice.

\ \ 
===== Verificatore
Il Verificatore controlla il lavoro svolto dagli altri membri del gruppo, assicurandosi che le norme di progetto e le aspettative siano rispettate. \

Le responsabilità del Verificatore includono:

+ verifica della qualità e della conformità della documentazione prodotta;

+ approvazione della documentazione sottoposta a verifica;

\ \
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

===== Comunicazione interna

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
