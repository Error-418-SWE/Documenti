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

- Standard ISO/IEC/IEEE 12207:2017:\
  _#link("https://www.iso.org/obp/ui/en/#iso:std:iso-iec-ieee:12207:ed-1:v1:en")_

- Standard ISO/IEC/IEEE 29148:2018:\
  _#link("https://ieeexplore.ieee.org/servlet/opac?punumber=8559684")_;

- SWEBOK:\
  _#link("http://swebokwiki.org/Main_Page;")_

- Specifica Unified Modeling Language 2:\
  _#link("https://www.omg.org/spec/UML/")_

- Regolamento di Progetto:\
  #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")

- Capitolato d'appalto C5: _WMS3_\
  #link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")

=== Riferimenti informativi

- Documentazione Typst\
  #link("https://typst.app/docs/")

- Documentazione Git\
  #link("https://git-scm.com/docs")

- Documentazione Jira\
  #link("https://confluence.atlassian.com/jira")

- Documentazione Three.js\
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
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.2.1_

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
Il processo di pianificazione di progetto ha come scopo la produzione e coordinazione di un piano efficace ed applicabile per garantire una corretta gestione del lavoro. La pianificazione viene inserita in un documento denominato Piano di Progetto (@PdP).

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

=== Piano di Progetto <PdP>
Il Piano di Progetto è il documento principale che viene redatto durante questo processo, e ha il compito di governare la pianificazione e l'avanzamento del progetto. In questo documento vengono determinati i task e gli obiettivi da raggiungere, fornendo anche un'analisi critica del lavoro svolto fino a quel momento. Sono presenti cinque sezioni:

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

Questo viene fatto all'interno di revisioni periodiche chiamate retrospettive, e viene messo per iscritto all'interno dei verbali di tali riunioni e nei paragrafi di consuntivo del Piano di Progetto.

=== Attività
==== Piano di valutazione e controllo del progetto
La valutazione e il controllo del progetto avvengono a cadenza settimanale, in corrispondenza della riunione di retrospettiva. Durante questa riunione si valuta ciò che è stato svolto durante il periodo di lavoro (_sprint_) che si sta concludendo, se ne identificano i problemi e si decidono soluzioni di controllo che vadano a risolvere o arginare i problemi individuati.

Oltre a queste revisioni periodiche interne, sono presenti attività nelle quali il gruppo espone la propria situazione al Proponente, tramite riunione su Zoom, e Committente, tramite le attività denominate "diario di bordo".

Inoltre, è necessario che il gruppo svolga delle revisioni tecniche con il Committente per avere una valutazione esterna. Queste due revisioni sono chiamate Requirements and Technology Baseline (o RTB) e Product Baseline (o PB).

==== Valutazione <valutazione>
Durante l'attività di valutazione il gruppo deve analizzare la situazione del progetto, e per fare ciò deve adottare degli strumenti che rappresentino tale situazione nel modo più oggettivo possibile. Il momento in cui si effettua questo compito è la retrospettiva settimanale. Questa si svolge tramite meeting interno su Discord con il supporto di una board Miro. Il meeting è suddiviso concettualmente in tre parti, rappresentate all'interno della board da tre riquadri:

- Keep doing: raccoglie tutti gli aspetti positivi (e di conseguenza da mantenere) dello sprint;
- Things to change: raccoglie tutte le problematiche incontrate durante lo sprint;
- To do e Improvements: raccoglie tutte le attività da svolgere nel prossimo sprint, alcune delle quali direttamente collegate agli elementi appartenenti a "Things to change".

Tramite Miro il gruppo riesce ad avere una panoramica della situazione del lavoro, che viene poi completata da Jira, l'Issue Tracking System adottato. Al suo interno il gruppo ha definito le due milestone esterne (RTB e PB), nelle quali ha creato delle Epic che rappresentano ciò che è necessario produrre per quella milestone, e che raccolgono tutti i task necessari alla produzione di tali prodotti (documenti o software).

Milestone e Epic vengono accompagnate all'interno di Jira da una barra di completamento che rappresenta in verde il lavoro svolto, in blu il lavoro in fase di svolgimento e lascia vuota la parte dedicata alle attività definite ma non ancora in svolgimento. Queste barre contribuiscono a fornire una rappresentazione oggettiva della situazione del progetto.

Oltre a queste, Jira offre la funzionalità di visualizzazione di un burndown-chart, ovvero un grafico che rappresenta l'andamento del lavoro all'interno di uno sprint in due possibili modalità:

- quantità di story points completati;
- quantità di issue completate.

Entrambe le rappresentazioni pongono nell'asse $x$ del grafico il tempo, indicato in giorni. Questi grafici contengono inoltre una retta rappresentante l'andamento ideale del lavoro, grazie alla quale risulta più semplice verificare l'efficienza del gruppo.

Al termine dell'incontro di retrospettiva viene redatto il paragrafo di consuntivo dello sprint nel Piano di Progetto, nel quale, oltre a fare un resoconto dello sprint, si analizza il suo l'aspetto economico: in base ai ruoli impegnati e al monte ore produttivo svolto, si calcola il costo effettivo del periodo concluso, aggiornando conseguentemente il costo preventivato e il documento Piano di Progetto. Questo indicatore contribuisce ad avere un resoconto completo del progetto, e permette al gruppo di comprendere meglio come sta lavorando e se sta gestendo correttamente le risorse a sua disposizione.

==== Controllo
Nell'attività di controllo si intraprendono azioni correttive nei confronti dei problemi individuati. Questi problemi possono essere di duplice natura:

+ mancato raggiungimento degli obiettivi prefissati;
+ miglioramenti e accortezze da adottare.

===== Mancato raggiungimento degli obiettivi prefissati
È necessario che alla chiusura dello sprint le attività ancora in fase di svolgimento vengano riportate nello sprint successivo, insieme a tutte quelle attività pianificate ma non ancora iniziate che sono considerate importanti. Tutte le attività che non vengono considerate importanti, ad esempio attività di cui si è rivalutato il grado di priorità, vengono riportate nel backlog. Una situazione di mancato raggiungimento degli obiettivi può essere sinonimo anche da una pianificazione errata e troppo ottimista, ed è quindi necessario che essa sia rivista e migliorata.

===== Miglioramenti e accortezze da adottare
Le soluzioni correttive vengono decise dal gruppo tramite la visualizzazione e l'analisi della board Miro durante la retrospettiva. Nella board infatti, come esposto nella @valutazione, alcune delle task raccolte rispondono direttamente ai problemi individuati nella parte di Things to change.


== Processo di gestione delle Decisioni
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.3_
=== Scopo
Lo scopo del processo di gestione delle decisioni è fornire un quadro strutturato per identificare, categorizzare e valutare le decisioni che si intendono intraprendere, selezionando la migliore in termini di benefici attesi, costi e rischi associati. \

==== Presentazione delle decisioni
Ogni decisione viene presentata identificandone:
- tipologia;
- obiettivo;
- soluzione proposta;
- vantaggi;
- svantaggi;
- impatto in termini di tempi e costi.

Il processo di decision making viene prevalentemente svolto nel meeting di retrospettiva, in modo da non contrastare la pianificazione dello sprint in corso ed evitare un eccessivo numero di meeting interni che potrebbero comportare difficoltà organizzative e un rallentamnto dell'avanzamento.
Solo decisioni critiche riguardo cambiamenti sostanziali o nuove direzioni di lavoro possono far scaturire meeting interni mirati.

Il resoconto di quanto deciso sarà visibile all'interno del verbale redatto a fine meeting.

==== Tipologie delle Decisioni
Le decisioni possono riguardare diversi aspetti del capitolato, e la loro categorizzazione è utile per individuare la migliore strategia di gestione e i ruoli coinvolti.

Le decisioni vengono dunque così classificate:
+ Decisioni organizzative: sono relative al modo di lavorare, cioè a come vengono gestiti i processi di avanzamento del progetto:
  - documento soggetto a modifiche: Norme di progetto;
  - ruoli responsbili dell'aggiornamento: Responsabile;
  - strategia di decision-making: collaborativa.

+ Decisioni sui requisiti: sono relative ai requisiti del prodotto software. Possono riguardare aspetti funzionali e non funzionali:
  - documento soggetto a modifiche: Analisi dei requisiti;
  - ruoli responsbili dell'aggiornamento: Analisti;
  - strategia di decision-making: collaborativa.

+ Decisioni di implementazione: sono decisioni relative alla stesura del codice:
  - documento soggetto a modifiche: Norme di progetto, documenti tecnici (diagramma delle classi,...);
  - ruoli responsbili dell'aggiornamento: Responsabile, Progettisti, Programmatori;
  - strategia di decision-making: expertise decision-making che prevede la consultazione di figure dotate di maggiore esperienza come Proponente o Committente.

+ Decisioni architetturali: sono decisioni relative ai pattern e alle architetture riguardanti il software.
  - documento soggetto a modifiche: Norme di progetto, documenti tecnici (diagramma delle classi,...);
  - ruoli responsbili dell'aggiornamento: Responsabile, Progettisti;
  - strategia di decision-making: expertise decision-making che prevede la consultazione di figure dotate di maggiore esperienza come Proponente o Committente.

+ Decisioni sulla qualità: sono decisioni relative ai controlli di qualità.
  - documento soggetto a modifiche: Piano di qualifica;
  - ruoli responsbili dell'aggiornamento: Responsabile, Verificatori;
  - strategia di decision-making: collaborativa.

==== Strategie di decision-making utilizzate
+ Strategia collaborativa: prevede che la decisione venga presentata e votata in modo collaborativo, coinvolgendo tutti i membri del gruppo e mediante una votazione con un sistema maggioritario, in modo che il risultato rappresenti la volontà della maggioranza.\ Strategia utilizzata per le decisioni:
  - organizzative;
  - dei requisiti;
  - qualitative.

+ Strategia expertise decision-making: prevede che la decisione venga presentata e analizzata mediante la consultazione di figure esterne più esperte, individuabili nel Proponente o nel Committente, la cui esperienza risulta determinante. \ Questa strategia viene utilizzata per le decisioni:
  - implementative;
  - architetturali. \


== Processo di Gestione dei Rischi
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.4_

=== Scopo
Lo scopo del processo di Gestione dei Rischi è identificare, analizzare, trattare e monitorare costantemente i rischi, così da poterli affrontare sistematicamente durante l'intero ciclo di vita del progetto.

=== Risultati 
Come risultato dell'implementazione del processo di Gestione dei Rischi:
- vengono identificati e analizzati i rischi;
- vengono identificate e priorizzate le opzioni di trattamento del rischio;
- viene selezionato ed implementato un trattamento appropriato;
- i rischi vengono valutati per verificare cambiamenti di stato e progressi nel trattamento.

=== Attività e compiti
Il progetto deve implementare le seguenti attività e compiti, in conformità con le norme identificate applicabili al processo di Gestione dei Rischi.

==== Pianificare la Gestione dei Rischi 
La strategia di Gestione dei Rischi per il progetto è basata su un approccio proattivo per identificare e mitigare i rischi in tutte le fasi del suo ciclo di vita. \
I rischi devono essere individuati con tempestività, consentendo la pianificazione di misure preventive e correttive in tempo utile per limitare al massimo le conseguenze.\
La classificazione dei rischi è basata sia sulla probabilità di occorrenza che sull'impatto che essi hanno sullo stato di avanzamento dei lavori e sul progetto stesso.
Nello specifico l'impatto può essere "lieve", "medio" o "grave" in base alla sua entità mentre la probabilità di occorrenza viene identificata tramite un valore intero da 1 a 5, dove 1 esprime una probabilità molto bassa, mentre 5 esprime una frequenza attesa sostenuta.\
Il team definisce approcci di trattamento appropriati, compresi piani di mitigazione specifici.

==== Gestire il profilo di rischio  
- Definire e registrare le soglie e le condizioni di rischio:\
  le soglie di rischio sono stabilite sulla base della probabilità di occorrenza e dell'impatto. 
  I rischi con un impatto negativo elevato sono trattati in modo più rigoroso rispetto a quelli con un impatto inferiore;

- Stabilire e mantenere un profilo di rischio:\
  il profilo di rischio contiene informazioni sul contesto della Gestione dei Rischi, il loro stato, le soglie, le probabilità, le azioni richieste in caso di occorrenza e le conseguenze previste.
  Sarà aggiornato in modo tempestivo in risposta ai cambiamenti nelle condizioni del progetto;

- Fornire il profilo di rischio rilevante agli interessati in base alle loro esigenze:\
  il profilo di rischio verrà all'occorrenza discusso nei meeting interni e/o esterni e tutte le parti interessate allo stato attuale dei rischi e delle azioni di trattamento possono consultare il documento dedicato "Analisi Dei Rischi.pdf" presente in: https://github.com/Error-418-SWE/Documenti-old/blob/develop/1%20-%20Candidatura/Analisi%20dei%20rischi/Analisi%20dei%20rischi.pdf .
  // riferimenti alla documentazione temporanei 

==== Analizzare i rischi
Questa attività consiste nei seguenti compiti:

+ identificare i rischi nelle categorie descritte nel contesto della Gestione dei Rischi:\ l'identificazione avviene durante tutte le fasi di sviluppo, inoltre, i rischi emergono dall'analisi delle misurazioni di qualità dei processi e del sistema software in evoluzione;

+ stimare la probabilità di occorrenza e le conseguenze di ciascun rischio identificato:\ per ogni rischio identificato, viene stimata la probabilità di occorrenza e le conseguenze, che tipicamente coinvolgono impatti tecnici, di pianificazione, di costo o di qualità;

+ valutare ciascun rischio rispetto alle sue soglie di accettazione:\ ogni rischio viene valutato rispetto alle soglie stabilite, il superamento delle quali attiva delle modalità di trattamento specifiche.

==== Trattare i rischi
Questa attività consiste nei seguenti compiti:

+ per ciascun rischio che non soddisfi la sua soglia di tolleranza, definire e registrare le strategie e le misure di trattamento consigliate. Queste possono includere:\ 
  - l'eliminazione del rischio;
  - la riduzione della sua probabilità o gravità;
  - l'accettazione del rischio. 

  Vengono anche registrate informazioni sull'efficacia delle alternative di trattamento.

+ quando viene accettato un rischio che non soddisfa la sua soglia, va considerato di priorità elevata e monitorato continuamente per determinare se sono necessarie future azioni di trattamento del rischio o se la sua priorità è cambiata;

+ una volta selezionato un trattamento del rischio, coordinare l'azione di gestione:\ dopo la selezione di un trattamento del rischio, vengono coordinate azioni di gestione per implementare le decisioni prese. Il processo di Valutazione e Controllo del Progetto può essere applicato.

==== Monitorare i rischi  
Questa attività consiste nei seguenti compiti:

- monitorare continuamente i rischi e il contesto della Gestione dei Rischi per eventuali cambiamenti e valutare i rischi quando il loro stato è cambiato;

- monitorare continuamente l'emergere di nuovi rischi durante l'intero ciclo di vita.


== Processo di gestione della configurazione
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.5_
=== Scopo
Lo scopo della Gestione della Configurazione è gestire e controllare gli elementi del sistema e le configurazioni durante il ciclo di vita. Lo scopo principale è tracciare e coordinare le procedure necessarie alla modifica della documentazione e del codice sorgente.

=== Versionamento
==== Descrizione
Il versionamento è un processo che permette di tenere traccia delle modifiche effettuate su un prodotto software o documentale. Per ogni modifica viene creata una nuova versione del prodotto, che viene identificata da un numero di versione. Il numero di versione è composto da tre cifre separate da un punto, e segue la convenzione seguente:
#align(center, `X.Y.Z`)
dove:
+ X: indica il numero di versione principale, aggiornato al cambiamento della struttura del documento. Riguarda dunque cambiamenti di organizzazione del documento, dei suoi paragrafi e della presentazione delle informazioni, nonchè cambiamento dei parametri necessari nel template dei documenti;
+ Y: indica il numero di versione secondaria, aggiornato all'aggiunta o alla rimozione di paragrafi;
+ Z: indica il numero di versione di revisione e correzione, aggiornato a seguito di cambiamenti minimi o correzioni ortografiche.

L'aggiornamento di una delle cifre del numero di versione azzera le cifre di rilevanza inferiore.
+ Questo schema descrive il versionamento dei documenti. I documenti prodotti dal gruppo sono descritti nel dettaglio nella sezione TODO
+ Un normale numero di versione deve avere la forma `X.Y.Z`, dove `X`, `Y` e `Z` sono interi non negativi.
+ Numeri di versione con `X` pari a 0 indicano documenti in lavorazione, da non considerarsi pronti al rilascio.
+ Dopo il rilascio, il contenuto della versione non deve essere modificato. Qualsiasi modifica successiva al rilascio deve causare un cambio nel numero di versione.


==== Tracciamento modifiche <tracciamento-modifiche>
Il tracciamento delle modifiche avviene per mezzo di automazioni che permettono di identificare:
- versione del documento modificato;
- data di modifica (gg-mm-aaaa, ddd);
- numero della pull request di riferimento;
- titolo della pull request di riferimento;
- autore della modifica;
- revisore incaricato.

Tali informazioni sono salvate in un file CSV, unico per ogni documento. Questo file, denominato log.csv, è salvato nella cartella dedicata al documento a cui si riferisce, e viene generato automaticamente da una GitHub Action invocata all'apertura, riapertura, sinconizzazione e chiususra di una pull request. Maggiori dettagli al paragrafo dedicato TODO.

Ogni documento, nella sezione direttamente sottostante all'indice, mostrerà in formato tabellare le informazioni relative al tracciamento delle modifiche, leggendo le informazioni dal file _log.csv_.

#figure(table(
    align: left,
    columns: (1fr, 1.7fr, 0.8fr, 5fr, 2.1fr, 2.1fr),
    [*Ver.*],[*Data*],[*PR*],[*Titolo*],[*Redattore*],[*Verificatore*],
    [1.0.0], [11-12-2023,\ Mon], [90], [DOC-123 Redazione paragrafo \ {nome_paragrafo}], [Riccardo \ Carraro], [Mattia \ Todesco]
), caption: [Esempio tracciamento modifiche])

=== Tecnologie
==== Typst
Il gruppo utilizza Typst come strumento di scrittura e compilazione dei documenti.
===== Template
Al fine di dare una struttura comune ai documenti si è creato un file Template.typ parametrizzato, sfruttando la possibilità di produrre un file PDF compilando insieme più file Typst. Questo file contiene le impostazioni di base per la creazione di un documento:
- `title`: titolo del documento;
- `subTitle`: sottotitolo del documento;
- `docType`: tipologia del documento (Verbale, Documento);
- `date`: data di creazione del documento;
- `externalPartecipants`: partecipanti esterni al gruppo;
- `authors`: autori del documento;
- `reviewers`: revisori del documento;
- `missingMembers`: membri assenti durante i meeting;
- `location`: luogo di incontro;
- `timeStart`: ora di inizio incontro;
- `timeEnd`: ora di fine incontro;
- `showLog`: flag che indica se mostrare il tracciamento delle modifiche;
- `showIndex`: flag che indica se mostrare l'indice;
- `isExternalUse`: flag che indica se il documento è per uso esterno.

Al momento della creazione di un nuovo documento sarà sufficiente importare il modello e specificare i parametri sopra elencati.

===== QuickStart
Al fine di semplificare la procedura di creazione di un documento, è stato condiviso un documento di testo denominato quickstart.txt che contiene la configurazione base per la stesura dei documenti.

==== Astro

==== GitHub <repository-github>
Lo strumento di versionamento scelto dal gruppo è GitHub.
Il gruppo Error_418 ha creato un'organizzazione omonima su GitHub in modo da gestire e separare il lavoro in più repository pensate per scopi e contenuti diversi:
- *Documenti*: repository contenente la documentazione prodotta;
- *PoC*: repository contenente i Proof of Concept prodotti.

Documenti è la repository dedicata alla documentazione prodotta, la quale possiede due branch principali:
- `main`: contiene i file pdf dei documenti prodotti solamente in seguito ad un processo di review con esito positivo;
- `src`: contiene i file sorgenti dei documenti prodotti, file di configurazione e di supporto.

Documenti è organizzata in modo da suddividere la documentazione necessaria alle revisioni esterne che il gruppo dovrà affrontare:
- *RTB*: contiene i file necessari alla Requirements and Technology Baseline;
  - *Documentazione esterna*: contiene i documenti ad uso esterno;
    - *Verbali*: contiene i verbali delle riunioni esterne;
    - *doc_file_name* /
      - doc_file_name.typ: file sorgente del documento;
      - log.csv: registro delle modifiche associato al documento;
  - *Documentazione interna*: contiene i documenti ad uso interno;
      - *Verbali*: contiene i verbali delle riunioni interne;
    - *doc_file_name* /
      - doc_file_name.typ: file sorgente del documento;
      - log.csv: registro delle modifiche associato al documento;
- *PB*: contiene i file necessari alla Product Baseline.

===== Pull request (PR)
Al fine di garantire uno svolgiemnto delle attività in parallelo, la strategia utilizzata dal gruppo durante lo sviluppo è il _featuring branching_, ove per ogni modifica che si intende apporre al documento è necessario sollevare un pull request. I branch vengono creati a partire da task assegnate su Jira, e sono nominati nel formato DOC-XX, dove XX è il numero della task su Jira.

La procedura di modifica o di creazione di un file prevede:
- aggiornamento della task su Jira nello stato di "In progress";
- creazione di un branch dedicato alla modifica;
- modifica/creazione del documento;
- creazione di una pull request;
  - verificare la conformità del titolo della PR nel formato DOC-XX: titolo;
  - designato almeno un verificatore;
  - il documento compila correttamente in locale;
- revisione della PR da parte del verificatore;
  - eventuale richiesta di modifiche;
  - apportazione delle modifiche;
- approvazione della PR da parte del verificatore;
- merge della PR.

Il processo di verifica del documento è accompagnato dall'esecuzione di GitHub Actions che si occupano di automatizzare l'aggiornamento del file log.csv con i dati relativi alla modifica apportata, e la compilazione e pubblicazione del documento nel ramo main della repository. In questo modo si assicura che ogni documento presente nel ramo main sia prima stato sottoposto ad un processo di verifica.

Solo a seguito del merge della PR, la task collegata presente in Jira può essere definita conclusa.
===== Automazioni
L'intero processo di versionamento è accompagnato da una serie di automazioni, che sollevano i componenti del gruppo dall'onere manuale di attività come la compilazione dei documenti, l'aggiornamento del registro delle modifiche (file log.csv) e la pubblicazione dei documenti dopo la verifica.

*Workflow delle automazioni:*
#figure(image("./imgs/flusso_actions.svg", format: "svg"), caption: [Workflow delle automazioni]);

Alla creazione della pull request si avvia il workflow per la compilazione e la registrazione delle modifiche avvenute. Prima di procedere sarà necessario inserire informazioni essenziali ai fini di chiarezza e tracciabilità nel messaggio di pull request, quali:
- titolo conforme, contenente il nome della task di riferimento su Jira legata alla pull request, nel formato _DOC-XX titolo_;
- link alla task di riferimento su Jira;
- almeno un verificatore;
- eventuali note aggiuntive.
Il workflow è composto dai seguenti passaggi:
+ Fetch delle informazioni dei file modificati: vengono recuperate le informazioni relative ai file modificati nella pull request, quali:
  - nome del file;
  - path del file.
+ controllo del numero di file modificati: se il numero di file modificati è maggiore di 1, il workflow termina con un errore;
+ controllo dell'esistenza del file log.csv: se il file non esiste, viene creato (sinonimo di creazione del documento);
+ rilascio della review: il verificatore si occupa di controllare il documento e rilasciare la review, segnando i cambiamenti richiesti;
+ apportate le modifiche, si richiede nuovamente la review per verificare che i cambiamenti apportati siano corretti;
+ nel momento in cui la review termina con esito positivo, si procede al recupero della versione corrente del documento:
  - se non esiste il corrispettivo pdf nel branch main, allora il documento non era mai stato pubblicato, pertanto la sua versione di partenza sarà fissata a 1.0.0;
  - se esiste il corrispettivo pdf nel branch main, essendo la versione contenuta nel nome del file, si procede al recupero della versione corrente del documento, modificando la versione X.Y.Z in base all'analisi del documento mediante uno script python;
+ aggiornamento del file log.csv: il file di log viene aggiornato con le informazioni relative alla modifica effettuata: questo passaggio, avvenendo solamente a seguito di review positiva, permette di garantire che vengano segnate solamente le modifiche che hanno superato il processo di verifica;
+ compilazione del documento: aggiornato il file log.csv e recuperato il numero di versione, il documento è pronto per essere compilato, mostrando numero di versione e registro delle modifiche aggiornati;
+ pubblicazione del documento: terminati i workflow precedenti, se si avvia la procedura di merge a seguito del processo di verifica, il documento pdf generato dalla compilazione viene pubblicato nel ramo main della repository;
+ merge non confermato: qualora a termine della compilazione del documento non venisse confermato il merge da parte del verificatore, significa che è stato individuato un ulteriore errore o correzione da dover apportare al documento prima della sua pubblicazione sul ramo `main` del repository. In questa circostanza sarà dunque necessario rilasciare un'ulteriore review. L'esecuzione riprende dal punto 4.


L'azione manuale si riduce solamente al rilascio di review e conferma di merge, mentre tutte le altre attività vengono automatizzate.
All'approvazione della pull request, e alla conseguente chiusura del branch, un ulteriore automazione integrata su Jira, permette di aggiornare in automatico lo stato della task collegata alla pull request, portandola allo stato di "Completata".

==== Jira
Jira è lo strumento centrale per la gestione e la tracciabilità delle task assegnate ai membri del gruppo.
L'integrazione con GitHub permette a Jira di lavorare e apportare modifiche direttamente alla repository del gruppo, permettendo la creazione, gestione e chiusura di branch e al conseguente aggiornamento dello stato delle task.
Ogni task è identificata da un codice univoco incrementale nel formato DOC-XX, che permette di identificarla. Ogni task è caratterizzata da:
- codice identificativo DOC-XX generato automaticamente da Jira;
- titolo;
- descrizione (opzionale);
- stato ("Da completare", "In corso", "Completata");
- assegnatario;
- story points (stima del carico di lavoro);
- epic stories (milestone) di riferimento.

Nel processo di versionamento e di tracciamento delle modifiche, Jira ricopre un ruolo fondamentale, grazie anche alla sua integrazione con GitHub: nel momento in cui si intende avviare una task, è necessario seguire i seguenti passaggi:
- aprire la task su Jira;
- selezionare l'opzione di creare un branch dedicato alla task (integrazione con GitHub);
- selezionare la repository e il branch da cui creare il nuovo branch;

A questo punto, la task si aggiornerà nello stato "In corso". Terminata la task, effettuta la pull request, superato il processo di verifica e chiuso il branch, Jira provvederà ad aggiornare lo stato della task in "Completata".
===== Backlog
Ogni task da svolgere è segnata all'interno del backlog. Durante la pianificazione dello sprint, si definisce lo sprint backlog, il sottoinsieme di attività provenienti dal backlog che si intendono portare a termine entro la conclusione dello sprint.

A differenza dello sprint backlog definito durante la pianificazione, il backlog viene espanso man mano che si riscontrano nuove task necessarie o a seguito di decisioni prese durante le riunioni interne o esterne.
===== Boards
Le boards permettono, similmente allo sprint backlog, di avere una visione d'insieme delle attività da svolgere, ma con un approccio più visuale e intuitivo.
Le task sono organizzate in tre colonne, rappresentanti lo stato:
- da completare: non ancora avviate, ovvero non esiste il branch dedicato;
- in corso: in fase di svolgimento, ovvero branch dedicato alla task creato;
- completata: task conclusa, ovvero branch dedicato chiuso a seguito di merge sul ramo principale.
===== Timeline
La timeline permette di avere una visione delle attività incentrata sulle tempistiche e le relazione tra le task.
La timeline permette di mostrare il grafico di Gantt delle attività evidenziando i rapporti di dipendenza tra le task e stabilendo le scadenze necessarie per il loro svolgimento.
===== Grafici
Jira offre la possibilità di produrre grafici e report relativi all'avanzamento e alla tracciabilità delle task. Tali strumenti permettono di avere delle metriche di valutazione dell'andamento del progetto e di individuare eventuali criticità.
Il gruppo utilizza come metrica principale il burndown chart, che permette di avere una visione dell'avanzamento delle attività in base al tempo, basato sugli story points di ogni attività.

== Processo di gestione delle informazioni
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.6_
=== Scopo
Lo scopo della gestione delle informazionie è generare, ottenere, confermare, trasformare, conservare, recuperare, distribuire le informazioni e la relativa documentazione agli stakeholder interessati, garantendone chiarezza, completezza, consistenza, tracciabilità e presentazione.

Le informazioni possono essere tecniche, di progetto, organizzative e di accordo.

=== Informazioni gestite 
Le informazioni gestite dal gruppo sono:
- documentazione:
  - Piano di Progetto;
  - Norme di Progetto;
  - Piano di Qualifica;
  - Analisi dei Requisiti;
  - Glossario;
  - Verbali.
- codice sorgente:
  - Proof of Concept;
  - Minimun Viable Product.

Codice sorgente e documenti sono creati, organizzati, aggiornati, versionati e distribuiti all'interno dei repository del gruppo. 

=== Documentazione
==== Struttura <struttura-documenti>
Ogni documento segue una struttura standard, stabilita nel template _template.typ_. I documenti pertanto sono così strutturati:
+ *Cover page*: la cover page è la prima pagina del documento, e contiene le seguenti informazioni:
  - nome del gruppo;
  - link all'organizzazione GitHub;
  - mail del gruppo;
  - logo;
  - titolo del documento;
  - sottotitolo del documento;
  - versione;
  - stato;
  - tipo di uso: interno od esterno;
  - responsabile del gruppo;
  - redattori;
  - verificatori;
  - destinatari;
  - figure esterne se presenti.

+ *Registro delle modifiche*: sezione successiva agli indici. Maggiori dettagli sono visibili alla sezione dedicata (@tracciamento-modifiche).

+ *Indici*: sezione successiva agli indici. Sono presenti tre tipologie di indici:
    - indice del contenuto: indice sempre presente che rappresenta i paragrafi del documento;
    - indice delle tabelle: indice presente solo se sono presenti tabelle nel documento;
    - indice delle figure: indice presente solo se sono presenti figure nel documento.

+ *Contenuto del file*: sezione successiva alla tabella di tracciamento delle modifiche. Rappresenta il corpo del documento, suddiviso in paragrafi.

===== Verbali 
I verbali assumono una struttura diversa rispetto agli altri documenti, dato il diverso scopo e ridotta lunghezza. I verbali sono così strutturati:
- *cover page* (@struttura-documenti);
- *informazioni generali*:
  - luogo;
  - data e ora nel formato (gg-mm-aaaa, hh:mm ~ hh:mm);
  - partecipanti;
  - assenti;
  - referente aziendale (se presente).
- *ordine del giorno*: elenco degli argomenti trattati durante la riunione;
- *organizzazione attività*: elenco delle decisioni prese durante la riunione. Questo paragrafo rappresenta il risultato fondamentale delle riunioni di retrospettiva.
- *firma partecipanti esterni* (se presenti): firma dei partecipanti esterni alla riunione. 

=== Stile e convenzioni
Al fine di uniformare e conformare i prodotti del progetto, il gruppo ha stabilito delle convenzioni stilistiche e di scrittura da rispettare durante la stesura dei documenti e del codice.
L'obiettivo è perseguire:
- Chiarezza;
- Leggibilità;
- Mantenibilità.

==== Convenzioni stilistiche globali
Convenzioni stilistiche valide sia per i prodotti documentali che software.

===== Nomi dei documenti <norma_nomi_documenti>
Ogni parola dei titoli dei documenti deve iniziare con la lettera maiuscola, ad eccezione delle preposizioni e degli articoli.\
I verbali avranno come titolo la data del verbale nel formato _yyyy-mm-dd_.
Ogni documento alla fine del nome riporta anche la versione nel formato _\_vX.Y.Z_. \

esempio: `Norme di Progetto_v1.0.0.pdf`.

===== Formato data
All'interno del documento, le date seguiranno il formato locale _dd/mm/yyyy_, mentre all'interno dei nomi dei file e dei commit di GitHub, il formato utilizzato sarà _yyyy-mm-dd_, dove:
- *dd*: numero del giorno con due cifre;
- *mm*: numero del mese con due cifre;
- *yyyy*: numero dell'anno con quattro cifre.

==== Convenzioni stilistiche documentali
Convenzioni stilistiche specifiche per i prodotti documentali.

===== TODO 
Per indicare sezioni del documento da completare, il gruppo ha deciso di utilizzare il termine TODO, che verrà in automatico mostrato in rosso e riquadrato, riportando il messaggio _riferimento assente_.\
Il risultato è il seguente: TODO.\
Questo permette di individuare facilmente le parti del documento da completare.
===== Corsivo, grassetto, maiuscole e monospace
_Corsivo_:
- citazioni;
- formati;
- nomi di practice;
- nomi propri di dominio.

*Grassetto*:
- titoli;
- parole chiave e significative;
- termini iniziali di elenchi puntati che necessitano spiegazione.

MAIUSCOLO:
- acronimi;
- nomi propri;
- nomi strumenti e tecnologie;
- iniziale nomi ruoli;
- iniziale parole nei nomi documenti ad eccezione di preposizioni e articoli. Riferimento nomi file @norma_nomi_documenti.

`Monospace`:\
- nome di un file (Riferimento nomi file @norma_nomi_documenti);
- parametri;
- porzioni di codice. 

===== Elenchi
- si utilizzano elenchi numerati se gli elementi mostrati richiedono un ordine (es. ordine delle sezioni);
- si utilizzano elenchi non numerati se gli elementi mostrati non richiedono un ordine (es. lista di attività);
- al termine di ogni elemento viene posto ";" ad eccezione dell'ultimo elemento che viene posto ".".

===== Glossario
Tutte le occorrenze dei termini contenuti nel glossario sono evidenziati con una G in corsivo a pedice.

=== Distribuzione delle informazioni
Il gruppo condivide il materiale prodotto all'interno di un repository dedicato reperibile al link:\
#align(link("https://github.com/Error-418-SWE/Documenti"), center)
Maggiori dettagli in merito all'organizzazione della repository sono reperibili qui: @repository-github.

= Processi tecnici

== Processo di definizione di bisogni e requisiti degli stakeholder

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.2_

=== Scopo

Il processo di definizione di bisogni e requisiti degli stakeholder definisce i requisiti di un sistema che possa fornire le funzionalità di cui gli utenti e gli stakeholder necessitano.

Il processo identifica gli stakeholder coinvolti con il sistema durante l'intero suo ciclo di vita.

Identifica inoltre i loro bisogni, li analizza e li trasforma in un insieme condiviso di requisiti che:
- esprima i comportamenti attesi che il sistema dovrà avere nel suo ambiente operativo;
- cataloghi e prioritizzi ciascun requisito;
- riporti le fonti di ciascun requisito;
- funga da riferimento per la validazione dell'implementazione di ciascun requisito.

=== Stakeholder

Sono identificati tutti quegli stakeholder che possiedano una forte influenza sugli obiettivi, le strategie, l'operatività e le caratteristiche del prodotto.

==== Matrice degli stakeholder
Si classificano gli stakeholder individuati sulla base di:
- coinvolgimento nel progetto: indica l'interesse dello stakeholder nell'ambito di progetto;
- autorità sullo sviluppo: indica il potere decisionale esercitabile sull'ambito di progetto.

Entrambe le classificazioni si strutturano su tre livelli: basso, medio, alto.

==== Modalità di comunicazione <modalita-comunicazione>
Per ciascuno stakeholder si identificano i canali e la frequenza della comunicazione.

=== Strategia di identificazione, analisi e trasformazione dei bisogni

Il gruppo adotta una strategia iterativa per l'identificazione, l'analisi e la trasformazione dei bisogni in requisiti. L'approccio è finalizzato alla raccolta di feedback e prevede:
- interviste e questionari;
- studio individuale di tecnologie abilitanti, documentazione tecnica;
- acquisizione di conoscenze tramite workshop interni e _brainstorming_;
- osservazione delle criticità delle soluzioni software preesistenti.
Le comunicazioni con gli stakeholder avvengono nelle modalità descritte in @modalita-comunicazione.

Le attività sono supportate, quando utile, da documenti, immagini, dimostratori tecnologici e in generale qualsiasi elemento informativo utile alla comprensione dei bisogni degli stakeholder. Le informazioni sono organizzate in modo da supportare l'identificazione, l'analisi e la trasformazione dei bisogni in requisiti. Il livello di astrazione adottato può differire in base all'interlocutre e al progresso globale conseguito dal _Processo di definizione di bisogni e requisiti degli stakeholder_.

Lo strumento adottato a supporto di queste operazioni è Miro (TODO).

I bisogni espressi da Committente e Fornitore sono raccolti, catalogati, analizzati ed espressi nel documento di _Analisi dei Requisiti_ prodotto dal gruppo.

Alcuni stakeholder possono avere interessi avversi a quelli del gruppo o in contrasto con gli interessi di altri stakeholder. Qualora gli interessi degli stakeholder siano tra di essi contrastanti, ma non siano avversi al gruppo o al sistema software, il gruppo si adopera per mediare i contrasti. La strategia di mediazione prevede l'identificazione di un sottoinsieme di interessi e bisogni comuni, il confronto con le parti e la definzione di strategie di mediazione calate nella fattispecie.

Gli intenti o i desideri di chi si oppone al gruppo o ad uno o più dei processi di ciclo di vita del sistema software (descritti in TODO) sono affrontati tramite il processo di Gestione dei Rischi TODO.

Il negoziato tra le parti potrebbe essere richiesto per mediare posizioni mutualmente incompatibili, o a causa di vincoli o budget insufficiente. Anche la data di consegna prevista incide sulla realizzazione dei requisiti. Sarà sempre necessario consultare gli stakeholder coinvolti per raggiungere un accordo. Le decisioni saranno tracciate e rese disponibili agli stakeholder.

==== Identificazione dei bisogni <identificazione-bisogni>
Include l'elicitazione dei bisogni direttamente dagli stakeholder o dalla documentazione fornita da essi, oppure la raccolta di bisogni impliciti basati sul dominio applicativo ed i contesti tecnologico, legislativo, normativo.

I bisogni degli stakeholder scaturiscono da fonti diverse. Il gruppo si impegna ad esplorare e valutare, al fine di identificare possibili bisogni, almeno questi frangenti:
- Obiettivi di alto livello che il sistema dovrebbe conseguire;
- Contributi concreti che il sistema dovrebbe apportare a beneficio degli stakeholder;
- Scenari operativi, utili per limitare l'ambito e comprendere le aspettative e i bisogni;
- Scenari operativi quotidiani, utili per assegnare una priorità ai bisogni;
- Tipologie e caratteristiche degli utenti;
- Ambiente operativo e contesto d'utilizzo;
- Aspettative sulle prestazioni e la disponibilità del sistema;
- Pratiche di business;
- Norme, leggi o altri vincoli esterni.

==== Definizione delle priorità
Le preferenze espresse dagli stakeholder, coadiuvate dal processo di gestione delle decisioni (TODO), guidano la selezione e la prioritizzazione dei requisiti.

==== Casi d'uso
Si definisce un insieme di casi d'uso (anche detti use case, abbreviato in UC) che identifichi tutte le funzionalità attese.
I casi d'uso sono definiti ed utilizzati nel documento di _Analisi dei Requisiti_. Sono fonte di bisogni e, indirettamente, di requisiti; sono un ausilio per l'esplorazione degli aspetti descritti nella @identificazione-bisogni.

Ogni caso d'uso comprende:
+ Codice identificativo;
+ Titolo;
+ Descrizione;
+ Attore;
+ Precondizioni (opzionale);
+ Postcondizioni (opzionale);
+ Scenario principale;
+ Scenari alternativi (opzionale);
+ Generalizzazioni (opzionale).

Il codice identificativo assume l'aspetto `UC-X.Y`, dove `UC-` è la radice del codice; `X` è una cifra positiva crescente di cifre che identifica un caso d'uso; `Y` è una cifra positiva crescente, attiva solo per le generalizzazioni di uno stesso caso d'uso.

I casi d'uso sono arricchiti con diagrammi realizzati secondo la sintassi Unified Modeling Language (UML) 2.0.

In nessun caso i casi d'uso propongono o presumono soluzioni implementative.

==== Identificazione dei vincoli
I vincoli sono un tipo di requisito. Possono derivare da:
- stakeholder;
- sistemi software a supporto dei processi di ciclo di vita;
- budget disponibile;
- considerazioni su prestazioni, affidabilità, sicurezza, disponibilità, manutenibilità;
- altre attività dei processi di ciclo di vita.

Sono classificati per priorità e per fonte.

==== Analisi dei requisiti
Il documento _Analisi dei Requisiti_ raccoglie le informazioni previste. TODO contiene una descrizione approfondita del contenuto del documento. Esso include quanto descritto in questa sezione e contiene informazioni di tracciabilità. Il documento deve ricevere approvazione esplicita da parte degli stakeholder coinvolti.
