#import "/template.typ": *

#show: project.with(
  title: "Norme di Progetto",
  subTitle: "Norme, processi e disciplina",
  authors: (
    "Banzato Alessio",
    "Gardin Giovanni",
    "Nardo Silvio"
  ),
  showLog: true,
);

= Introduzione

== Scopo del documento
Questo documento contiene le regole del _way of working_ che disciplinano le attività di ogni membro del gruppo #err418. Queste regole mirano a garantire coerenza, uniformità ed efficacia nel processo collaborativo, promuovendo un ambiente di lavoro strutturato ed efficiente.
L'approccio adottato per la redazione di questo documento è di natura incrementale. Ciò significa che il testo è soggetto ad aggiornamenti e revisioni continue al fine di integrare progressivamente le nuove norme, le _best practices_ e i cambiamenti che emergono nel corso dello sviluppo del progetto. Questa flessibilità consente al gruppo di adattarsi prontamente alle dinamiche di lavoro e alle esigenze specifiche del contesto, garantendo un documento sempre allineato alle necessità attuali del gruppo.

== Scopo del progetto
Il capitolato C5, denominato _WMS3: Warehouse Management 3D_ e aggiudicato al gruppo, ha come obiettivo la realizzazione di un sistema di gestione di magazzino in tre dimensioni. L'applicazione sviluppata consentirà all'utente di accedere a un ambiente virtuale tridimensionale, dove potrà navigare all'interno di un magazzino e visualizzare gli oggetti presenti nelle scaffalature.
L'utente avrà la possibilità di cercare specifici prodotti all'interno del magazzino, sfruttando la visualizzazione 3D per individuare rapidamente la posizione degli articoli desiderati, potrà modificare l'assetto del magazzino e inviare una notifica verso l'esterno in caso ci sia il bisogno di prelevare un articolo.

== Glossario
#glo_paragrafo

== Riferimenti <riferimenti>

=== Riferimenti a documentazione interna <riferimenti-interni>

- Documento #glo_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(25,02,2024)

- Documento #pdp_v, Sezione 2 "Analisi dei Rischi": \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Documentazione%20esterna/Piano%20di%20Progetto_v" + pdp_vo + ".pdf")_
  #lastVisitedOn(21,02,2024)

=== Riferimenti normativi <riferimenti-normativi>

- Capitolato "Warehouse Management 3D" (C5) di #azienda: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)

- Regolamento di Progetto: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_
  #lastVisitedOn(13,02,2024)

- Standard ISO/IEC/IEEE 12207:2017: \
  _#link("https://www.iso.org/obp/ui/en/#iso:std:iso-iec-ieee:12207:ed-1:v1:en")_
  #lastVisitedOn(26,02,2024)

- Standard ISO/IEC/IEEE 29148:2018: \
  _#link("https://ieeexplore.ieee.org/servlet/opac?punumber=8559684")_
  #lastVisitedOn(13,02,2024)

- SWEBOK Chapter 6: Software Configuration Management: \
  _#link("http://swebokwiki.org/Chapter_6:_Software_Configuration_Management")_
  #lastVisitedOn(13, 02, 2024)

- Specifica Unified Modeling Language 2: \
  _#link("https://www.omg.org/spec/UML/")_
  #lastVisitedOn(13,02,2024)

=== Riferimenti informativi <riferimenti-informativi>

- Documentazione Git: \
  _#link("https://git-scm.com/docs")_
  #lastVisitedOn(13,02,2024)

- Documentazione Jira: \
  _#link("https://confluence.atlassian.com/jira")_
  #lastVisitedOn(13,02,2024)

- Documentazione Typst: \
  _#link("https://typst.app/docs/")_
  #lastVisitedOn(13,02,2024)

- Documentazione Three.js: \
  _#link("https://threejs.org/docs/")_
  #lastVisitedOn(13,02,2024)


= Processi di Accordo

== Processo di Fornitura <processo_fornitura>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.1.2_

=== Scopo e descrizione
Il processo di Fornitura ha come obiettivo l'offerta di un prodotto o servizio che soddisfi i requisiti concordati con Proponente e Committente. Tra quest'ultimi e il fornitore deve essere stabilito un accordo all'interno del quale vengono definiti i requisiti, le tempistiche e i costi da rispettare. Prima di allora, il fornitore avrà effettuato un'attenta analisi del progetto proposto e dei rischi annessi alla sua realizzazione, con relative linee guida per mitigarli.
=== Rapporti con il Proponente <comunicazione_Proponente>
Il dialogo tra il gruppo #err418 e il Proponente dovrà essere attivo e frequente fino al termine del progetto didattico, in modo che si riescano a raccogliere più feedback possibili riguardo la correttezza del lavoro svolto. Questa comunicazione avverrà in due modalità:
+ scritta, asincrona, utilizzata per:
  - comunicazioni di breve durata;
  - condivisione di verbali e materiali informativi;
  - coordinamento.
+ orale, sincrona, durante i quali si affronteranno:
  - feedback sul lavoro prodotto;
  - chiarimenti sul capitolato;
  - chiarimenti riguardo casi d'uso e requisiti.
I meeting avranno cadenza variabile, e saranno fissati al termine di altri incontri oppure via e-mail. Il contenuto di ogni incontro sarà raccolto all'interno del relativo verbale. Ognuno di questi verbali sarà validato dal Proponente tramite l'apposizione di una firma, e sarà liberamente consultabile all'interno del repository GitHub del gruppo dedicato ai documenti (_#link("https://github.com/Error-418-SWE/Documenti/tree/main")_), al percorso `NomeMilestone/Documentazione esterna/Verbali`, dove `NomeMilestone` è uno tra:
- 1 - Candidatura;
- 2 - RTB;
- 3 - PB.

=== Documentazione prodotta
In questa sezione viene descritta la documentazione prodotta dal gruppo nel processo di Fornitura, la quale sarà resa disponibile al Proponente, #azienda, e ai Committenti, ovvero il #vardanega e il #cardin.

==== Valutazione dei capitolati
Documento nel quale il gruppo ha analizzato le diverse proposte di progetto rese disponibili dai vari Proponenti. Per ogni capitolato vengono presentati tre paragrafi:
+ *Descrizione*: vengono indicati i nominativi di Proponente e Committente, e viene presentato l'obiettivo del progetto;
+ *Dominio tecnologico*: vengono elencate le tecnologie consigliate dal Proponente del capitolato;
+ *Considerazioni*: il gruppo dà la propria valutazione sul capitolato.

==== _Analisi dei rischi_
Nel documento #pdp vengono presentati i rischi a cui il gruppo potrebbe essere esposto durante il periodo in cui lavora al progetto. Ogni rischio viene classificato secondo tre parametri:
- *impatto*: esprime l'effetto generato dall'evento;
- *probabilità*: esprime la probabilità del verificarsi del rischio;
- *conseguenze*: effetti collaterali a breve o medio termine che il rischio può comportare.

Ad ogni rischio sono inoltre associate delle buone pratiche da seguire per mitigarlo.

==== _Preventivo dei costi_
Nel Preventivo dei costi viene esposta una tabella che presenta una previsione riguardo il numero di ore di lavoro totali, per membro e per ruolo e viene fornito un calcolo del costo totale del progetto. Prima della tabella vengono spiegate le motivazioni che hanno portato alla suddivisione oraria individuata, effettuando una tripartizione del periodo di lavoro complessivo e analizzando ogni ruolo presente all'interno del gruppo.

==== _Lettera di presentazione_
Breve documento dove il gruppo si presenta e dichiara il suo impegno nello svolgimento del capitolato scelto. Viene fornito un riferimento al repository dove si potranno trovare i documenti necessari alla candidatura e vengono dichiarati il preventivo a finire e la data di consegna prevista.

==== #adr
In questo documento vengono raccolti tutti gli Use Case e requisiti individuati dal gruppo con il supporto del Proponente. Ogni Use Case e requisito è identificato da un codice, così da essere facilmente individuabile e tracciabile. All'inizio del documento sono inoltre descritti i criteri di qualità che il gruppo ha seguito durante la redazione.

==== #pdp
Documento che governa la pianificazione dell'avanzamento del progetto, determinando task e obiettivi da raggiungere e analizzando il lavoro svolto. È articolato in cinque sezioni:
- Rischi e loro mitigazione;
- Divisione temporale di sviluppo;
- Preventivo dei costi di realizzazione;
- Pianificazione del lavoro;
- Consuntivo del progetto.

==== #pdq
Nel #pdq vengono fissati obiettivi di qualità e vengono descritti i processi necessari per conseguirli con relative procedure di controllo.

==== #glo
Nel Glossario vengono elencati e definiti in modo preciso tutti i termini rilevanti utilizzati all'interno del progetto. È un documento estremamente importante per evitare situazioni di ambiguità, e garantire così una corretta comprensione della documentazione da parte di tutte le parti coinvolte.

=== Strumenti utilizzati
In questa sezione sono indicati gli strumenti utilizzati dal gruppo nel processo di Fornitura.

- *Zoom*: applicazione per videoconferenze;
- *Google Slides*: servizio cloud offerto da Google, utilizzato dal gruppo per le presentazioni del diario di bordo, ovvero l'attività in cui il gruppo aggiorna il Committente riguardo l'andamento del lavoro;
- *Jira*: Issue Tracking System utilizzato per la pianificazione del lavoro.

= Processi di Ciclo di Vita

== Processi Organizzativi Abilitanti

I processi Organizzativi Abilitanti hanno la funzione di garantire la capacità dell'organizzazione di acquisire e fornire prodotti o servizi attraverso l'avvio, il supporto e il controllo di progetti. \
Questi processi forniscono l'infrastruttura e le risorse necessarie a supportare i progetti e il conseguimento degli obiettivi dell'organizzazione e degli accordi fra parti. Non sono da intendersi come un insieme esaustivo di processi aziendali atti alla gestione strategica dell'organizzazione.

I processi Organizzativi Abilitanti implementati dal gruppo sono i seguenti:
+ processo di Gestione dei Modelli di Ciclo di Vita;
+ processo di Gestione dell'Infrastruttura.

=== Processo di Gestione dei Modelli di Ciclo di Vita<processo_ciclo_di_vita>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.2.1_
==== Scopo

Lo scopo del processo di Gestione dei Modelli di Ciclo di Vita è definire, mantenere e garantire regole, processi, modelli e procedure di ciclo di vita.\
Questo processo fornisce politiche, processi, modelli e procedure del ciclo di vita coerenti con gli obiettivi dell'organizzazione, che sono definiti, adattati, migliorati e mantenuti per supportare le esigenze individuali dei progetti all'interno del contesto dell'organizzazione, e che sono in grado di essere applicati mediante metodi e strumenti efficaci e comprovati.\

Il gruppo adotta il modello PDCA (Plan-Do-Check-Act) per la gestione del ciclo di vita del software. Questo modello prevede quattro fasi:
+ Pianificazione (Plan): definizione degli obiettivi e dei processi necessari per raggiungerli;
+ Esecuzione (Do): attuazione del piano;
+ Verifica (Check): monitoraggio e misurazione dei processi e dei prodotti rispetto agli obiettivi e ai requisiti, e reportistica dei risultati;
+ Attuazione (Act): azioni per migliorare le prestazioni, se necessario, in base ai risultati della verifica.

==== Organizzazione del processo
===== Pianificazione
La pianificazione del processo è compito del Responsabile, il quale al termine dello Sprint precedente, in base alle attività svolte e ai risultati ottenuti, pianifica le attività da svolgere nello Sprint successivo. \
La pianificazione è un'attività iterativa, che viene svolta all'inizio dello Sprint. Il Responsabile, in relazione al progresso svolto, può decidere di modificare la pianificazione iniziale, aggiungendo o rimuovendo attività. \
Questo processo permette di individuare le attività da svolgere, le risorse necessarie e le tempistiche di svolgimento, mediante il sistema di ticketing offerto da Jira.\
Il risultato di questo processo è visibile all'interno del documento #pdp.\
\
===== Esecuzione
Identifica il processo di sviluppo del prodotto, dove quanto pianificato viene concretamente svolto.

Il processo di Esecuzione è composto da due attività principali:
+ sviluppo del prodotto;
+ sviluppo della documentazione.

Durante questo processo, ogni ruolo svolge le attività assegnate seguendo quanto stabilito nella pianificazione. Sarà compito del Responsabile verificare che le attività siano svolte correttamente e nei tempi previsti. Ogni membro avrà la possibilità di segnalare eventuali criticità, avendo a disposizione una board apposita sulla piattaforma Miro, che permette di avere un resoconto pronto a fine Sprint in merito al processo di avanzamento.

La progressione del lavoro è visibile mediante:
- retrospettiva;
- grafici di burndown (Jira);
- board di avanzamento (Miro).

I prodotti di questo processo, permettono dunque di procedere con la verifica e lo stabilimento delle contromisure e dei miglioramenti necessari.
\ \
===== Verifica
Al termine di ogni Sprint, il gruppo procederà con il meeting di retrospettiva, durante il quale verranno analizzati i risultati ottenuti e le attività svolte, basandosi sui prodotti dell'attività di esecuzione:

+ *grafici di burndown*: permettono di avere una visione rapida di quanto del lavoro pianificato è stato portato a termine: si tratta di una metrica puramente quantitativa, che tiene conto del numero di story point completati e del numero di story point ancora in lavorazione;

+ *board di avanzamento*: permette di avere una panoramica sulla situazione dello Sprint, in modo da valutarne gli aspetti positivi e negativi.

Questa analisi individua i miglioramenti da apportare al processo di sviluppo, stabilendo le contromisure necessarie per migliorare il processo stesso.
  \ \
===== Attuazione
L'attuazione è l'ultima fase del processo di gestione del ciclo di vita, e consiste nella messa in pratica delle contromisure stabilite durante la fase di verifica. \
L'obiettivo è sopperire alle mancanze e alle inefficienze del processo di sviluppo, in modo da migliorare la qualità del prodotto e la produttività del gruppo. \
Diventa compito del Responsabile stabilire le attività necessarie per attuare le contromisure, e di conseguenza di pianificare le attività da svolgere nello Sprint successivo. \
Il risultato di questo processo è visibile all'interno del documento #pdp.
\
\
==== Ruoli
===== Responsabile
Il Responsabile è la figura chiave che guida il progetto, assumendo il ruolo di referente principale per il gruppo e per gli stakeholder. \

Le responsabilità del Responsabile includono:

+ coordinamento: ha il compito di supervisionare i membri del gruppo, assicurandosi che le attività vengano svolte nel rispetto delle norme identificate in questo documento;

+ pianificazione: stabilisce le attività da svolgere, le relative scadenze e priorità, sancendo l'inizio e la fine di ogni Sprint;

+ monitoraggio e gestione dei costi: tiene sotto controllo l'andamento del progetto, stima i costi e gestisce l'analisi dei rischi, garantendo che il progetto rimanga entro il budget previsto;

+ #ndp: si occupa della stesura e dell'aggiornamento delle #ndp, che devono essere rispettate da tutti i membri del gruppo;

+ relazioni esterne: gestisce tutte le interazioni con il Proponente e i Committenti assicurando una comunicazione fluida ed efficace.
\ \
===== Amministratore
L'Amministratore è la figura incaricata di gestire l'ambiente di lavoro e gli strumenti utilizzati dal gruppo per tutta la durata del progetto. Ha il compito di assicurare che gli strumenti proposti ai membri del gruppo siano efficienti e favoriscano la qualità del lavoro. Monitora, assieme al Responsabile, il rispetto delle regole stabilite in questo documento e verifica che i servizi a disposizione del gruppo siano adeguati alle attività pianificate, promuovendo la produttività.  \

Le responsabilità dell'Amministratore includono:

+ redazione dei verbali: l'Amministratore è responsabile della stesura dei verbali relativi ai meeting interni ed esterni;

+ gestione delle risorse: si occupa dell'amministrazione delle risorse, delle infrastrutture e dei servizi necessari per l'esecuzione dei processi di supporto;

+ automatizzazione dei processi: determina gli strumenti necessari per automatizzare i processi, come la compilazione dei file sorgenti e il sistema di versionamento automatico;

+ risoluzione dei problemi: affronta e risolve i problemi legati alla gestione dei processi.

\ \
===== Analista
L'Analista individua i bisogni del Proponente e li trasforma in requisiti che saranno l'input delle attività successive. Il suo lavoro si svolge intensamente nel periodo di avvio del progetto, e si conclude con la stesura dell'#adr. \
Il suo compito è di rilevanza in quanto un'incompleta o superficiale analisi può impattare in modo sensibile sulle attività successive, causando ritardi e costi aggiuntivi, andando a pregiudicare la qualità e la completezza del prodotto finale. \

Le responsabilità dell'Analista includono:

+ documento di #adr: l'Analista è incaricato di redigere questo documento, che dettaglia i requisiti specifici del progetto;

+ interazione con i clienti: l'Analista lavora a stretto contatto con il Proponente o i Committenti per capire e studiare i loro bisogni;

+ classificazione dei requisiti: individua i requisiti e li classifica come funzionali e non funzionali, e come obbligatori, desiderabili o opzionali;

+ definizione del problema e degli obiettivi: l'Analista esamina la situazione attuale, identifica il problema e stabilisce gli obiettivi da raggiungere;

+ trasformazione dei bisogni in requisiti: durante la stesura dell'#adr, l'Analista converte i bisogni dei clienti in requisiti specifici per la soluzione.

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
Il Programmatore è la figura più numerosa all'intero del gruppo.\
Le sue responsabilità includono:

+ scrittura del codice sorgente, perseguendo manutenibilità e conformità a quanto stabilito dall'architettura definita dalla progettazione;

+ creazione di test specifici per la verifica e la validazione del codice.

\ \
===== Verificatore
Il Verificatore controlla il lavoro svolto dagli altri membri del gruppo, assicurandosi che le #ndp e le aspettative siano rispettate. \

Le responsabilità del Verificatore includono:

+ verifica della qualità e della conformità della documentazione prodotta;

+ approvazione della documentazione sottoposta a verifica.

\ \
=== Processi di Gestione dell'Infrastruttura

==== Scopo

Lo scopo del processo di Gestione dell'Infrastruttura è fornire l'infrastruttura e i servizi a supporto dell'organizzazione per il conseguimento degli obiettivi di progetto nel corso dell'intero ciclo di vita.

Questo processo definisce, fornisce e regola i servizi, gli strumenti e le tecnologie di comunicazione e condivisione delle informazioni a supporto degli scopi dell'organizzazione.

==== Requisiti

L'infrastruttura è costituita dai servizi, dagli strumenti e dalle tecnologie di comunicazione e condivisione delle informazioni adottate a supporto degli scopi dell'organizzazione. L'infrastruttura risponde alle necessità di comunicazione interna ed esterna.

I requisiti dei processi di Gestione dell'Infrastruttura sono:

+ semplicità di adozione di strumenti e servizi;
+ accesso rapido alle informazioni, anche in mobilità;
+ non ridondanza tra strumenti e servizi adottati.

==== Infrastruttura di comunicazione
I principi della comunicazione che ispirano i processi di Gestione dell'Infrastruttura sono:

+ Comunicazione aperta: le comunicazioni avvengono in modalità pubblica, ovvero tutti i membri possono partecipare (compatibilmente con i loro impegni di progetto e sempre nel rispetto delle rispettive responsabilità). I membri del gruppo hanno accesso e possono liberamente consultare i messaggi, le eventuali registrazioni e i verbali;

+ Comunicazione onesta: quanto comunicato rappresenta sempre il reale stato del progetto. Nessun membro, in nessun caso, deve nascondere le criticità incontrate;

+ Comunicazione proattiva: comunicare con cognizione di causa, offrendo spunti concreti di discussione. Ogni comunicazione deve poter essere processata dagli interessati nel minor tempo possibile;

+ Comunicazione frequente: la frequenza della comunicazione permette di prendere decisioni in modo tempestivo e informato.

===== Comunicazione interna <comunicazione_interna>

#link("https://discord.com/")[*Discord*] rappresenta il canale primario di comunicazione interna. È una piattaforma di comunicazione che fornisce:

+ un servizio di messaggistica istantanea che permette la suddivisione delle conversazioni in canali tematici;
+ un servizio di videochiamate usato per le comunicazioni sincrone interne in modalità remota.

Le comunicazioni testuali tramite messaggio istantaneo sono organizzate per argomento. Discord adotta il termine "canale" per designare tale suddivisione tematica. I canali attualmente in uso sono:

- canale generale (`#random`): usato per le comunicazioni informali;
- canale meeting (`#meeting`): usato per l'organizzazione dei meeting interni e la condivisione degli ordini del giorno;
- canale di riferimento (`#riferimenti`): usato come bacheca per raccogliere ed organizzare, in un unico luogo, le risorse a supporto degli scopi dell'organizzazione;
- altri canali tematici: le comunicazioni relative ad uno specifico prodotto dei processi dell'organizzazione avvengono in un canale dedicato.

La suddivisione delle comunicazioni interne in canali ha lo scopo di ridurre le distrazioni, facilitare l'accesso alle informazioni e semplificare la comunicazione interna.

Le comunicazioni sincrone in videochiamata avvengono nei cosiddetti "canali vocali". Vengono forniti quattro canali vocali generici ad accesso libero. I membri dell'organizzazione hanno la facoltà di incontrarsi in qualsiasi momento in videochiamate interne. I canali vocali non sono organizzati tematicamente perché offrono la persistenza.

#link("https://miro.com/")[*Miro*] è un servizio di collaborazione per team basato su _whiteboard_. Offre la possibilità di creare board multimediali e permette la collaborazione asincrona. È utilizzato per:

+ raccogliere i feedback interni da discutere durante i meeting di retrospettiva;
+ supportare gli incontri interni di _brainstorming_;
+ supportare i meeting con gli interlocutori esterni.

Oltre a Discord e Miro, l'organizzazione comunica anche tramite *Jira* (ITS) e *GitHub* (VCS). L'uso di questi strumenti è discusso in dettaglio nelle sezioni apposite.

===== Comunicazione esterna

Le modalità e la frequenza delle comunicazioni esterne sono da stabilirsi con i diretti interessati, secondo necessità e disponibilità degli interlocutori. Le comunicazioni esterne avvengono su due canali primari: Gmail e Zoom.

#link("https://mail.google.com/")[*Gmail*] è il servizio di posta elettronica di Google. L'indirizzo di posta elettronica dell'organizzazione è:
#align(center, `error418swe@gmail.com`)
Viene utilizzato per tutte le comunicazioni da e verso gli interlocutori esterni. Tutti i membri dell'organizzazione possono accedere in qualsiasi momento alla casella di posta elettronica. Inoltre, tutte le conversazioni vengono inoltrate automaticamente agli indirizzi e-mail istituzionali di ciascun membro.

L'indirizzo è reso noto nel frontespizio di ogni documento prodotto dall'organizzazione.

#link("https://zoom.us/")[*Zoom*] è un servizio di teleconferenza. A meno di accordi specifici tra le parti, l'organizzazione utilizza Zoom per effettuare videochiamate con gli interlocutori esterni.

==== Mantenimento dell'infrastruttura

Sono compiti dell'Amministratore il mantenimento dell'infrastruttura, l'aggiornamento delle norme e dei processi e l'identificazione di nuovi servizi a supporto delle attività dell'organizzazione.

L'organizzazione adotta nuovi servizi, strumenti e tecnologie di comunicazione avendo cura di non introdurre ridondanza. L'organizzazione si dota di un insieme di strumenti e servizi sufficienti a coprire tutti i requisiti di comunicazione.

=== Processo di Gestione delle Risorse Umane <processo_risorse_umane>

La natura didattica del progetto riduce le prerogative del processo di Gestione delle Risorse umane. Per questa ragione, l'organizzazione dichiara la: \
 _conformance to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.2.4_.

==== Scopo

Questo processo fornisce all'organizzazione le risorse umane necessarie all'esecuzione dei processi di ciclo di vita al fine di realizzare gli obiettivi di progetto, dell'organizzazione e degli stakeholder.

==== Attività e compiti

===== Identificare le competenze dei membri

L'organizzazione sottopone, ad ogni nuovo membro, un form conoscitivo atto a identificare le competenze pregresse. Il form è realizzato con #link("https://www.google.it/intl/it/forms/about/")[*Google Forms*] e include domande su:

+ strumenti di collaborazione;
+ linguaggi di programmazione;
+ tecnologie;
+ strumenti di automazione;
+ strumenti di controllo di versione.

Le risposte sono non vincolanti e non influiscono in alcun modo sulla rotazione dei ruoli, sui compiti assegnati o sull'organizzazione interna.

===== Identificare le competenze richieste

Le competenze richieste sono identificate tramite:

+ Analisi dei Capitolati;
+ Studio del dominio di progetto;
+ Incontri con i Proponenti e successivi colloqui.

===== Sviluppare le competenze <gestione-risorse-umane-sviluppo>

Lo sviluppo di nuove competenze riguarda i membri, e non i ruoli. Per questa ragione, i processi di sviluppo di competenze sono universali e condivisi.

L'organizzazione si adopera per sviluppare le competenze dei membri mediante:

+ attività di _peer-tutoring_ in concomitanza delle rotazioni di ruolo;
+ pubblicazione interna di tutorial tecnici scritti (eventualmente accompagnati da brevi video, se utili a migliorare la comprensione degli argomenti trattati);
+ attività di _tutoring_ interno su richiesta, sincrono, in base alla necessità;
+ attività di _mentoring_ esterno su richiesta, in base alla necessità e alla disponibilità dell'interlocutore esterno;
+ condivisione delle best practice in sessione collettiva.

Le sessioni di tutoring sono "a sportello" ed è responsabilità dei singoli membri richiederne l'attivazione. Il Responsabile, identificati i temi di maggior interesse, può espressamente richiedere che un ruolo copra le esigenze di tutoring interno tramite le modalità sopra indicate.

===== Acquisire e fornire competenze

I membri dell'organizzazione sono prestabiliti. Qualora le competenze interne all'organizzazione siano deficitarie, è richiesta l'attivazione delle attività descritte in @gestione-risorse-umane-sviluppo.

Non sono previste variazioni della composizione dell'organizzazione, se non in via straordinaria e comunque discussa preventivamente con il Committente.

=== Processo di Gestione della Qualità <processo_gestione_qualità>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.2.5_

==== Scopo
Il processo di Gestione della Qualità ha lo scopo di garantire che i prodotti e i servizi del progetto soddisfino gli obiettivi di qualità del gruppo e i bisogni del Proponente.

==== Risultati
Come risultato dell'efficace attuazione del processo di Gestione della Qualità:
- vengono definiti e implementati gli obiettivi, le politiche e le procedure di Gestione della Qualità del gruppo;
- vengono stabiliti i criteri e i metodi di valutazione della qualità;
- vengono fornite risorse e informazioni al progetto per supportare l'operazione e il monitoraggio delle attività di garanzia della qualità del progetto;
- vengono raccolti e analizzati i risultati delle valutazioni della garanzia della qualità;
- le politiche e le procedure di Gestione della Qualità vengono migliorate basandosi sui risultati del progetto e dell'organizzazione.

==== Attività

===== Pianificazione
Il gruppo #err418 pone i seguenti principi di qualità:

+ il contenuto del branch principale dei repository (`src` e, di conseguenza, `main` per Documenti, e `dev` per WMS3) deve rispettare i criteri di qualità definiti nel #pdq e nella @processo_gestione_configurazione. Inoltre:
  - tutti gli elementi di configurazione devono essere gestiti tramite repository su GitHub (@repository-github), con il sistema di _feature branching_;
  - ogni modifica che vuole essere introdotta in un prodotto dovrà essere prima approvata dal Verificatore tramite il meccanismo di Pull Request (@controllo_release).
+ il contenuto della documentazione deve seguire i principi di redazione descritti nella @stile-convenzioni;
+ la documentazione prodotta deve seguire degli standard interni e/o esterni:
  - standard interni:
    - vengono definiti nel presente documento nella @norme-documentazione.
  - standard esterni:
    - il gruppo adotta i seguenti standard ISO:
    #figure(table(
      align: left,
      columns: 2,
      [*Standard ISO*], [*Documento*],
      [12207:2017], [#ndp, #adr],
      [9126 1:2001], [#pdq],
    ), caption: [Tracciamento ISO-documenti])
    In particolare, per ogni processo interno al presente documento viene specificato il grado di conformità allo standard ISO/IEC/IEEE 12207:2017 all'interno di una sezione dedicata (@tracciamento_paragrafi).
+ il codice prodotto deve seguire degli standard interni, definiti nella @processo_implementazione;
+ il codice prodotto dal gruppo deve rispettare i parametri di qualità attraverso il monitoraggio delle metriche identificate nel #pdq\;
+ il prodotto software deve soddisfare i bisogni e le richieste del Proponente, identificate nel documento di #adr e catalogate in: obbligatorie, desiderabili e opzionali.

===== Valutazione

La valutazione della qualità dei prodotti di progetto, dell'andamento del gruppo e dell'attuazione dei principi di qualità elencati in precedenza viene effettuata nei seguenti modi:

- review delle Pull Request da parte del Verificatore:
  - verifica dell'aderenza agli standard interni ed esterni;
  - verifica della leggibilità, chiarezza e comprensibilità della documentazione;
  - verifica dell'assenza di errori ortografici o sintattici nei documenti;
  - verifica dell'assenza di errori nel codice (valutazione statica) e nell'esecuzione degli elementi software.
- testing del codice, come descritto nel processo di Integrazione (@processo_integrazione) e nel processo di Verifica (@processo_verifica);
- revisioni complessive degli elementi di configurazione in prossimità della fine di ogni periodo di lavoro definito nella @periodi_lavoro;
- utilizzo di metriche di qualità (@processo_misurazione) definite nel #pdq_v e di un cruscotto di qualità (@grafana) per l'individuazione tempestiva di anomalie o situazioni critiche;
- comunicazione costante con il Proponente per raccogliere feedback e valutare l'adesione del lavoro alle sue richieste (@comunicazione_Proponente).

===== Attuazione di azioni correttive
L'attività di attuazione di azioni correttive consiste nei seguenti task:
+ individuazione delle parti degli elementi soggetti a configurazione da correggere;
+ segnalazione immediata delle parti da correggere al Responsabile, tramite canale Discord pubblicamente consultabile;
+ individuazione delle azioni correttive da compiere;
+ apertura dei relativi task di revisione su Jira;
+ assegnazione e svolgimento dei task con successiva verifica in sede di Pull Request.

= Processi di Gestione Tecnica

== Processo di Pianificazione di Progetto <pianificazione>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.1_
=== Scopo
Il processo di Pianificazione di Progetto ha come scopo la produzione e coordinazione di un piano efficace ed applicabile per garantire una corretta gestione del lavoro. La pianificazione viene inserita in un documento denominato #pdp (@PdP).

=== Risultati (#pdp) <PdP>
Il #pdp è il documento principale che viene redatto durante questo processo, e ha il compito di governare la pianificazione e l'avanzamento del progetto. In questo documento vengono determinati i task e gli obiettivi da raggiungere, fornendo anche un'analisi critica del lavoro svolto fino a quel momento accompagnata dai grafici di Gantt e di burndown. Sono presenti cinque sezioni, di cui le prime quattro rientrano nel processo di Pianificazione:

+ Rischi e loro mitigazione;
+ Divisione temporale di sviluppo;
+ Preventivo dei costi di realizzazione;
+ Pianificazione del lavoro;
+ Consuntivo del progetto.

La redazione del documento va di pari passo con l'avanzamento del progetto, in modo tale da essere sempre aggiornato alla situazione corrente del lavoro.

=== Attività
Nel processo di Pianificazione sono presenti due attività principali:

+ definizione del progetto;
+ pianificazione del progetto e della gestione tecnica.

==== Definizione del progetto
In questa attività il gruppo deve definire tutto ciò che caratterizza il progetto, ovvero i suoi obiettivi e vincoli, sia di carattere funzionale che tecnologico. Durante la lavorazione del progetto verranno prodotti diversi output, che possono essere suddivisi nelle due macro categorie di: documentazione, codice. Entrambi questi prodotti dovranno essere realizzati rispettando determinate regole e processi, ed è quindi necessario che il gruppo definisca in questa attività uno o più cicli di vita da seguire.

==== Pianificazione del progetto e della gestione tecnica
È l'attività principale del processo, nella quale viene definita nel concreto la pianificazione.

===== Suddivisione temporale <periodi_lavoro>
Il gruppo ha individuato tre periodi di lavoro principali:

- raccolta e analisi dei requisiti: vengono delineati i requisiti che il prodotto finale dovrà rispettare tramite un continuo rapporto con il Proponente;
- sviluppo della Requirements and Technology Baseline (RTB): si studiano le tecnologie da utilizzare e si applicano le conoscenze acquisite per realizzare un PoC (Proof of Concept), ovvero un prodotto software che permetta di dimostrare la padronanza delle tecnologie selezionate ai fini dello sviluppo del progetto;
- periodo di sviluppo del Minimum Viable Product (MVP): viene progettato e implementato un prodotto software che rispetti almeno i requisiti minimi di accettazione, e che offra tutte le funzionalità richieste.

Ognuno di questi viene suddiviso a sua volta in periodi della durata di una settimana denominati _Sprint_. Al termine di ogni _Sprint_ viene effettuato un incontro interno di retrospettiva, nel quale si analizza criticamente la settimana appena conclusa, mostrandone aspetti positivi, aspetti da migliorare e fissando obiettivi che verranno poi riportati nell'Issue Tracking System sotto forma di task. Questi andranno a comporre il _backlog_ dello _Sprint_ successivo, e il loro progressivo completamento andrà a produrre un _burndown-chart_, utilizzato dal gruppo come strumento che rappresenti in modo oggettivo l'andamento del lavoro.

===== Definizione di ruoli, responsabilità e costi
Al fine di migliorare l'assegnazione del lavoro vengono definiti sei ruoli, ognuno dei quali con precise responsabilità da rispettare. Ogni membro del gruppo dovrà assumere ognuno di questi ruoli all'interno del periodo di lavoro al progetto. L'assegnazione dei ruoli avviene con frequenza bisettimanale. Di seguito viene riportata la descrizione di ogni ruolo con i relativi compiti:

+ *Responsabile*: è presente durante l'intero progetto, in particolare si occupa di:
  - coordinare il gruppo;
  - verificare che il lavoro proceda secondo le tempistiche e i costi stabiliti;
  - rappresentare il gruppo nei rapporti con il Committente;
  - gestire la pianificazione di ogni _Sprint_.
+ *Amministratore*: ruolo presente durante tutto il progetto. Ha il compito di:
  - predisporre e controllare il corretto utilizzo delle procedure e degli strumenti adottati;
  - implementare e manutenere gli automatismi in modo da migliorare l'efficienza del gruppo.
+ *Analista*: è presente principalmente nei primi due periodi del progetto. Si occupa di redigere il documento #adr, nel quale:
  - definisce i casi d'uso;
  - raccoglie e classifica i requisiti.
+ *Progettista*: ruolo presente principalmente negli ultimi due periodi, nei quali:
  - effettua uno studio delle tecnologie proposte, mirato alla definizione  dello stack tecnologico da usare;
  - delinea l'architettura del prodotto;
  - definisce le linee guida implementative valutando le scelte più efficienti e sostenibili.
+ *Programmatore*: è attivo negli ultimi due periodi del progetto, nei quali:
  - si occupa della codifica del PoC, senza partire da una progettazione ben definita visto l'obiettivo del Proof of Concept;
  - traduce in codice eseguibile l'architettura del prodotto finale definita dal Progettista durante il periodo di sviluppo del MVP.
+ *Verificatore*: è presente durante l'intero progetto, e si occupa di controllare che il lavoro prodotto dal gruppo rispetti gli standard qualitativi adottati.

Ad ogni ruolo è inoltre associato un costo orario, sulla base del quale il gruppo calcola il preventivo totale del progetto e quello di ogni _Sprint_ seguito dal relativo consuntivo. Il costo orario viene calcolato in base alla sua importanza all'interno del progetto, misurata in termini di competenze e disponibilità della risorsa.


== Processo di Valutazione e Controllo di Progetto <valutazioneControllo>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.2_
=== Scopo
Il processo di Valutazione e Controllo ha lo scopo di determinare lo stato del progetto tramite la verifica dell'allineamento del lavoro con i piani definiti. Tale allineamento viene dimostrato osservando i seguenti parametri:

- tempistiche;
- costi;
- obiettivi raggiunti.

Questo viene fatto all'interno di revisioni periodiche chiamate retrospettive, e viene messo per iscritto all'interno dei verbali di tali riunioni e nei paragrafi di consuntivo del #pdp.

=== Risultati
Come risultato dell'implementazione del processo di Valutazione e Controllo si elencano i seguenti:
- valutazione dell'adeguatezza di ruoli, responsabilità e risorse;
- esecuzione delle azioni correttive scaturite dalle revisioni di progresso;
- viene avviata, se necessaria, la ripianificazione del progetto;
- viene autorizzata l'azione del progetto di avanzare (o meno) da un traguardo o evento programmato al successivo;
- vengono registrati gli obiettivi raggiunti.

I risultati sono espressi e analizzati nei paragrafi di consuntivo del #pdp.

=== Attività
==== Piano di valutazione e controllo del progetto
La valutazione e il controllo del progetto avvengono a cadenza settimanale, in corrispondenza della riunione di retrospettiva. Durante questa riunione si valuta ciò che è stato svolto durante il periodo di lavoro (_Sprint_) che si sta concludendo, se ne identificano i problemi e si decidono soluzioni di controllo che vadano a risolvere o arginare i problemi individuati.

Oltre a queste revisioni periodiche interne, sono presenti attività nelle quali il gruppo espone la propria situazione al Proponente, tramite riunione su Zoom, e Committente, tramite le attività denominate "diario di bordo".

Inoltre, è necessario che il gruppo svolga delle revisioni tecniche con il Committente per avere una valutazione esterna. Queste due revisioni sono chiamate Requirements and Technology Baseline (o RTB) e Product Baseline (o PB).

==== Valutazione <valutazione>
Durante l'attività di valutazione il gruppo deve analizzare la situazione del progetto, e per fare ciò deve adottare degli strumenti che rappresentino tale situazione nel modo più oggettivo possibile. Il momento in cui si effettua questo compito è la retrospettiva settimanale. Questa si svolge tramite meeting interno su Discord con il supporto di una board Miro. Il meeting è suddiviso concettualmente in tre parti, rappresentate all'interno della board da tre riquadri:

- *Keep doing*: raccoglie tutti gli aspetti positivi, e di conseguenza da mantenere, dello Sprint;
- *Improvements*: raccoglie tutte le problematiche incontrate durante lo Sprint;
- *To do*: raccoglie tutte le attività da svolgere nel prossimo Sprint, alcune delle quali direttamente collegate agli elementi appartenenti a "Improvements".

Tramite Miro il gruppo riesce ad avere una panoramica della situazione del lavoro, che viene poi completata da Jira, l'Issue Tracking System adottato. Al suo interno il gruppo ha definito le due milestone esterne (RTB e PB), nelle quali ha creato delle Epic che rappresentano ciò che è necessario produrre per quella milestone, e che raccolgono tutti i task necessari alla produzione di tali prodotti (documenti o software).

Milestone e Epic vengono accompagnate all'interno di Jira da una barra di completamento che rappresenta in verde il lavoro svolto, in blu il lavoro in fase di svolgimento e lascia vuota la parte dedicata alle attività definite ma non ancora in svolgimento. Queste barre contribuiscono a fornire una rappresentazione oggettiva della situazione del progetto.

Oltre a queste, Jira offre la funzionalità di visualizzazione di un burndown-chart, ovvero un grafico che rappresenta l'andamento del lavoro all'interno di uno Sprint in due possibili modalità:

- quantità di story point completati;
- quantità di issue completate.

Entrambe le rappresentazioni pongono nell'asse $x$ del grafico il tempo, indicato in giorni. Questi grafici contengono inoltre una retta rappresentante l'andamento ideale del lavoro, grazie alla quale risulta più semplice verificare l'efficienza del gruppo.

Al termine dell'incontro di retrospettiva viene redatto il paragrafo di consuntivo dello Sprint nel #pdp, nel quale, oltre a fare un resoconto dello Sprint, si analizza il suo l'aspetto economico: in base ai ruoli impegnati e al monte ore produttivo svolto, si calcola il costo effettivo del periodo concluso, aggiornando conseguentemente il costo preventivato e il documento #pdp. Questo indicatore contribuisce ad avere un resoconto completo del progetto, e permette al gruppo di comprendere meglio come sta lavorando e se sta gestendo correttamente le risorse a sua disposizione.

==== Controllo
Nell'attività di controllo figurano i seguenti task:

- azioni correttive;
- ripianificazione;
- azioni di cambiamento dovute a richieste del Committente e/o Proponente;
- autorizzazione ad avanzare alla successiva milestone.

===== Azioni correttive
Nell'attività di controllo si intraprendono azioni correttive nei confronti dei problemi individuati. Questi problemi possono essere di duplice natura:
- mancato raggiungimento degli obiettivi prefissati;
- miglioramenti e accortezze da adottare.

====== Mancato raggiungimento degli obiettivi prefissati
È necessario che alla chiusura dello Sprint le attività ancora in fase di svolgimento vengano riportate nello Sprint successivo, insieme a tutte quelle attività pianificate ma non ancora iniziate che sono considerate importanti. Tutte le attività che non vengono considerate importanti, ad esempio attività di cui si è rivalutato il grado di priorità, vengono riportate nel backlog. Una situazione di mancato raggiungimento degli obiettivi può essere sinonimo anche da una pianificazione errata e troppo ottimista, ed è quindi necessario che essa sia rivista e migliorata.

====== Miglioramenti e accortezze da adottare
Le soluzioni correttive vengono decise dal gruppo tramite la visualizzazione e l'analisi della board Miro durante la retrospettiva. Nella board infatti, come esposto nella @valutazione, alcuni dei task raccolti rispondono direttamente ai problemi individuati nella parte di Things to change.

===== Ripianificazione
La ripianificazione avviene quando gli obiettivi cambiano nel corso dello Sprint o alcune ipotesi fatte in fase di pianificazione si rivelano sbagliate. La ripianificazione viene gestita tramite Jira, che consente di aggiornare i task attivi, permettendo anche la comunicazione tempestiva dei cambiamenti al gruppo.

===== Azioni di cambiamento dovute a richieste del Committente e/o Proponente
Le azioni di cambiamento dovute a richieste del Committente e/o Proponente sono recepite attraverso i canali di comunicazione con quest'ultimi (Zoom, mail) e vengono registrate nei rispettivi verbali. A queste azioni viene attribuita un'alta priorità per garantire massima soddisfazione del cliente finale.

===== Autorizzazione ad avanzare alla successiva milestone
L'autorizzazione ad avanzare alla successiva milestone di progetto viene concessa dal Committente e/o Proponente in seguito ai colloqui pianificati su Zoom con quest'ultimi. Il gruppo si riserva di procedere verso la milestone successiva solo una volta ricevuta l'approvazione richiesta, in modo da non portare avanti difetti e problematiche che potrebbero risultare insidiosi da correggere una volta entrati in un periodo avanzato del progetto.

== Processo di Gestione delle Decisioni <processo_gestione_decisioni>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.3_

=== Scopo
Lo scopo del processo di Gestione delle Decisioni è fornire un quadro strutturato per identificare, categorizzare e valutare le decisioni che si intendono intraprendere, selezionando la migliore in termini di benefici attesi, costi e rischi associati. \

=== Risultati
Come risultato dell'efficace attuazione del processo di Gestione delle Decisioni:
- vengono identificate le decisioni che richiedono un'analisi alternativa;
- vengono identificati e valutati i percorsi di azione alternativi;
- viene selezionato un percorso di azione preferito;
- vengono identificate la risoluzione, la giustificazione della decisione e le ipotesi che portano ad una sua necessità.

=== Attività
==== Presentazione delle decisioni
Ogni decisione viene presentata identificandone:
- tipologia;
- obiettivo;
- soluzione proposta;
- vantaggi;
- svantaggi;
- impatto in termini di tempi e costi.

Il processo di decision making viene prevalentemente svolto nel meeting di retrospettiva, in modo da non contrastare la pianificazione dello Sprint in corso ed evitare un eccessivo numero di meeting interni che potrebbero comportare difficoltà organizzative e un rallentamento dell'avanzamento. Alcune decisioni potrebbero richiedere il coinvolgimento di soggetti esterni, come Proponente e Committente, soprattutto nei casi in cui sia richiesta una figura con maggiore esperienza nel campo di riferimento.
Solo decisioni critiche riguardo cambiamenti sostanziali o nuove direzioni di lavoro possono far scaturire meeting interni mirati.

Il resoconto di quanto deciso sarà visibile all'interno del verbale redatto a fine meeting.

===== Strategie di decision-making utilizzate
+ *Strategia collaborativa*: prevede che la decisione venga presentata e votata in modo collaborativo, coinvolgendo tutti i membri del gruppo e mediante una votazione con un sistema maggioritario, in modo che il risultato rappresenti la volontà della maggioranza.\ Strategia utilizzata per le decisioni:
  - organizzative;
  - dei requisiti;
  - qualitative.

+ *Strategia expertise decision-making*: prevede che la decisione venga presentata e analizzata mediante la consultazione di figure esterne più esperte, individuabili nel Proponente o nel Committente, la cui esperienza risulta determinante. \ Questa strategia viene utilizzata per le decisioni:
  - implementative;
  - tecnologiche;
  - architetturali.


==== Analisi delle decisioni
Le decisioni possono riguardare diversi aspetti del capitolato, e la loro categorizzazione è utile per individuare la migliore strategia di gestione e i ruoli coinvolti.

Le decisioni vengono dunque così classificate:
+ *Decisioni organizzative*: sono relative al modo di lavorare, cioè a come vengono gestiti i processi di avanzamento del progetto. Esempi notevoli sono le decisioni focalizzate alla coordinazione del gruppo o alla scelta degli strumenti da utilizzare per la gestione del progetto (ad esempio: scelta dell'ITS, delle piattaforme per la comunicazione e per la collaborazione):
  - documento soggetto a modifiche: #ndp\;
  - ruoli responsabili dell'aggiornamento: Responsabile, Amministratori;
  - strategia di decision-making: collaborativa.

+ *Decisioni tecnologiche*: sono relative allo stack tecnologico da adottare durante lo sviluppo del progetto:
  - documento soggetto a modifiche: #ndp\;
  - ruoli responsabili dell'aggiornamento: Responsabile, Progettisti;
  - strategia di decision-making: expertise decision-making.

+ *Decisioni sui requisiti*: sono relative ai requisiti del prodotto software. Possono riguardare aspetti funzionali e non funzionali:
  - documento soggetto a modifiche: #adr\;
  - ruoli responsabili dell'aggiornamento: Analisti;
  - strategia di decision-making: collaborativa.

+ *Decisioni di implementazione*: sono decisioni relative alla stesura del codice:
  - documento soggetto a modifiche: #ndp, documenti tecnici (diagramma delle classi);
  - ruoli responsabili dell'aggiornamento: Responsabile, Progettisti, Programmatori;
  - strategia di decision-making: expertise decision-making.

+ *Decisioni architetturali*: sono decisioni relative ai pattern e alle architetture riguardanti il software:
  - documento soggetto a modifiche: #ndp, documenti tecnici (diagramma delle classi, diagramma dei casi d'uso);
  - ruoli responsabili dell'aggiornamento: Responsabile, Progettisti;
  - strategia di decision-making: expertise decision-making.

+ *Decisioni sulla qualità*: sono decisioni relative ai controlli di qualità:
  - documento soggetto a modifiche: #pdq\;
  - ruoli responsabili dell'aggiornamento: Responsabile, Verificatori;
  - strategia di decision-making: collaborativa.


== Processo di Gestione dei Rischi <processo_gestione_rischi>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.4_

=== Scopo
Lo scopo del processo di Gestione dei Rischi è identificare, analizzare, trattare e monitorare costantemente i rischi, così da poterli affrontare sistematicamente durante l'intero ciclo di vita del progetto.
I rischi e le relative opzioni di trattamento vengono codificate univocamente per agevolare il tracciamento e l'organizzazione strutturale.

=== Risultati
Come risultato dell'implementazione del processo di Gestione dei Rischi:
- vengono identificati e analizzati i rischi;
- vengono identificate e priorizzate le opzioni di trattamento del rischio;
- viene selezionato ed implementato un trattamento appropriato;
- i rischi vengono valutati per verificare cambiamenti di stato e progressi nel trattamento.
I risultati sono raccolti nel documento #ris.

=== Struttura e codifica
==== Struttura gerarchica
I rischi vengono suddivisi nelle categorie principali descritte dal "Risk Breakdown Structure" PMBOK:
+ rischi tecnici;
+ rischi esterni;
+ rischi organizzativi;
+ rischi di project management.

==== Codifica
I rischi vengono codificati tramite la sigla "RIS" separata mediante un carattere "-" da due valori "x" e "y", divisi a loro volta da un carattere ".".
- il valore di "x" identifica la categoria PMBOK corrispondente;
- il valore "y" identifica il numero del rischio.

Per esempio, il primo rischio della categoria "rischi esterni" avrà codice:
#align(center, "RIS-2.1")

Le opzioni di trattamento vengono codificate tramite la sigla "OT" separata mediante un carattere "-" da tre valori "x", "y" e "z", divisi a loro volta da un carattere ".".
- il valore di "x" identifica la categoria PMBOK corrispondente al rischio di riferimento;
- il valore "y" identifica il numero del rischio di riferimento;
- il valore "z" identifica il numero dell'opzione di trattamento.

Per esempio, la prima opzione di trattamento del rischio RIS-2.1 avrà codice:
#align(center, "OT-2.1.1")

=== Attività e compiti

==== Pianificazione della Gestione dei Rischi
La strategia di Gestione dei Rischi per il progetto è basata su un approccio proattivo per identificare e mitigare i rischi in tutte le fasi del suo ciclo di vita. \
Ad ogni rischio individuato viene associato un profilo basato sia sulla probabilità di occorrenza che sull'impatto che essi hanno sullo stato di avanzamento dei lavori e sul progetto stesso.
L'impatto può essere "lieve", "medio" o "grave" in base alla sua entità.
La probabilità di occorrenza viene identificata tramite un valore intero da 1 a 5, dove 1 esprime una probabilità molto bassa, mentre 5 esprime una frequenza attesa sostenuta.\
Il gruppo definisce approcci di trattamento appropriati, compresi piani di mitigazione specifici.

==== Gestione del profilo di rischio
+ *Definizione e registrazione delle soglie e delle condizioni di rischio*:\
  le soglie di rischio sono stabilite sulla base della probabilità di occorrenza e dell'impatto.
  I rischi con un impatto negativo elevato sono trattati in modo più rigoroso rispetto a quelli con un impatto inferiore;

+ *Creazione e mantenimento di un profilo di rischio*:\
  il profilo di rischio contiene tutte le informazioni necessarie per la Gestione dei Rischi, come il loro stato, le soglie, le probabilità, le azioni richieste in caso di occorrenza e le conseguenze previste.
  Viene aggiornato in modo tempestivo in risposta ai cambiamenti nelle condizioni del progetto;

+ *Fornitura del profilo di rischio rilevante agli stakeholder in base alle loro esigenze*:\
  il profilo di rischio viene all'occorrenza discusso nei meeting interni e/o esterni e tutte le parti interessate allo stato attuale dei rischi e delle azioni di trattamento possono consultare il documento #ris_v.


==== Analisi dei rischi
Questa attività consiste nei seguenti compiti:

+ *identificazione del rischio ed associazione ad uno specifico profilo, secondo quanto descritto nella pianificazione della Gestione dei Rischi*:\ l'identificazione avviene durante tutte le fasi di sviluppo. Inoltre, i rischi emergono dall'analisi delle misurazioni di qualità dei processi e del sistema software in evoluzione;

+ *valutazione di ciascun rischio rispetto alle sue soglie di accettazione*:\ ogni rischio viene valutato rispetto alle soglie stabilite, il superamento delle quali attiva delle modalità di trattamento specifiche.

==== Trattamento dei rischi
Questa attività consiste nei seguenti compiti:

+ *definizione e registrazione delle strategie e delle misure di trattamento consigliate per ciascun rischio che superi la soglia di tolleranza*. \ Queste possono includere:\
  - l'eliminazione del rischio;
  - la riduzione della sua probabilità o gravità;
  - l'accettazione del rischio.

  Vengono anche registrate informazioni sull'efficacia delle alternative di trattamento;

+ *nel caso di accettazione di un rischio al di sopra della soglia, attribuzione di priorità elevata e monitoraggio costante*:\
  pratica necessaria per valutare la necessità di futuri interventi di trattamento del rischio o eventuali modifiche della sua priorità;

+ *coordinamento dell'azione di gestione dopo la selezione di una strategia di trattamento del rischio*:\
  dopo la selezione di un trattamento del rischio, vengono coordinate azioni di gestione per implementare le decisioni prese. Il processo di Valutazione e Controllo del progetto può essere applicato.

==== Monitoraggio dei rischi
Questa attività consiste nei seguenti compiti:

+ *monitoraggio continuo dei rischi e del contesto della loro gestione per eventuali loro cambiamenti*;

+ *monitoraggio continuo di possibili nuovi rischi durante l'intero ciclo di vita*.

Il monitoraggio dei rischi avviene principalmente in sede di meeting interno a seguito di analisi retrospettive.


== Processo di Gestione della Configurazione <processo_gestione_configurazione>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.5_
=== Scopo
Lo scopo della Gestione della Configurazione è gestire e controllare gli elementi del sistema e le configurazioni durante il ciclo di vita. Lo scopo principale è tracciare e coordinare le procedure necessarie alla modifica della documentazione e del codice sorgente.

=== Risultati
Come risultato dell'implementazione riuscita del processo di Gestione della Configurazione:
- vengono identificati e gestiti gli elementi che richiedono la gestione della configurazione;
- vengono stabilite le linee base di configurazione;
- sono controllate le modifiche agli elementi sotto gestione della configurazione;
- sono disponibili informazioni sullo stato della configurazione;
- le release dei documenti e del software sono controllate e approvate.

=== Attività
==== Versionamento <versionamento>
===== Generalità
Il versionamento è un processo che permette di tenere traccia delle modifiche effettuate su un prodotto software o documentale. Per ogni modifica viene creata una nuova versione del prodotto, che viene identificata da un numero di versione. Il numero di versione è composto da tre cifre separate da un punto, e segue la convenzione seguente:
#align(center, `X.Y.Z`)
dove:

- `X`: indica il numero di versione principale;
- `Y`: indica il numero di versione secondaria;
- `Z`: indica il numero di versione di revisione e correzione.

Per il versionamento di qualsiasi prodotto del progetto è essenziale osservare i principi elencati di seguito:

+ l'aggiornamento di una delle cifre del numero di versione azzera le cifre di rilevanza inferiore;
+ un normale numero di versione deve avere la forma `X.Y.Z`, dove `X`, `Y` e `Z` sono interi non negativi e non preceduti da zeri;
+ numeri di versione con `X` pari a 0 indicano prodotti in lavorazione, da non considerarsi pronti al rilascio;
+ dopo il rilascio, il contenuto della versione non deve essere modificato. Qualsiasi modifica successiva al rilascio deve causare un cambio nel numero di versione.

====== Documentazione

L'aggiornamento del numero di versione per la documentazione deve attenersi alle seguenti regole:

- `X`: deve essere aggiornato al cambiamento della struttura del documento. Riguarda dunque cambiamenti di organizzazione del documento, dei suoi paragrafi e della presentazione delle informazioni, nonché cambiamento dei parametri necessari nel template dei documenti;
- `Y`: deve essere aggiornato all'aggiunta o alla rimozione di paragrafi;
- `Z`: deve essere aggiornato a seguito di cambiamenti minimi o correzioni ortografiche.

Il processo di aggiornamento della versione è reso automatico, come stabilito nella sezione dedicata a GitHub Actions (@automazioni).

====== Software <versionamento_software>

L'aggiornamento del numero di versione per il software deve attenersi alle seguenti regole:

- `X`: deve essere aggiornato solo al raggiungimento di una versione del prodotto che abbia un set di funzionalità il più completo possibile. Inizialmente è dunque posto a 0, e passerà a 1 solamente al momento in cui il prodotto sarà classificabile come MVP;
- `Y`: deve essere aggiornato ogniqualvolta viene introdotta una nuova funzione nel codice o una nuova funzionalità al prodotto;
- `Z`: deve essere aggiornato ad ogni correzione di bug o cambiamento minore. Alcuni esempi di cambiamenti minori sono:
  - correzioni ortografiche:
    - nei nomi di variabili;
    - nei nomi di parametri;
    - nei nomi di funzioni o metodi.
  - cambiamento nel valore di parametri:
    - cambiamento di colore di un elemento grafico;
    - cambiamento di un valore numerico;
    - cambiamento di un valore letterale.

===== Tracciamento modifiche <tracciamento-modifiche>
Il tracciamento delle modifiche avviene per mezzo di automazioni che permettono di identificare:
- versione del documento modificato;
- data di modifica (gg-mm-aaaa, ddd);
- numero della Pull Request di riferimento;
- titolo della Pull Request di riferimento;
- autore della modifica;
- revisore incaricato.

Tali informazioni sono salvate in un file CSV, unico per ogni documento. Questo file, denominato `log.csv`, è salvato nella cartella dedicata al documento a cui si riferisce, e viene generato automaticamente da una GitHub Action invocata all'apertura, riapertura, sincronizzazione e chiusura di una Pull Request. Maggiori dettagli al paragrafo dedicato (@automazioni).

Ogni documento, nella sezione direttamente sottostante all'indice, mostra in formato tabellare le informazioni relative al tracciamento delle modifiche, leggendo le informazioni dal file `log.csv`.

#figure(table(
    align: left,
    columns: (1fr, 1.7fr, 0.8fr, 5fr, 2.1fr, 2.1fr),
    [*Ver.*],[*Data*],[*PR*],[*Titolo*],[*Redattore*],[*Verificatore*],
    [1.0.0], [11-12-2023,\ Mon], [90], [DOC-123 Redazione paragrafo], [Riccardo \ Carraro], [Mattia \ Todesco]
), caption: [Esempio tracciamento modifiche])

===== Tecnologie adoperate
====== GitHub <repository-github>
Lo strumento di versionamento scelto dal gruppo è GitHub.
Il gruppo #err418 ha creato un'organizzazione omonima su GitHub in modo da gestire e separare il lavoro in più repository pensati per scopi e contenuti diversi:

- Documenti: documentazione;
- WMS3: codice sorgente;
- PoC: Proof of Concept.

*Documenti* è il repository dedicato alla documentazione prodotta, il quale possiede tre branch principali:
- `main`: contiene i file pdf dei documenti prodotti solamente in seguito ad un processo di review con esito positivo;
- `src`: contiene i file sorgente dei documenti prodotti, file di configurazione e di supporto;
- `website`: contiene i file sorgente del sito web che espone la documentazione del gruppo.

Documenti è organizzata in modo da suddividere la documentazione necessaria alle revisioni esterne che il gruppo dovrà affrontare:
- *RTB*: contiene i file necessari alla Requirements and Technology Baseline:
  - *Documentazione esterna*: contiene i documenti ad uso esterno:
    - *Verbali*: contiene i verbali delle riunioni esterne;
    - *doc_file_name*:
      - `doc_file_name.typ`: file sorgente del documento;
      - `log.csv`: registro delle modifiche associato al documento.
  - *Documentazione interna*: contiene i documenti ad uso interno:
      - *Verbali*: contiene i verbali delle riunioni interne;
    - *doc_file_name*:
      - `doc_file_name.typ`: file sorgente del documento;
      - `log.csv`: registro delle modifiche associato al documento.
- *PB*: contiene i file necessari alla Product Baseline. È organizzata allo stesso modo della cartella dedicata alla RTB.

Al fine di garantire uno svolgimento delle attività in parallelo, la strategia utilizzata dal gruppo durante lo sviluppo è il _feature branching_. È presente un branch per le release e un branch per lo sviluppo dal quale vengono creati dei branch per ogni nuova funzionalità o modifica da apportare.
Questi ultimi vengono identificati dal codice `DOC-XXX`, dove `XXX` è il numero del relativo task su Jira. I branch di feature vengono integrati tramite Pull Request.

*WMS3* è il repository che contiene il codice sorgente del prodotto software sviluppato dal gruppo. È presente un branch principale, `dev`, in cui si trova il codice sorgente relativo all'ultima versione del prodotto, reperibile anche nella sezione Releases presente sulla destra dell'interfaccia di GitHub.

Il repository è organizzato in due sottocartelle principali, da cui si diramano diverse cartelle secondarie:
- *db*: contiene il file SQL utile alla creazione e popolamento del database di supporto;
- *web*: contiene il codice sorgente di frontend e backend, e si dirama in:
  - *\_\_test\_\_*: contiene i test del software, in particolare:
    - *DataMapperTest*: test riguardanti il pattern Data Mapper;
    - *Integration Test*: test di integrazione;
    - *Unit Test*: test di unità delle classi del modello.
  - *app*: file riguardanti la pagina principale e lo stile;
  - *components*: componenti utilizzati nel prodotto, in particolare:
    - *custom*: componenti personalizzati, quali:
      - form di creazione dell'ambiente 3D;
      - pannelli per la visualizzazione delle impostazioni e delle varie liste di elementi del prodotto.
    - *providers*: file relativi all'implementazione del pattern Provider;
    - *ThreeComponents*: file relativi agli elementi 3D;
    - *ui*: file relativi agli elementi dell'interfaccia grafica.
  - *lib*: contiene un file riguardante il merge tra più classi del framework Tailwind CSS;
  - *model*: file relativi alle classi del modello e ai pattern:
    - *dataMapper*: file relativi all'implementazione del pattern Data Mapper;
    - *dataRepository*: file relativi all'implementazione del pattern Repository;
    - *FloorStrategy*: file relativi all'implementazione del pattern Strategy per la creazione del piano;
    - *SearchEngine*: file relativi all'implementazione delle funzioni di ricerca.
  - *node_modules*: cartella generata automaticamente da npm (Node Package Manager) utile alla gestione delle dipendenze di Node.js;
  - *pages*: API prodotte dal gruppo;
  - *public*: file SVG per la creazione del magazzino e una sottocartella di icone;
  - *ServerActions*: file relativi all'implementazione delle Server Actions utilizzate.

Anche in questo repository, come per Documenti, viene applicato il _feature branching_, utilizzando `dev` come branch di appoggio per l'apertura dei branch di feature, identificati dal codice `WMS-XXX`, dove `XXX` è il numero del relativo task su Jira.

====== GitHub Actions <automazioni>
L'intero processo di versionamento è accompagnato da una serie di automazioni, realizzate tramite GitHub Actions, che sollevano i componenti del gruppo dall'onere manuale di attività come la compilazione dei documenti, l'aggiornamento del registro delle modifiche (file `log.csv`) e la pubblicazione dei documenti dopo la verifica.

*Workflow delle automazioni:*
#figure(image("./imgs/workflow_actions.svg", format: "svg", width: 100%), caption: [Workflow delle automazioni]);

Alla creazione della Pull Request si avvia il workflow per la compilazione e la registrazione delle modifiche avvenute. Prima di procedere è necessario inserire informazioni essenziali ai fini di ottenere maggiore chiarezza e tracciabilità nel messaggio di Pull Request, quali:
- titolo conforme, contenente il nome del task di riferimento su Jira legata alla Pull Request, nel formato `DOC-XXX titolo`;
- identificativo di almeno un Verificatore;
- eventuali note aggiuntive.
Il workflow è composto dai seguenti passaggi:
+ *fetch delle informazioni dei file modificati*: vengono recuperate le informazioni relative ai file modificati nella Pull Request, quali:
  - nome del file;
  - path del file.
+ *controllo del numero di file modificati*: se il numero di file modificati è maggiore di 1, il workflow termina con un errore;
+ *controllo dell'esistenza del file `log.csv`*: se il file non esiste, viene creato (sinonimo di creazione del documento);
+ *rilascio della review*: il Verificatore si occupa di controllare il documento e rilasciare la review, segnando i cambiamenti richiesti;
+ *richiesta di una nuova review per verificare che i cambiamenti apportati siano corretti*;
+ *nel momento in cui la review termina con esito positivo, si procede al recupero della versione corrente del documento*:
  - se non esiste il corrispettivo pdf nel branch main, allora il documento non era mai stato pubblicato, pertanto la sua versione di partenza sarà fissata a 1.0.0;
  - se esiste il corrispettivo pdf nel branch main, essendo la versione contenuta nel nome del file, si procede al recupero della versione corrente del documento, modificando la versione X.Y.Z in base all'analisi del documento mediante uno script Python.
+ *aggiornamento del file `log.csv`*: il file di log viene aggiornato con le informazioni relative alla modifica effettuata: questo passaggio, avvenendo solamente a seguito di review positiva, permette di garantire che vengano segnate solamente le modifiche che hanno superato il processo di Verifica;
+ *compilazione del documento*: aggiornato il file `log.csv` e recuperato il numero di versione, il documento è pronto per essere compilato, mostrando numero di versione e registro delle modifiche aggiornati;
+ *pubblicazione del documento*: terminati i workflow precedenti, se si avvia la procedura di merge a seguito del processo di Verifica, il documento pdf generato dalla compilazione viene pubblicato nel ramo main del repository;
+ *merge non confermato*: qualora a termine della compilazione del documento non venisse confermato il merge da parte del Verificatore, significa che è stato individuato un ulteriore errore o correzione da dover apportare al documento prima della sua pubblicazione sul ramo main del repository. In questa circostanza sarà dunque necessario rilasciare un'ulteriore review. L'esecuzione riprende dal punto 4.


L'azione manuale si riduce solamente al rilascio di review e conferma di merge, mentre tutte le altre attività vengono automatizzate.
All'approvazione della Pull Request, e alla conseguente chiusura del branch, un'ulteriore automazione integrata su Jira, permette di aggiornare in automatico lo stato del task collegato alla Pull Request, portandolo allo stato di "Completato".

====== Typst
Il gruppo utilizza Typst come strumento di scrittura e compilazione dei documenti. \
Al fine di dare una struttura comune ai documenti si è creato un file `template.typ` parametrizzato, sfruttando la possibilità di produrre un file pdf compilando insieme più file Typst. Questo file contiene le impostazioni di base per la creazione di un documento:
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
Al momento della creazione di un nuovo documento sarà sufficiente importare il modello e specificare i parametri sopra elencati. \
Al fine di semplificare la procedura di creazione di un documento, è stato condiviso un documento di testo denominato `quickstart.txt` che contiene la configurazione base per la stesura dei documenti.

==== Tracciamento dei task e amministrazione dello stato di configurazione

===== Jira
Jira è lo strumento centrale per la gestione e la tracciabilità dei task assegnati ai membri del gruppo.
L'integrazione con GitHub permette a Jira di lavorare e apportare modifiche direttamente al repository del gruppo, permettendo la creazione, gestione e chiusura di branch e al conseguente aggiornamento dello stato dei task.
Ogni task è identificato da un codice univoco incrementale nel formato `DOC-XXX`, dove `XXX` è un numero positivo sequenziale, che permette di identificarlo. Ogni task è caratterizzato da:
- codice identificativo `DOC-XXX` generato automaticamente da Jira;
- titolo;
- descrizione (opzionale);
- stato ("Da completare", "In corso", "In verifica", "Completato");
- assegnatario;
- story point (stima del carico di lavoro);
- epic story (milestone) di riferimento.

Nel processo di versionamento e di tracciamento delle modifiche, Jira ricopre un ruolo fondamentale, grazie anche alla sua integrazione con GitHub: nel momento in cui si intende avviare un task, è necessario seguire i seguenti passaggi:
- aprire il task su Jira;
- selezionare l'opzione di creazione di un branch dedicato al task (integrazione con GitHub);
- selezionare il repository e il branch da cui creare il nuovo branch.

A questo punto, il task si aggiornerà nello stato "In corso" e verrà aperto il relativo branch. Terminato il task ed effettuata la Pull Request, lo stato del ticket passerà automaticamente a "In verifica". Superato il processo di Verifica, Jira provvederà ad aggiornare lo stato del task in "Completato".

====== Backlog
Ogni task da svolgere è segnato all'interno del backlog di Jira. Durante la pianificazione dello Sprint, si definisce lo Sprint backlog, il sottoinsieme di attività provenienti dal backlog che si intendono portare a termine entro la conclusione dello Sprint.
A differenza dello Sprint backlog definito durante la pianificazione, il backlog viene espanso man mano che si riscontrano nuovi task necessari o a seguito di decisioni prese durante le riunioni interne o esterne.

====== Board
Le board di Jira permettono, similmente allo Sprint backlog, di avere una visione d'insieme delle attività da svolgere, ma con un approccio più visuale e intuitivo.
I task sono organizzati in quattro colonne, rappresentanti lo stato:
- *da completare*: non ancora avviati, ovvero non esiste il branch dedicato;
- *in corso*: in fase di svolgimento, ovvero branch dedicato al task creato;
- *in verifica*: in fase di review, dopo l'apertura di una Pull Request;
- *completato*: task concluso, ovvero branch dedicato chiuso a seguito di merge sul ramo principale.

====== Timeline
La timeline di Jira permette di avere una visione delle attività incentrata sulle tempistiche e le relazioni tra i task.
Permette inoltre di mostrare il grafico di Gantt delle attività evidenziando i rapporti di dipendenza tra i task e stabilendo le scadenze necessarie per il loro svolgimento.

====== Grafici
Jira offre la possibilità di produrre grafici e report relativi all'avanzamento e alla tracciabilità dei task. Tali strumenti permettono di avere delle metriche di valutazione dell'andamento del progetto e di individuare eventuali criticità.
Il gruppo utilizza come metrica principale il burndown chart, che permette di avere una visione dell'avanzamento delle attività in base al tempo, basato sugli story point di ogni attività.


==== Controllo delle release <controllo_release>
Il controllo delle release viene gestito tramite il meccanismo di Pull Request di GitHub.
Prima di integrare i nuovi cambiamenti, viene aperta una Pull Request dall'assegnatario del task. La Pull Request deve avere un titolo valido (come descritto nel paragrafo dedicato @automazioni) e deve essere designato almeno un reviewer. Di norma il reviewer di base è il Verificatore, che svolge una supervisione sulla correttezza sintattica e semantica dei contenuti.
Nel caso in cui ci sia bisogno di una figura con delle competenze specifiche per quanto riguarda la semantica e il contenuto del materiale da revisionare, il Verificatore può essere affiancato da altri membri del gruppo.
Per ogni richiesta di modifiche da apportare vengono aperte delle conversation, in cui è possibile evidenziare le linee del documento che hanno bisogno di cambiamenti, oltre a stabilire un canale di comunicazione tra assegnatario e Verificatore.
Il processo di verifica del documento è accompagnato dall'esecuzione di GitHub Actions che si occupano di automatizzare l'aggiornamento del file `log.csv` con i dati relativi alla modifica apportata, e la compilazione e pubblicazione del documento nel ramo main del repository. In questo modo si assicura che ogni documento presente nel ramo principale sia prima stato sottoposto ad un processo di verifica.
Si può procedere alla chiusura della Pull Request e con l'operazione di merge solo nel caso in cui tutte le conversation siano state risolte e siano stati applicati i cambiamenti richiesti in fase di review.
Solo a seguito del merge della Pull Request, il task collegato presente in Jira può essere definito concluso e il relativo branch viene chiuso in modo automatico.


== Processo di Gestione delle Informazioni <processo_gestione_informazioni>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.6_

=== Scopo
Lo scopo del processo di Gestione delle Informazioni è generare, ottenere, confermare, trasformare, conservare, recuperare e distribuire le informazioni e la relativa documentazione agli stakeholder interessati, garantendone chiarezza, completezza, consistenza, tracciabilità e presentazione.

Le informazioni possono essere tecniche, di progetto, organizzative e di accordo.

=== Informazioni gestite
Le informazioni gestite dal gruppo sono:
- documentazione:
  - #pdp\;
  - #ndp\;
  - #pdq\;
  - #adr\;
  - #glo\;
  - Verbali.
- codice sorgente:
  - Proof of Concept (PoC);
  - Minimum Viable Product (MVP).

Codice sorgente e documenti sono creati, organizzati, aggiornati, versionati e distribuiti all'interno dei repository del gruppo.

=== Documentazione <norme-documentazione>

==== Struttura dei documenti <struttura-documenti>
Ogni documento segue una struttura standard, stabilita nel template `template.typ`. \
Questo paragrafo non tratta della struttura dei verbali. Per le norme sulla struttura dei verbali si rimanda alla @struttura-verbali.\
I documenti pertanto sono così strutturati:

+ *Cover page*: la cover page è la pagina iniziale del documento. Essa contiene le seguenti informazioni:
  - nome del gruppo;
  - link all'organizzazione GitHub;
  - indirizzo e-mail del gruppo;
  - logo;
  - titolo del documento;
  - sottotitolo del documento;
  - versione;
  - stato;
  - tipo di uso: interno od esterno;
  - Responsabile del gruppo;
  - redattori;
  - verificatori;
  - destinatari;
  - partecipanti esterni (se presenti).

+ *Registro delle modifiche*: sezione successiva alla cover page. Maggiori dettagli sono disponibili alla sezione dedicata (@tracciamento-modifiche);

+ *Indici*: Sono presenti tre tipologie di indici:
    - indice del contenuto: indice sempre presente che rappresenta i paragrafi del documento;
    - indice delle tabelle: indice presente solo se sono presenti tabelle nel documento;
    - indice delle figure: indice presente solo se sono presenti figure nel documento.

+ *Contenuto del file*: sezione successiva agli indici. Rappresenta il corpo del documento, suddiviso in paragrafi.

==== Struttura dei verbali <struttura-verbali>
Al fine di rendicontare argomenti, decisioni, aggiornamenti, problematiche e attività oggetto di discussione durante i meeting interni ed esterni, il gruppo raccoglie tali informazioni all'interno di verbali redatti al termine dei meeting.

===== Verbali interni di retrospettiva <struttura-verbali-retrospettiva>

+ *cover page* (@struttura-documenti);
+ *Informazioni generali*:
  - luogo: il luogo reale o piattaforma software dove il gruppo svolge il meeting;
  - data e ora nel formato `dd/mm/aaaa @ hh:mm ~ hh:mm`;
  - partecipanti;
  - assenti.
+ *Ordine del giorno*: elenco degli argomenti trattati durante la riunione;
+ *Valutazione del progresso generale*: descrive il lavoro svolto durante lo Sprint a cui si riferisce la retrospettiva. Questo paragrafo è così definito:
  - valutazione sulla qualità del lavoro in merito alla velocità di avanzamento, evidenziando eventuali rallentamenti o meriti riscontrati. In questa parte deve essere indicato se sono stati effettuati meeting esterni, riportando data e oggetto di ogni meeting svolto;
  - sottoparagrafi per ogni epic su cui si è lavorato in cui viene riportata una descrizione del lavoro svolto. Se in una epic sono stati svolti diversi lavori, questi vanno riportati in forma di elenco non numerato.
+ *Analisi di retrospettiva*, suddiviso in:
  - discussione delle principali metriche del #pdq riguardanti l'andamento dello Sprint e del progetto:
   - CPI: valore precedente e valore attuale;
   - EAC: valore precedente e valore attuale;
   - rapporto tra SEV e SPV.
  - *Keep doing*: riporta gli aspetti positivi dello Sprint;
  - *Improvements*: riporta le criticità riscontrate dal gruppo etichettate con un codice identificativo, e le relative soluzioni. Si articola in due parti:
    - *Criticità evidenziate*: riporta l'elenco delle criticità, ognuna identificata da un codice composto nel seguente modo:
      - *P*, lettera indicante una problematica;
      - *O/T*, a seconda se la problematica sia di origine organizzativa o tecnologica;
      - *N*, intero naturale positivo che incrementa ad ogni nuova problematica di tipo organizzativo o tecnologico.
    - *Soluzioni predisposte*: tabella che associa ad ogni criticità una soluzione. È suddivisa in tre colonne:
      - ID risoluzione;
      - Titolo: titolo o breve descrizione della soluzione;
      - Criticità affrontate.
+ eventuali ulteriori argomenti affrontati, organizzati in paragrafi indipendenti;
+ *Pianificazione*: riporta la tabella contenente i task programmati per lo Sprint successivo. Questa tabella è automaticamente generata da un foglio di calcolo elettronico condiviso realizzato in Google Sheets (maggiori dettagli in merito reperibili al paragrafo @google_sheets) e disponibile nel Google Drive del gruppo.

===== Verbali esterni <struttura-verbali-esterni>

La struttura dei verbali esterni deve rispecchiare i primi tre punti della @struttura-verbali-retrospettiva. In "Partecipanti" dovranno essere riportati i nominativi dei partecipanti esterni e il ruolo svolto all'interno del meeting. Ogni argomento della sezione "Ordine del giorno" dovrà essere discusso in una sottosezione dedicata.

Nei verbali esterni riguardanti gli incontri con il Proponente dovrà essere presente la sezione "Pianificazione incontri futuri", nella quale si riporta la data del prossimo meeting.

===== Altri verbali interni <struttura-verbali-interni-generali>

La struttura dei verbali interni che non riguardano la retrospettiva deve rispecchiare i primi tre punti della @struttura-verbali-retrospettiva. Ogni argomento della sezione "Ordine del giorno" dovrà essere discusso in una sottosezione dedicata.

Nel caso in cui da un meeting interno scaturiscano nuovi task da svolgere, questi dovranno essere riportati in una sezione "Pianificazione" all'interno di una tabella.

=== Stile e convenzioni <stile-convenzioni>
Al fine di uniformare e conformare i prodotti del progetto, il gruppo ha stabilito delle convenzioni stilistiche e di scrittura da rispettare durante la stesura dei documenti e del codice.
L'obiettivo è perseguire:
- chiarezza;
- leggibilità;
- manutenibilità.

==== Convenzioni stilistiche globali

===== Nomi dei documenti <norma_nomi_documenti>
Ogni parola dei titoli dei documenti deve iniziare con la lettera maiuscola, ad eccezione delle preposizioni e degli articoli.\
I verbali avranno come titolo la data del verbale nel formato `yyyy-mm-dd`.
Se si fa riferimento al contenuto di un documento, dopo il rispettivo titolo riportare anche la versione nel formato `\_vX.Y.Z`. \

Esempio: #ndp_v

===== Formato data
All'interno del documento, le date seguiranno il formato locale `dd/mm/yyyy`, mentre all'interno dei nomi dei file il formato utilizzato sarà `yyyy-mm-dd`, dove:
- *dd*: numero del giorno con due cifre;
- *mm*: numero del mese con due cifre;
- *yyyy*: numero dell'anno con quattro cifre.

==== Convenzioni stilistiche documentali
Convenzioni stilistiche specifiche per i prodotti documentali.

===== TODO
Per indicare sezioni del documento da completare, il gruppo ha deciso di utilizzare il termine TODO, che verrà in automatico mostrato in rosso e riquadrato, riportando il messaggio "_Riferimento assente_".\
Il risultato è il seguente: #TODO.\
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
- iniziale parole nei nomi documenti ad eccezione di preposizioni e articoli. Riferimento nomi file disponibile alla @norma_nomi_documenti.

`Monospace`:\
- nome di un file (Riferimento nomi file disponibile alla @norma_nomi_documenti);
- parametri;
- porzioni di codice.

===== Elenchi
- si utilizzano elenchi numerati se gli elementi mostrati richiedono un ordine (es. ordine delle sezioni);
- si utilizzano elenchi non numerati se gli elementi mostrati non richiedono un ordine (es. lista di attività);
- al termine di ogni punto dell'elenco viene posto ";" ad eccezione dell'ultimo elemento a cui viene posto ".".

===== Glossario
Tutte le occorrenze dei termini contenuti nel glossario sono evidenziati con una G in corsivo a pedice.

===== Variabili Typst per termini ricorrenti

Al fine di uniformare termini ricorrenti, vengono predisposte variabili utilizzabili nella redazione dei documenti. I termini in considerazione sono relativi a:
- nomi di documenti;
- stakeholder;
- documenti e la versione a cui si fa riferimento;
- ultima data di accesso ad un link ad una risorsa web esterna.

Di seguito viene riportata la tabella delle variabili e la loro rappresentazione all'interno del documento compilato:

#figure(
  table(
    columns: 2,
    [*Variabile*],[*Risultato*],
    [`\#err418`],[#err418],
    [`\#cardin`],[#cardin],
    [`\#vardanega`],[#vardanega],
    [`\#adr`],[#adr],
    [`\#adr_v`],[#adr_v],
    [`\#ris`],[#ris],
    [`\#ris_v`],[#ris_v],
    [`\#glo`],[#glo],
    [`\#glo_v`],[#glo_v],
    [`\#ndp`],[#ndp],
    [`\#ndp_v`],[#ndp_v],
    [`\#pdp`],[#pdp],
    [`\#pdp_v`],[#pdp_v],
    [`\#pdq`],[#pdq],
    [`\#pdq_v`],[#pdq_v],
    [`\#lastVisitedOn(day, month, year)`],[#lastVisitedOn(1, 1, 2024)],
  ),
  caption: "Variabili Typst per riferirsi a termini ricorrenti"
)

Tutte le variabili sono definite all'interno del file `common.typ`, reperibile nella root del repository Documenti.

=== Distribuzione delle informazioni
Il gruppo condivide il materiale prodotto all'interno di un repository dedicato reperibile al link:\
#align(link("https://github.com/Error-418-SWE/Documenti"), center)
Maggiori dettagli in merito all'organizzazione del repository sono reperibili qui: @repository-github.

== Processo di Misurazione <processo_misurazione>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.7_

=== Scopo

Lo scopo del processo di Misurazione è raccogliere, analizzare e riportare dati e informazioni, al fine di dimostrare la qualità di prodotti, servizi e processi.\
Questo processo viene svolto affinché il gruppo sia in grado di prendere le corrette decisioni per gestire al meglio il raggiungimento dei propri obiettivi.\
Le misure devono soddisfare determinate caratteristiche di qualità, ovvero devono essere:
+ verificabili;
+ significative;
+ attuabili;
+ tempestive;
+ economicamente vantaggiose.

Definiamo il concetto di "qualità" come segue: insieme delle caratteristiche di un'entità, che ne determinano la capacità di soddisfare esigenze sia esplicite che implicite.

=== Risultati

A seguito dell'implementazione efficace del processo di Misurazione:

- vengono identificate le esigenze informative;
- viene identificato e sviluppato un insieme appropriato di misure basato sulle esigenze informative;
- i dati necessari vengono raccolti, verificati e archiviati;
- i dati vengono analizzati e i risultati interpretati;
- gli elementi informativi forniscono informazioni oggettive per poter prendere decisioni concrete.

I risultati sono contenuti nel documento #pdq_v.

=== Attività

Il gruppo deve implementare le seguenti attività in conformità con le politiche e le procedure applicabili al processo di Misurazione definito nel #pdq_v\:

+ tracciamento delle metriche di qualità:
Ogni metrica di qualità deve essere tracciata e monitorata per garantire che i processi e i prodotti soddisfino gli obiettivi di qualità stabiliti. Il codice identificativo delle metriche è così composto:
#align(center, `MXY.Z`)
dove:
  - `X` può assumere i valori `P` o `S`, a seconda che la metrica sia relativa a Processi o al prodotto Software;
  - `Y` è un numero naturale che identifica la metrica;
  - `Z` è un numero opzionale che identifica l'eventuale estensione della metrica, come avviene ad esempio per PV che si estende in SPV e PPV.

+ prepararsi per la misurazione:

    - definire la strategia di misurazione per i processi primari. La strategia scelta si compone di metriche mirate alla valutazione dei processi primari, quali:
        - MP1 - BAC (Budget at Completion);
        - MP2 - PV (Planned Value), che si estende in:
          - MP2.1 - SPV (Sprint Planned Value);
          - MP2.2 - PPV (Project Planned Value).
        - MP3 - AC (Actual Cost), che si estende in:
          - MP3.1 - SAC (Sprint Actual Cost);
          - MP3.2 - PAC (Project Actual Cost).
        - MP4 - EV (Earned Value), che si estende in:
          - MP4.1 - SEV (Sprint Earned Value);
          - MP4.2 - PEV (Project Earned Value).
        - MP5 - CPI (Cost Performance Index);
        - MP6 - EAC (Estimated at Completion).

    - definire la strategia di misurazione per i processi di supporto. La strategia scelta si compone di una serie di parametri e metriche che permettono di valutare la qualità dei processi di supporto:
        - MP7 - EO (Errori Ortografici);
        - MP8 - MS (Metriche Soddisfatte).

    - definire la strategia di misurazione per la qualità del prodotto. La strategia scelta si compone di metriche mirate alla valutazione della qualità del prodotto, quali:
        - MS1 - MRC (Mandatory Requirements Coverage);
        - MS2 - DRC (Desiderable Requirements Coverage);
        - MS3 - ORC (Optional Requirements Coverage);
        - MS4 - ART (Average Response Time);
        - MS5 - LT (Learnability Time);
        - MS6 - EOU (Ease of Use);
        - MS7 - CC (Ciclomatic Complexity);
        - MS8 - CL (Coupling Level);
        - MS9 - RC (Responsability Count);
        - MS10 - CCV (Code CoVerage);
        - MS11 - BCV (Branch CoVerage);
        - MS12 - FD (Failure Density);
        - MS13 - SBV (Supported Browser Version).

    - descrivere le caratteristiche del gruppo rilevanti per la misurazione, come obiettivi aziendali e obiettivi tecnici:
        - richieste del Proponente;
        - requisiti individuati.

    - definire procedure di raccolta, analisi, accesso e reportistica dei dati:
        - #pdq: definisce i criteri e le modalità di misurazione e reportistica dei dati misurati.

    - definire criteri per valutare gli elementi informativi e il processo di Misurazione:
        - #pdq: definisce i valori ottimali e accettabili della strategia di misurazione adottata a cui tutti i documenti prodotti devono conformarsi.

    - identificare e pianificare le azioni da intraprendere per i casi in cui i parametri di misurazione di qualità non vengano rispettati.

+ eseguire la misurazione:

    - integrare procedure manuali o automatizzate per la generazione, raccolta, analisi e reportistica dei dati nei processi pertinenti:
        - controllo manuale di conformità dei documenti prodotti ai parametri individuati per i processi primari;
        - controllo manuale di conformità dei documenti prodotti ai parametri individuati per i processi di supporto;
        - revisione esterna e manuale dei documenti prodotti per il controllo di leggibilità e di eventuali errori ortografici.

    - raccogliere, archiviare e verificare i dati:
        - i dati prodotti vengono salvati e analizzati al fine di perorare una strategia di approccio ed eventuali modifiche da effettuare.

    - registrare i risultati e comunicarli agli stakeholder:
        - vengono riferiti periodicamente al Proponente gli avanzamenti e la conformità del progetto alle richieste concordate.

Maggiori dettagli in merito alla definizione, al calcolo e l'analisi delle metriche sono reperibili all'interno del documento #pdq_v.

== Processo di Controllo della Qualità <processo_controllo_qualità>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.8_

=== Scopo

La International Software Testing Qualifications Board (ISTQB) definisce il processo di Controllo della Qualità come "insieme di attività incentrate sul garantire che i requisiti di qualità saranno soddisfatti".\
Il processo di Controllo della Qualità ha come obiettivo principale quello di garantire l'applicazione efficace del processo di Gestione della Qualità da parte del gruppo.\
Il suo focus fondamentale è fornire la sicurezza e la certezza che i requisiti di qualità stabiliti saranno pienamente soddisfatti.
Questo si ottiene mediante un'analisi proattiva attenta dei processi e dei risultati che caratterizzano il ciclo di vita del progetto.\
L'obiettivo è assicurare che il prodotto risponda alle aspettative in termini di qualità, e che ciò avvenga in piena conformità con le linee guida, le politiche e le procedure precedentemente definite.
In altre parole, la finalità ultima è garantire che la qualità desiderata sia intrinseca al prodotto finale e che ogni fase del processo segua gli standard e le disposizioni stabilite dal gruppo e dal progetto.\

=== Risultati

L'implementazione riuscita del processo di Controllo della Qualità produce i seguenti risultati:

- sono definite e implementate le procedure di Controllo della Qualità del progetto;
- vengono definiti criteri e metodi per la valutazione di Controllo della Qualità;
- vengono eseguite valutazioni dei prodotti, servizi e processi del progetto;
- vengono forniti agli stakeholder i risultati delle valutazioni;
- vengono trattati i problemi emersi durante il periodo di sviluppo.

=== Attività

Le seguenti attività devono essere implementate in conformità con le politiche e le procedure del gruppo:

+ *prepararsi per il Controllo della Qualità*:

   - *definire una strategia di Controllo della Qualità*. Essa consiste in:

      + *ruoli, responsabilità e autorità definite*:
        - i ruoli e i compiti di ciascun membro sono definiti e non ambigui;
        - ogni individuo fisico viene informato a scadenza bisettimanale dei propri compiti e delle proprie responsabilità per quel periodo di tempo.

      + *criteri di valutazione definiti per processi, prodotti e servizi*:
        - il valore delle metriche di controllo dei processi primari deve essere accettabile;
        - il valore delle metriche di controllo dei processi di supporto deve essere accettabile;
        - le tempistiche da rispettare devono essere definite;
        - i requisiti funzionali devono essere definiti;
        - i requisiti non funzionali devono essere definiti.

      + *attività di verifica, convalida, monitoraggio, misurazione, revisione per i prodotti o servizi*:
        - assegnazione di un Verificatore con il compito di monitorare e testare la qualità del materiale prodotto;
        - il Verificatore ha il compito di segnalare eventuali incongruenze con le metriche di qualità al redattore.

      + *risoluzione dei problemi e attività di miglioramento di processo e prodotto*:
        - le modifiche devono essere effettuate su indicazioni del Verificatore.

  - *stabilire l'indipendenza del controllo della qualità dagli altri processi del ciclo di vita*:
         - il Verificatore deve essere una persona fisica diversa da quella che ha redatto il documento.

+ *eseguire valutazioni di processi, prodotti e servizi*:

  + il Verificatore deve valutare i prodotti e i servizi al fine di garantirne la conformità rispetto ai criteri stabiliti;
  + il Verificatore deve assicurarsi che la verifica e la convalida degli output dei processi del ciclo di vita siano eseguiti conformemente con quanto concordato in precedenza;
  + il Verificatore deve applicare il processo di Misurazione della qualità per verificare che il prodotto o servizio rispetti le metriche precedentemente stabilite;
  + il Verificatore deve esprimere un giudizio e segnalare eventuali problematiche riscontrate.

+ *gestire report e record del Controllo della Qualità*:

  + *stilare report e record relativi alle attività di Controllo della Qualità*:
    - i report e i record vengono generati tramite l'utilizzo coordinato di Jira, Google Sheets e Grafana che porta alla creazione di un cruscotto di qualità. Si rimanda a @tecnologie_controllo per ulteriori dettagli.

  + *mantenere, archiviare e distribuire i report*:
    - il cruscotto di qualità è consultabile in ogni momento da ogni membro del gruppo, che possiede un link per accedervi. L'aggiornamento del cruscotto avviene in automatico e in tempo reale grazie al suo collegamento con Jira.

  + *identificare incidenti e problemi associati alle valutazioni effettuate*:
    - in sede di retrospettiva, il gruppo lavora in modo coordinato per identificare gli incidenti e i problemi, servendosi delle informazioni presentate dal Verificatore tramite il cruscotto di qualità;
    - l'Amministratore si occupa della redazione di un verbale contenente anche gli esiti del processo di Controllo della Qualità.

  + *trattare incidenti e problemi*:

    + in caso di segnalazione di incidenti e problemi deve essere svolto un lavoro collettivo per la loro risoluzione;
    + tutte le criticità devono prevedere risoluzioni e arginamenti già predisposti all'interno del documento #pdp_v\;
    + nel caso tali problemi o incidenti siano di carattere generale, deve essere avvisato collettivamente il gruppo dell'insorgenza di tali problemi o incidenti, al fine di evitare future ricorrenze degli stessi.

==== Tecnologie <tecnologie_controllo>
===== Jira
Jira, essendo l'ITS del gruppo, è la fonte principale di informazioni per il cruscotto di qualità.
===== Google Sheets <google_sheets>
Google Sheets viene utilizzato per rendere meglio manipolabili i dati provenienti da Jira, in modo da poterli analizzare con più facilità e calcolare comodamente metriche come CPI, EAC, EV.
===== Grafana  <grafana>
Grafana è l'applicazione utilizzata per visualizzare i dati raccolti tramite l'implementazione di un cruscotto di qualità. Le informazioni mostrate sono le seguenti:
  - Sprint rimanenti;
  - budget rimanente;
  - rapporto EAC e BAC;
  - andamento CPI;
  - rapporto PPV, PAC e PEV;
  - metriche soddisfatte;
  - ore svolte e rimanenti per ruolo;
  - task svolti;
  - story point per stato;
  - bug aperti.
I dati sono visualizzati sotto forma di grafici, per aiutarne l'analisi e la comprensione, e sono consultabili in ogni momento dal gruppo.

= Processi tecnici

== Processo di Analisi della Missione <processo_missione>

_Tailored conformance on ISO/IEC/IEEE 12207:2017 clause 6.4.1 per ISO/IEC/IEEE 12207:2017 Annex A_

=== Scopo

Il processo di Analisi della Missione definisce i problemi e le opportunità dai quali scaturisce il progetto, caratterizza lo spazio delle soluzioni e determina una classe di soluzione preferita.

=== Strategia di identificazione e analisi della missione

==== Sistemi e servizi abilitanti
Gli strumenti di comunicazione adottati dal gruppo sono descritti nella @comunicazione_interna.

==== Opportunità
Si analizzano i problemi e le opportunità per acquisire una panoramica completa del contesto presentato dal Capitolato.

Si identifica l'ambito del Capitolato attraverso la definizione di:
- difetti e _pain point_ delle soluzioni pre-esistenti, se disponibili;
- soluzioni alternative, con vantaggi e svantaggi rispetto alle soluzioni pre-esistenti, se disponibili;
- contesto tecnologico di applicazione;
- tipologia di utenza attesa;
- destinazione d'uso del prodotto finale.

La sintesi di bisogni e requisiti avviene nel contesto del processo di Definizione di Bisogni e Requisiti degli Stakeholder disponibile nella @processo_bisogni.

==== Classi di soluzione
Si identificano classi di soluzione che possano sfruttare le opportunità e risolvere i problemi individuati.

Le classi di soluzione possono comprendere lo sviluppo o la modifica di sistemi software pre-esistenti.

Le classi di soluzione individuano le potenziali tecnologie che ci si aspetta essere necessarie. Possono includere l'identificazione di specifici sistemi o prodotti software adatti al riutilizzo.

Nel contesto del progetto didattico, il gruppo accetta le classi di soluzione proposte nel Capitolato, eventualmente utilizzandole come base per la formulazione di classi di soluzione alternative.

==== Valutazione delle classi di soluzione
Si valuta ogni classe di soluzione identificata sulla base di:
- fattibilità;
- costi;
- tempi necessari;
- rischi;
- interesse tecnologico e didattico;
- pertinenza.

La valutazione delle classi di soluzione può avvenire tramite:
- studio della documentazione dei sistemi o prodotti software identificati;
- realizzazione di esploratori tecnologici (detti _Proof of Concept_ o PoC);
- consultazione di esperti, quali Proponente e Committente.

Sulla base dei risultati della valutazione, il gruppo individua una classe di soluzione preferita e la presenta al Proponente per la convalida.

==== Analisi dei requisiti
Il documento #adr raccoglie le informazioni previste da questo processo. Il documento deve ricevere approvazione esplicita da parte degli Stakeholder coinvolti.

== Processo di Definizione di Bisogni e Requisiti degli Stakeholder <processo_bisogni>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.2_

=== Scopo

Il processo di Definizione di Bisogni e Requisiti degli Stakeholder definisce i requisiti di un sistema che possa fornire le funzionalità di cui gli utenti e gli stakeholder necessitano.

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
- autorità sullo sviluppo: indica il potere decisionale esercitabile nell'ambito di progetto.

Entrambe le classificazioni si strutturano su tre livelli: basso, medio, alto.

==== Modalità di comunicazione <modalita-comunicazione>
Per ciascuno stakeholder si identificano i canali e la frequenza della comunicazione.

=== Strategia di identificazione, analisi e trasformazione dei bisogni

Il gruppo adotta una strategia iterativa per l'identificazione, l'analisi e la trasformazione dei bisogni in requisiti. L'approccio è finalizzato alla raccolta di feedback e prevede:
- interviste e questionari;
- studio individuale di tecnologie abilitanti e documentazione tecnica;
- acquisizione di conoscenze tramite workshop interni e _brainstorming_;
- osservazione delle criticità delle soluzioni software preesistenti.
Le comunicazioni con gli stakeholder avvengono nelle modalità descritte in @modalita-comunicazione.

Le attività sono supportate, quando utile, da documenti, immagini, dimostratori tecnologici e in generale qualsiasi elemento informativo utile alla comprensione dei bisogni degli stakeholder. Le informazioni sono organizzate in modo da supportare l'identificazione, l'analisi e la trasformazione dei bisogni in requisiti. Il livello di astrazione adottato può differire in base all'interlocutore e al progresso globale conseguito dal processo di Definizione di Bisogni e Requisiti degli Stakeholder.

Lo strumento adottato a supporto di queste operazioni è Miro.

I bisogni espressi da Committente e Fornitore sono raccolti, catalogati, analizzati ed espressi nel documento di #adr prodotto dal gruppo.

Alcuni stakeholder possono avere interessi avversi a quelli del gruppo o in contrasto con gli interessi di altri stakeholder. Qualora gli interessi degli stakeholder siano tra di essi contrastanti, ma non siano avversi al gruppo o al sistema software, il gruppo si adopera per mediare i contrasti. La strategia di mediazione prevede l'identificazione di un sottoinsieme di interessi e bisogni comuni, il confronto con le parti e la definizione di strategie di mediazione calate nella fattispecie.

Gli intenti o i desideri di chi si oppone al gruppo o ad uno o più dei processi di ciclo di vita del sistema software sono affrontati tramite il processo di Gestione dei Rischi disponibile alla @processo_gestione_rischi.

Il negoziato tra le parti potrebbe essere richiesto per mediare posizioni mutualmente incompatibili, o a causa di vincoli o budget insufficiente. Anche la data di consegna prevista incide sulla realizzazione dei requisiti. Sarà sempre necessario consultare gli stakeholder coinvolti per raggiungere un accordo. Le decisioni saranno tracciate e rese disponibili agli stakeholder.

==== Identificazione dei bisogni <identificazione-bisogni>
Include l'elicitazione dei bisogni direttamente dagli stakeholder o dalla documentazione fornita da essi, oppure la raccolta di bisogni impliciti basati sul dominio applicativo ed i contesti tecnologico, legislativo, normativo.

I bisogni degli stakeholder scaturiscono da fonti diverse. Il gruppo si impegna ad esplorare e valutare, al fine di identificare possibili bisogni, almeno questi frangenti:
- obiettivi di alto livello che il sistema dovrebbe conseguire;
- contributi concreti che il sistema dovrebbe apportare a beneficio degli stakeholder;
- scenari operativi, utili per limitare l'ambito e comprendere le aspettative e i bisogni;
- scenari operativi quotidiani, utili per assegnare una priorità ai bisogni;
- tipologie e caratteristiche degli utenti;
- ambiente operativo e contesto d'utilizzo;
- aspettative sulle prestazioni e la disponibilità del sistema;
- pratiche di business;
- norme, leggi o altri vincoli esterni.

==== Definizione delle priorità
Le preferenze espresse dagli stakeholder, coadiuvate dal processo di Gestione delle Decisioni (@processo_gestione_decisioni), guidano la selezione e la prioritizzazione dei requisiti.

==== Casi d'uso
Si definisce un insieme di casi d'uso (anche detti use case, abbreviato in UC) che identifichi tutte le funzionalità attese.
I casi d'uso sono definiti ed utilizzati nel documento di #adr. Essi sono:
- fonte di bisogni e, indirettamente, di requisiti;
- un ausilio per l'esplorazione degli aspetti descritti nella @identificazione-bisogni.

Ogni caso d'uso comprende:
+ Codice identificativo e titolo;
+ Attore principale;
+ Precondizioni;
+ Postcondizioni;
+ Scenario principale;
+ Scenari alternativi (opzionale);
+ User story associata;
+ Generalizzazioni (opzionale);
+ Estensioni (opzionale);
+ Requisiti derivati.

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
Il documento #adr raccoglie le informazioni previste. Il documento deve ricevere approvazione esplicita da parte degli stakeholder coinvolti.


== Processo di Definizione dell'Architettura <processo_definizione_architettura>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.4_

=== Scopo

Il processo di Definizione dell'Architettura ha come scopo la creazione di uno o più modelli architetturali, nei quali si descrivono più proposte di organizzazione del prodotto dal punto di vista della comunicazione tra le sue componenti. Il modello architetturale definitivo viene deciso in collaborazione con il Proponente, in quanto deve soddisfare i suoi bisogni oltre che i requisiti individuati.

Per avere una migliore comprensione del problema da affrontare e trovare così una soluzione soddisfacente, è possibile iterare questo processo insieme ai processi di Analisi della Missione (@processo_missione), di Definizione di Bisogni e Requisiti degli Stakeholder (@processo_bisogni) e di Definizione del Design (@processo_design).

=== Risultati

Come risultato della corretta implementazione del processo di Definizione dell'Architettura:

- vengono definite più opzioni architetturali;
- vengono valutate le opzioni e decisa un'architettura definitiva;
- i bisogni degli stakeholder sono soddisfatti dall'architettura;
- l'architettura individuata viene descritta nel documento #st\.

=== Attività

==== Preparazione e requisiti <preparazione_architettura>

Il Progettista è il ruolo principale all'interno di questo processo. Il numero di persone assegnate a questo ruolo e le attività che esso dovrà svolgere vengono definite in maniera precisa durante la riunione di retrospettiva e la pianificazione dello _Sprint_ che la segue.

È importante che il Progettista abbia una buona conoscenza dei pattern architetturali e dei concetti principali che riguardano la progettazione architetturale. In particolare, di ogni pattern deve conoscere:

- definizione;
- aspetti positivi e negativi.

È essenziale, inoltre, la conoscenza degli obiettivi del prodotto e lo studio del documento #adr_v e delle tecnologie che il gruppo ha selezionato per la sua implementazione.

==== Individuazione dell'architettura

Successivamente all'acquisizione delle conoscenze necessarie, il Progettista può procedere all'individuazione di una o più proposte architetturali per il prodotto. In questa attività, oltre alla conoscenza dei pattern descritta nella @preparazione_architettura, sarà necessario analizzare anche gli aspetti positivi e negativi del pattern nel contesto del prodotto da sviluppare, in modo da individuare le alternative più adatte.

Le proposte architetturali individuate saranno poi illustrate al Proponente durante un meeting, il quale potrà contribuire alla decisione dell'architettura definitiva del prodotto. Il gruppo, una volta individuata l'architettura finale, dovrà descriverne i dettagli all'interno del documento #st (@specifica_tecnica).

È importante che nella scelta architetturale si mantenga un certo focus sulle caratteristiche principali di una buona architettura, riportate nell'elenco che segue:

- *sufficienza*: deve soddisfare i requisiti;
- *comprensibilità*: deve essere capita da tutti gli stakeholder;
- *modularità*: deve essere composta da parti distinte;
- *robustezza*: deve essere capace di gestire errori e condizioni limite;
- *flessibilità*: deve essere facilmente modificabile;
- *riusabilità*: le sue parti possono essere impiegate in altre applicazioni;
- *disponibilità*: la sua manutenzione causa poca indisponibilità totale;
- *sicurezza rispetto a malfunzionamenti*: deve funzionare anche in presenza di guasti;
- *semplicità*: ogni parte contiene solo il necessario e niente di superfluo;
- *incapsulazione*: deve nascondere all'esterno le parti interne dei suoi componenti;
- *coesione*: deve raggruppare le parti che svolgono gli stessi compiti;
- *basso accoppiamento*: parti distinte dipendono poco o niente le une dalle altre.

==== #st <specifica_tecnica>

Insieme all'architettura del prodotto costituisce uno degli output principali del processo. In questo documento viene descritto il prodotto dal punto di vista tecnico, ovvero dal lato tecnologico e architetturale.

Gli argomenti principali trattati nel documento sono due:

+ *tecnologie*: vengono presentate le tecnologie utilizzate dal gruppo all'interno del prodotto. Di ognuna dovranno essere riportati:
  - nome;
  - breve descrizione;
  - numero di versione;
  - link al sito web;
  - linguaggi che utilizza;
  - contesto di utilizzo.
+ *architettura*: vengono presentate:
  + *architettura di sistema*: descrizione dell'architettura del prodotto per componenti, ruoli, connessioni e interazioni;
  + *architettura di deployment*: descrizione dell'architettura e della procedura di deployment.

Nel documento dovranno essere descritti nel dettaglio i design pattern utilizzati nel prodotto e derivati dalle tecnologie, inserendo anche i relativi diagrammi UML, e ogni altro aspetto progettuale che sia rilevante ai fini dell'architettura e del design del prodotto.


== Processo di Definizione del Design <processo_design>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.5_
=== Scopo
Lo scopo del processo di Definizione del Design è di fornire dati e informazioni riguardo il sistema e i suoi elementi  per consentirne l'implementazione coerente con le entità architetturali definite nei modelli
e nelle viste dell'architettura del sistema.
=== Risultati
Come risultato dell'efficace attuazione del processo di Definizione del Design:
- vengono definite le caratteristiche di ogni elemento del sistema;
- vengono allocati i requisiti software negli elementi di sistema;
- vengono scelti i software da utilizzare per la creazione dei diagrammi a supporto del design;
- vengono definite le interfacce fra gli elementi del sistema;
- vengono valutate le alternative di design;
- vengono disegnati i diagrammi a supporto del design;
- viene effettuato il tracciamento fra i requisiti software e gli elementi di sistema.

Le scelte di design relative agli elementi di sistema e i relativi diagrammi sono illustrati nel documento #st\.

=== Attività
==== Pianificazione della Definizione del Design
L'attività consiste nei seguenti task:
  + *definire la strategia della Definizione del Design*:\
    la strategia del processo di Definizione del Design consiste in:
      - decomporre il sistema in parti componibili;
      - organizzare di tali componenti (stabilendo ruoli, responsabilità e interazioni);
      - stabilire le interfacce fra i componenti;
      - stabilire i paradigmi di composizione per collegare i componenti fra loro.
    I risultati di questa progettazione sono illustrati nei rispettivi diagrammi.
    Viene anche valutato, se necessario e possibile, l'uso dei design pattern, illustrati nel testo _Design Patterns: Elements of Reusable Object-Oriented Software (1994)_, per standardizzare e ottimizzare l'implementazione delle interazioni tra le componenti del sistema.
  + *selezionare principi e caratteristiche di design*:\
    i Progettisti devono seguire concetti base fondamentali come l'astrazione, la modularizzazione, l'incapsulamento, la separazione tra interfaccia e implementazione. Inoltre devono rispettare i principi della SOLID programming, per creare software più modulare, scalabile, manutenibile e adattabile ai cambiamenti futuri;
  + *scegliere le tecnologie a supporto della Definizione del Design*:\
    la scelta delle tecnologie deve seguire questa prassi:
      - i Progettisti devono individuare le possibili tecnologie in base alle loro conoscenze pregresse e ad un'esplorazione tecnologica, la discussione fra loro deve avvenire nei canali Discord `#database` e `#mvp`;
      - deve essere eseguito un breve studio di fattibilità per verificare la possibilità di utilizzo delle tecnologie;
      - nei canali Discord `#mvp` e `#database`, i Progettisti devono chiedere un confronto con gli altri membri del gruppo per valutare alternative tecnologiche o confermare le scelte fatte.

==== Progettazione degli elementi del sistema
L'attività consiste nei seguenti task:
  + *definire gli strumenti di design necessari*:\
    - riguardo i software, deve essere utilizzato StarUML per la modellazione di diagrammi E-R e delle classi. Figma deve essere impiegato per la realizzazione di prototipi di interfaccia grafica;
    - riguardo i linguaggi, nei diagrammi di StarUML deve essere utilizzato l'UML.

  + *trasformare le caratteristiche architetturali e di design nella progettazione in elementi del sistema*:\
    - le caratteristiche architetturali e di design sono trasformate in unità architetturali, rappresentate nei relativi diagrammi.
    Le unità architetturali sono unità funzionali (o di responsabilità) ben definite, realizzabili da un singolo Programmatore.
    A una singola unità architetturale possono corrispondere uno o più moduli di codice, la cui corrispondenza unità – modulo è determinata dalle caratteristiche del linguaggio di programmazione utilizzato per la realizzazione.

  + *esaminare le alternative di progettazione e la fattibilità dell'implementazione*:\
    - i Progettisti devono identificare le alternative di design;
    - le alternative di design devono essere messe in confronto fra loro per arrivare ad una soluzione finale ottimale;
    - deve essere preso in considerazione anche il parere degli altri membri del gruppo in fase di retrospettiva.

  + *definire o ridefinire le interfacce fra gli elementi del sistema ed elementi esterni*:\
    - le interfacce devono essere identificate e definite nel processo di Definizione dell'Architettura al livello o all'estensione necessari per l'intento architetturale e la comprensione;
    - queste vengono devono essere raffinate nel processo di Definizione del Design basato sulle caratteristiche di progettazione, interfacce e interazioni degli elementi software con gli altri elementi che lo compongono e con entità esterne;
    - possono essere identificate e definite ulteriori interfacce che non sono state affrontate nella Definizione dell'Architettura.

  + *stabilire gli artefatti di design*:\
    gli artefatti di design prodotti da questo processo sono i diagrammi E-R per la modellazione del database, i diagrammi delle classi per la rappresentazione delle entità e delle loro relazioni nel sistema software, e dei mockup o wireframe per i prototipi dell'interfaccia grafica.

==== Studio e scelta delle tecnologie mirate all'implementazione
L'attività consiste nei seguenti task:
  + *identificazione delle tecnologie*:\
    le tecnologie vengono individuate fra quelle proposte dal Proponente, fra le conoscenze pregresse del gruppo e fra quelle rilevate in un primo periodo di esplorazione;
  + *studio delle tecnologie*:\
    - per ogni tecnologia deve essere realizzato un PoC, di piccola dimensione ed elevata semplicità finalizzato ad effettuare uno studio iniziale di fattibilità e ad una familiarizzazione con le nuove tecnologie. I PoC sono contenuti nel repository omonimo, nel loro relativo branch. Per il loro sviluppo sono impiegati anche i Programmatori;
    - i PoC devono essere integrati in un unico prodotto software, per studiare l'integrazione fra i diversi componenti dello stack tecnologico.
  + *scelta delle tecnologie*:\
    la scelta finale delle tecnologie avviene in seguito a discussioni interne fra i membri del gruppo e esterne con Committente e Proponente, che ne mettono in luce aspetti positivi e negativi relativamente alla dimensione del progetto.
==== Gestione del design
L'attività consiste nei seguenti task:
  + *giustificare le scelte di design*:\
    le scelte di design devono essere giustificate e documentate nel documento #st\. Le giustificazioni possono includere confronti con alternative possibili e analisi delle implicazioni a lungo termine delle decisioni prese. Questo livello di dettaglio aiuta a garantire che il design sia robusto, efficiente e in grado di soddisfare le esigenze del progetto in modo efficace;
  + *stabilire il tracciamento tra gli elementi di design, i requisiti del sistema e le entità architetturali dell'architettura del sistema software*;
  + *determinare lo stato del sistema software e del design degli elementi*:\
    il processo di Misurazione deve essere utilizzato per stabilire misure per la completezza e la qualità del design mentre progredisce. I processi di Verifica e Validazione vengono attivati per verificare e convalidare il design dettagliato e l'implementazione.
    Ciò include la valutazione periodica delle caratteristiche di progettazione nel caso di evoluzione del sistema software e della sua architettura, nonché la previsione dell'eventuale obsolescenza dei componenti e delle tecnologie, la loro sostituzione nel tempo nel ciclo di vita del sistema software e le conseguenze per la definizione del design. Il processo di Gestione dei Rischi viene tipicamente applicato per valutare i rischi nella strategia di design;
  + *fornire gli artefatti e le informazioni di design*:\
    - il processo di Gestione della Configurazione deve essere utilizzato per stabilire e mantenere elementi di configurazione e le linee guida per artefatti come modelli di progettazione;
    - il processo di Gestione delle Informazioni deve controllare gli elementi informativi, come descrizioni di progettazione e specifiche;
    - gli artefatti di design devono essere resi disponibili nel documento #st\.


== Processo di Implementazione <processo_implementazione>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.7_

=== Scopo

Lo scopo del processo di Implementazione è di concretizzare un elemento specifico del sistema. Questo processo traduce i requisiti, le architetture e i design (includendo le interfacce), in azioni che danno vita ad un elemento di sistema in linea con le pratiche della tecnologia implementativa selezionata, facendo uso delle specializzazioni e discipline tecniche appropriate.

Il risultato di questo processo è un elemento del sistema che soddisfa i requisiti specifici e derivati del sistema, nonché le architetture e i design definiti.

=== Risultati

La corretta realizzazione del processo di Implementazione produce i seguenti risultati:

- identificazione dei vincoli implementativi che influenzano i requisiti, l'architettura o il design;
- realizzazione di un elemento di sistema;
- tracciamento dell'implementazione di tale elemento.

=== Attività

==== Progettazione dell'elemento da implementare

È necessario che prima dell'inizio effettivo dello sviluppo di un elemento software, questo sia stato definito dai processi di Definizione dell'Architettura (@processo_definizione_architettura) e del Design (@processo_design).

Questi processi sono fondamentali, poiché al loro completamento si dispone già di una struttura ben definita del sistema, che include le sue componenti principali, le loro interazioni e le funzionalità che devono essere implementate.

Questo approccio fornisce quindi una guida chiara per gli sviluppatori durante l'implementazione, riducendo il rischio di deviazioni o malintesi in quanto trasforma il processo di Implementazione in una traduzione del design in codice.

==== Preparazione per l'implementazione <preparazione_implementazione>

Fondamentale per garantire il livello di qualità richiesto dal #pdq è definire test specifici per l'elemento di sistema che si vuole realizzare secondo il modello di sviluppo _Test Driven Development_. Questo si concretizza nella realizzazione da parte del Progettista di una serie di test di unità precedentemente allo sviluppo vero e proprio dell'elemento di sistema. Questo vale anche per codice riutilizzato o codice esterno che viene adattato per soddisfare i requisiti richiesti.

In caso di modifica è necessario reiterare l'esecuzione dei test sviluppati, al fine di garantire che il software sviluppato e testato in precedenza funzioni ancora come previsto. In caso contrario, si parlerebbe di regressione.

Considerando la complessità degli elementi grafici e delle interazioni utente che non possono essere facilmente o economicamente testati in modo automatico, viene istituita una modalità di testing manuale, che deve essere eseguita prima dallo sviluppatore dell'elemento di sistema (Programmatore) durante l'implementazione, e successivamente dal Verificatore, quando controlla il lavoro presente nella Pull Request relativa.
Questo vale sia per il codice sviluppato in proprio sia per quello riutilizzato o esterno, che viene adattato per soddisfare i requisiti specifici.

Per aiutare il lavoro di verifica da parte del Verificatore, vengono riportate in Pull Request tutte le funzionalità che si ha necessità di controllare manualmente, oltre al riferimento al task interessato su Jira.

Dopo aver sviluppato e testato i singoli moduli attraverso i test di unità, inizia il processo di Integrazione (@processo_integrazione).

==== Implementazione

Decisa una strategia di testing per l'elemento di sistema e scritti i relativi test di unità, il Programmatore può quindi procedere allo sviluppo o all'adeguamento del software.

Per garantire una standardizzazione e una migliore gestione del codice, devono essere adottate le seguenti norme e pratiche di organizzazione:

+ ciascuna categoria di elementi deve essere assegnata a una cartella specifica (@repository-github):

    - tutti i file correlati ad uno specifico pattern devono essere organizzati all'interno di una cartella dedicata esclusivamente a quel pattern;
    - tutti i file riguardanti l'interfaccia utente devono essere raggruppati in una cartella apposita;
    - se all'interno di una cartella sono presenti più file legati ad una stessa classe del modello, devono essere raggruppati in una sottocartella dedicata.

+ ogni componente e ogni classe deve essere implementata in un proprio file. Questa pratica semplifica la gestione e la ricerca dei componenti all'interno del progetto, garantendo una maggiore chiarezza e coerenza nel codice. Può essere fatta un'eccezione a questa norma nel caso in cui vengano adottati design pattern che risultano più manutenibili se le loro classi sono implementate tutte nello stesso file;

+ i nomi di variabili, metodi e funzioni devono essere parlanti, ovvero devono riflettere il loro scopo e la loro funzione all'interno del sistema, così da facilitare la comprensione e manutenzione del codice;

+ regole di codifica:

  - type safety con TypeScript attraverso l'utilizzo di tipi specifici e limitando al massimo l'uso del tipo `any`;
  - notazione camel per nomi di file e variabili;
  - indentazione del codice di tipo Egyptian braces;
  - perseguire principi di leggibilità e manutenibilità.

+ buone pratiche per la codifica:

  - sviluppo di test automatici al fine di verificare il comportamento delle singole unità di codice (@processo_verifica);
  - identificazione e rimozione del codice duplicato per ridurre la complessità e migliorare la manutenibilità. Questo può essere fatto estraendo il codice duplicato in funzioni o classi riutilizzabili.

Prima di sottoporre il software a verifica è necessario assicurarsi che l'elemento di sistema non regredisca le funzionalità tramite l'esecuzione di testing dedicato.

==== Gestione dei risultati dell'implementazione e delle anomalie incontrate

L'elemento implementato deve essere approvato durante il processo di Verifica (@processo_verifica) e integrato nel sistema come descritto nel processo di Integrazione (@processo_integrazione).

== Processo di Integrazione <processo_integrazione>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.8_

=== Scopo

Il processo di Integrazione ha lo scopo di combinare iterativamente un insieme di elementi software al fine di ottenere un prodotto che soddisfi i requisiti, rispettando l'architettura e il design definiti.

Di conseguenza, esso viene attuato in coordinamento con i processi di:
- Definizione di Bisogni e Requisiti degli Stakeholder (@processo_bisogni);
- Definizione dell'Architettura (@processo_definizione_architettura);
- Definizione del Design (@processo_design).

L'integrazione del sistema software avviene automaticamente mediante strumenti che permettano la _Continuous Integration_.

=== Risultati

Come risultato della corretta implementazione del processo di Integrazione:

- i nuovi elementi software implementati sono integrati con la _codebase_ esistente;
- il sistema software è composto dall'integrazione degli elementi software implementati;
- i test atti a garantire il corretto funzionamento del prodotto a seguito dell'integrazione sono eseguiti automaticamente;
- le interfacce tra gli elementi software sono definite, implementate e aggiornate;
- le interfacce tra il sistema software e gli elementi esterni sono definite, implementate e aggiornate;
- gli strumenti di supporto al processo di Integrazione sono individuati, configurati e in funzione;
- i risultati dell'integrazione sono identificati, assieme ad eventuali anomalie;
- i risultati dei test sono registrati e possono essere visualizzati dai membri del gruppo.

=== Attività

==== Definizione della strategia di integrazione

La strategia individuata deve garantire il coordinamento tempestivo delle attività dei processi di implementazione e di integrazione.

La strategia di integrazione definita dal gruppo si basa sull'adozione delle pratiche di _Continuous Integration_ (CI) e _Continuous Deployment_ (CD), al fine di permettere un frequente allineamento degli ambienti di lavoro tra i membri e garantire che la versione più aggiornata del prodotto sia sempre disponibile, funzionante e verificata.

Tale strategia prevede l'esecuzione di test di unità e di integrazione negli ambienti locali di sviluppo e nel repository centrale, tramite GitHub Actions.

La strategia di integrazione prevede il coordinamento con:
- il processo di Verifica (@processo_verifica), per:
  + fornire evidenza obiettiva che il sistema software integrato soddisfi i requisiti;
  + identificare e risolvere le anomalie riscontrate, sia nel software che negli elementi ad esso associati quali requisiti, test, architettura e design.
- il processo di Validazione (@processo_validazione), per confermare che il sistema software integrato soddisfi gli scopi e le funzionalità previste;
- il processo di Controllo della Qualità (@processo_controllo_qualità) per supportare la verifica e la validazione del sistema software integrato, individuare e risolvere i problemi e le inconformità.

===== Identificazione dei criteri di integrazione

L'integrazione degli elementi software deve avvenire in modo incrementale, e deve risultare nella creazione di un sistema software integrato eseguibile senza errori e consistente con l'architettura e il design definiti. Il soddisfacimento dei requisiti funzionali e non funzionali descritti nel documento #adr_v è conseguito incrementalmente come risultato dei passaggi di integrazione.

===== Identificazione dei servizi abilitanti

Il gruppo si dota dei seguenti strumenti e servizi abilitanti per implementare la strategia di integrazione:
- GitHub Actions, per l'automazione delle attività di integrazione e di verifica nel repository GitHub;
- Node.js (npm) e Jest, per l'esecuzione dei test negli ambienti di sviluppo locali;
- Coveralls, per la valutazione della copertura dei test eseguiti;
- Jira, per la registrazione dei risultati dei test e delle anomalie riscontrate.

L'uso degli strumenti e dei servizi abilitanti è regolato nell'ambito del processo di Verifica (@processo_verifica).

==== Attuazione della strategia di integrazione

L'integrazione degli elementi software implementati avviene attuando quanto prescritto dalla strategia di integrazione, utilizzando le procedure e i servizi abilitanti individuati.

L'attuazione successiva della strategia di integrazione prosegue fino a che il sistema software completo risponde a tutte le caratteristiche individuate e descritte nel documento #adr_v.

L'integrazione degli elementi software, individuati e specificati tramite i processi di Definizione dell'Architettura (@processo_definizione_architettura) e di Definizione del Design (@processo_design), avviene elemento per elemento, secondo l'ordine di implementazione stabilito durante la pianificazione delle attività. Qualora un elemento software non fosse ancora disponibile per l'integrazione, la funzionalità può essere temporaneamente simulata tramite l'uso di _mock_ o _stub_. Prima di convalidarne la conformità, il sistema software così integrato viene sottoposto a verifica e validazione per garantire che soddisfi i requisiti e le aspettative degli stakeholder.

A seguito di tali attività, il Programmatore invia i cambiamenti proposti al repository, tramite il meccanismo descritto nella @controllo_release. Il Verificatore può approvare la Pull Request e, tramite la funzione di _merge_, integrare l'elemento software implementato nel sistema software. A supporto di tale operazione, è prevista l'esecuzione di GitHub Actions che provvedono a:
- creare e associare al sistema integrato, tramite la action `tag_semver.yml`, un tag di versione semantica per identificare univocamente la release. Il versionamento avviene in accordo con la @versionamento_software. Lo step di versionamento predefinito è di livello "patch" (es. `1.0.0` #sym.arrow.r `1.0.1`), ma può essere esplicitato dal Programmatore nel messaggio di commit tramite i modificatori:
  - `#patch`, per incrementare il numero di patch (z);
  - `#minor`, per incrementare il numero di minor (y).
- costruire un artefatto sotto forma di immagine Docker, e pubblicarlo sui _container registries_ Docker Hub e GitHub Container Registry tramite la action `build_docker` (`build_docker.yml`);
- calcolare la copertura dei test eseguiti sul sistema integrato con Coveralls, e pubblicarla come report sulla Pull Request tramite la action `test_nodejs.yml`.

==== Gestione dei risultati di integrazione

I risultati delle attività di integrazione includono:
- il sistema software integrato;
- il responso dell'esecuzione delle attività di testing automatico;
- il risultato delle attività di verifica e validazione svolte dal Verificatore;
- l'identificazione e la risoluzione dei problemi di integrazione tra elementi software;
- quando applicabile, l'identificazione e la risoluzione delle anomalie imputabili agli strumenti o alle modalità di integrazione adottate (si rimanda al processo di Controllo della Qualità, @processo_controllo_qualità).

Il sistema software integrato rappresenta una *baseline di prodotto*.

I risultati sono registrati nel repository GitHub e nell'ITS adottato dal gruppo. Quando necessario, i risultati delle attività di integrazione possono essere condivisi con:
- l'Amministratore per la risoluzione di problemi legati agli strumenti abilitanti o per l'adozione di altre misure correttive, in accordo con le parti coinvolte;
- il Proponente e/o il Committente per la convalida del sistema software integrato.

===== Tracciabilità degli elementi del sistema software

La tracciabilità tra gli elementi del sistema software, la Pull Request associata, e i requisiti avviene per mezzo di Jira. I ticket direttamente associabili ad un requisito ne riportano il codice identificativo nell'apposito campo. In questo modo, è possibile risalire a quali elementi del sistema software soddisfino un determinato requisito e, di conseguenza, quale sia lo stato di avanzamento del progetto in termini di requisiti soddisfatti.

Tramite GitHub, è inoltre reso disponibile un registro delle Pull Request approvate (e dunque integrate) o chiuse/rifiutate, liberamente consultabile da tutti i membri del gruppo.

Dopo l'approvazione, a ciascun sistema software risultato dell'integrazione di elementi software implementati sarà associato un numero di versione (come descritto nella @versionamento_software). Questo numero di versione sarà utilizzato per identificare il sistema software e per tracciare le modifiche apportate nel tempo. In accordo con quanto descritto in questa sezione, ad un numero di versione superiore corrisponderà un numero di requisiti soddisfatti superiore.

Ciascuna versione del sistema software integrato, intesa come artefatto eseguibile, dovrà essere conservata e resa disponibile per il download tramite le apposite funzionalità di GitHub.

I risultati del processo di Integrazione vengono visualizzati su GitHub come resoconto delle automazioni eseguite a seguito dell'apertura o chiusura di una Pull Request. Le GitHub Actions devono prevedere la visualizzazione di messaggi che descrivano gli eventuali errori insorti oppure, in loro assenza, la corretta esecuzione dell'integrazione.

== Processo di Verifica <processo_verifica>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.9_

=== Scopo

Il processo di Verifica ha lo scopo di dimostrare, con evidenza obiettiva, che il sistema, o una sua parte, adempie ai requisiti associati definiti nel documento #adr_v, nel rispetto delle metriche di qualità del prodotto definite nel #pdq_v.
Nel caso in cui vengano identificati errori o mancanze, vengono fornite le informazioni necessarie a determinare la risoluzione delle anomalie riscontrate.

Tali operazioni sono possibili mediante test automatici eseguiti, in parte, durante il processo di Integrazione (@processo_integrazione), e test manuali eseguiti dai componenti del gruppo, con l'obiettivo di individuare tempestivamente eventuali problemi.

=== Risultati

Come risultato della corretta applicazione del processo di Verifica, per ogni elemento:
- viene effettuata una verifica manuale da parte di uno o più Verificatori;
- vengono eseguiti i test automatici di unità e di integrazione;
- vengono rilevati eventuali problemi legati al rispetto della correttezza, dei requisiti o dell'architettura, in funzione di quanto definito;
- in caso di errori, vengono riportati i dati che forniscono informazioni per le azioni correttive;
- in caso di assenza di anomalie, viene fornita evidenza che il sistema verificato sia conforme ai requisiti specificati.


=== Attività

==== Esecuzione

===== Verifiche preliminari

La prima attività di verifica avviene durante la preparazione all'implementazione del software (@preparazione_implementazione). In questa attività devono essere sviluppati, dove possibile, i test di unità su cui si baserà l'elemento software da implementare, sia esso un pattern o una classe, seguendo così il principio del _Test Driven Development_. I test qui sviluppati rientrano nei test automatici adottati da #err418, e devono essere inseriti all'interno di una cartella dedicata nel repository WMS3 (@repository-github), denominata `__test__`.

All'interno della cartella `__test__`, dovranno essere implementati anche i test di integrazione, i quali dovranno verificare la corretta interazione tra tutte le parti di sistema. Questo tipo di test dovrà essere implementato, dove necessario, con l'utilizzo di _mock_.

Tutti i test automatici dovranno essere implementati utilizzando il framework di testing Jest, e dovranno essere eseguibili tramite il comando

#align(center, [
  `npm test`

  oppure

  `npm run test`]
)


Come descritto nel processo di Implementazione (@processo_implementazione), talvolta non è possibile implementare test automatici poiché risulterebbe troppo complicato e oneroso. Questo avviene quando il soggetto dell'implementazione è:
- una componente grafica appartenente alla UI o all'ambiente 3D;
- una determinata interazione tra utente e sistema che risulta difficile da automatizzare.

In questi casi il Programmatore dovrà testare manualmente l'elemento di sistema implementato, per verificare che venga rappresentato correttamente, o che le interazioni con l'utente non presentino problemi.

Qualora l'impegno, temporale o economico, per la conduzione dei test manuali si rivelasse eccessivo rispetto agli impegni di progetto, #err418 valuterà l'introduzione di test E2E per la verifica.

===== Verifiche in Pull Request

Tutti i test di unità e di integrazione implementati dovranno essere eseguiti automaticamente dalle GitHub Actions (@automazioni) ogni volta che una Pull Request viene aperta o aggiornata nel suo contenuto. L'automazione designata all'esecuzione dei test dovrà essere codificata nel file `test_nodejs.yml`, situato nel repository WMS3 al percorso `WMS3/.github/workflows/`. Il merging di una Pull Request non potrà avvenire se un test automatico fallisce.


Successivamente all'esecuzione dei test automatici, il Verificatore potrà controllare il contenuto della Pull Request. In particolare dovrà condurre delle verifiche manuali atte ad accertare che:

- il codice scritto rispetti quanto definito nel processo di Implementazione (@processo_implementazione);
- il codice esegua senza problemi;
- l'elemento implementato nella Pull Request sia visualizzato correttamente all'interno del prodotto, e assolva tutte le funzionalità ad esso richieste dai documenti #st_v e #adr_v\.

==== Gestione dei risultati

I risultati ottenuti dai test sono visualizzati su GitHub:

- all'interno della Pull Request, sotto forma di commenti del Verificatore, per i test manuali;
- all'interno della Pull Request, sotto forma di commento, oppure nella sezione relativa alle automazioni eseguite nella Pull Request, per i test automatici.

Se a seguito di tutti i test non emergono anomalie o errori, la Pull Request potrà essere accettata e chiusa dal Verificatore, il quale approverà il merge all'interno del branch `dev`. Al momento della chiusura dovranno essere eseguite altre automazioni riguardanti il versionamento (@versionamento_software).

Nel caso in cui almeno un'attività di verifica faccia emergere problematiche, le modifiche non possono essere integrate nel branch principale. La segnalazione e gestione degli errori dovrà avvenire nel seguente modo:

- *errori nei test automatici*: vengono segnalati dalle GitHub Actions. È possibile visualizzare il log dell'esecuzione dell'automazione nella sezione Actions del repository. Il Programmatore dovrà quindi controllare il log ed effettuare le correzioni necessarie a risolvere l'errore che si è presentato;
- *errori nei test manuali*: vengono segnalati dal Verificatore tramite commenti nella Pull Request. Il Verificatore dovrà inserire dei commenti nei quali dovrà descrivere nel modo più dettagliato possibile gli errori riscontrati e i passaggi per riprodurli, evitando così ambiguità e incomprensioni. Il commento dovrà essere inserito nel file relativo all'elemento o alla funzionalità che presenta errori, e, se possibile, nella riga dove si è individuato l'errore.

Il Programmatore dovrà quindi individuare la causa di questi errori e risolverli nel minor tempo possibile, così da evitare situazioni di stallo nello sviluppo del software.

Programmatore e Verificatore si impegnano a tenere traccia di tutti i bug riscontrati tramite le apposite funzioni fornite dal ITS. Per ciascun bug, si richiede il tracciamento di:

- una breve descrizione del problema;
- una classificazione di urgenza e gravità, su una scala da 1 a 3;
- l'elencazione dei passaggi da svolgere per riprodurre il comportamento, quando applicabile.

La lista dei bug potrà essere fornita al Proponente su sua esplicita richiesta.

== Processo di Transizione <processo_transizione>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.10_

=== Scopo

Il processo di Transizione ha lo scopo di stabilire la capacità del sistema di fornire i servizi specificati dalle richieste del Proponente (descritti in #adr_v ), all'interno di un ambiente operativo.

Coinvolge l'installazione del sistema verificato al fine di consentire l'operatività in ambienti diversi, come quelli di sviluppo, test o rilascio in una diversa infrastruttura.


=== Risultati

I risultati della corretta applicazione del processo di Transizione sono:

- rilascio di una versione del sistema;
- deployment del software su Azure;
- garanzia del funzionamento dei servizi e dell'operatività del sistema;
- identificazione di risultati e anomalie della transizione;
- tracciabilità degli elementi trasferiti;
- redazione del documento #man\;
- supporto e formazione degli utenti all'utilizzo del sistema.

=== Attività

==== Rilascio dell'ultima versione di sistema

Il repository GitHub dedicato a WMS3 è provvisto di un branch principale `dev`, il quale rappresenta la fonte da cui vengono creati i feature branch.
Questi ultimi sono necessari al conseguimento degli obiettivi di un task e oggetto dei merge a seguito delle successive Pull Request.

I rilasci del prodotto devono avvenire sempre dal branch di partenza `dev`, in quanto il codice contenuto in esso garantisce il soddisfacimento dei requisiti di qualità imposti dal gruppo.

Ogni release avvenuta con successo, in conformità con il superamento dei test e le procedure descritte nei processi di Implementazione (@processo_implementazione), Integrazione (@processo_integrazione) e Verifica (@processo_verifica), deve generare una release specifica tracciata e consultabile (@tracciabilità_risultati_release) con relativo numero di versione aggiornato (@versionamento).

Ad ogni modifica del sistema devono essere aggiornati anche i documenti #man e #st, al fine di includere la documentazione relativa alle modifiche apportate.

==== Deployment su Azure

Il gruppo ha definito una GitHub Action chiamata _deploy to VPS_ (i cui job sono descritti nel file `deploy.yml`) la quale effettua il deploy del sistema, aggiornato all'ultima versione rilasciata sul branch `dev`, all'interno della macchina virtuale di Azure.

Questo permette la fruizione del sistema senza la necessità di dover scaricare le ultime modifiche sul proprio dispositivo, e senza dover ricreare le relative immagini Docker.

==== Redazione del documento #man

Al fine di fornire agli utenti di WMS3 una guida documentale atta ad indicare il suo corretto utilizzo, il gruppo deve mettere a disposizione il documento #man.

In esso devono essere riportati:

- guida all'avvio e configurazione dell'ambiente;

- descrizione delle funzionalità offerte dal sistema;

- guida dettagliata all'utilizzo delle funzionalità offerte.


Il #man deve venire redatto seguendo i principi di redazione dei documenti descritti nel paragrafo riguardante il processo di Gestione delle Informazioni (@processo_gestione_informazioni).

==== Tracciabilità risultati <tracciabilità_risultati_release>

I risultati relativi a controlli e test automatici avvenuti in fase di release sono visualizzati su GitHub nella sezione relativa alle automazioni avvenute nella Pull Request dell'elemento in oggetto.

Se da essi non emergono anomalie o errori, la transizione è avvenuta correttamente e viene confermata la conformità degli elementi analizzati.

== Processo di Validazione <processo_validazione>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.4.11_

=== Scopo

Il processo di Validazione si occupa di fornire prove oggettive che il sistema soddisfi i requisiti del Proponente, descritti nel documento #adr_v.

Lo scopo del processo è quindi accertare la capacità del sistema, o di un suo elemento, di soddisfare, in specifiche condizioni operative, l'obiettivo per cui è stato creato.

=== Risultati

Come risultato della corretta implementazione del processo di Validazione si ottiene:
- individuazione di limiti e vincoli che influenzano i requisiti, il design e l'architettura del sistema;
- feedback da parte del Proponente in merito allo stato di avanzamento e qualità del lavoro svolto;
- evidenza che il sistema, o l'elemento di sistema, soddisfi i requisiti dichiarati;
- tracciamento di eventuali anomalie riscontrate.

=== Attività
==== Validazione interna

Dopo aver apportato avanzamenti al software e a seguito dell'attuazione del processo di Verifica (@processo_verifica), devono avvenire delle analisi e test manuali per constatare lo stato di soddisfacimento dei requisiti. I risultati di tali analisi devono essere discussi durante i meeting di retrospettiva in quanto fondamentali per la pianificazione delle future attività.
I test manuali precedentemente menzionati devono avvenire mediante l'utilizzo di Docker Compose, permettendo così l'esecuzione su un ambiente con caratteristiche standard, e devono prevedere l'esecuzione manuale delle funzionalità implementate atte a soddisfare i requisiti definiti.

==== Validazione esterna

Al fine di esaminare lo stato di avanzamento dei lavori, il gruppo deve pianificare dei meeting settimanali con il Proponente, al quale deve venire presentato il sistema in funzione.

Il feedback ricevuto dal Proponente durante questi meeting è essenziale per il proseguimento dei lavori e la loro pianificazione.
Al termine del meeting, il gruppo dovrà effettuare una riunione interna per discutere dei feedback ricevuti e valutare, se necessario, azioni correttive da applicare.

Nel momento in cui il gruppo avrà soddisfatto tutti i requisiti obbligatori definiti nel documento #adr_v e implementato tutte le funzionalità desiderate, dovrà avvenire il meeting esterno di validazione finale del software. Il gruppo presenterà il prodotto sviluppato al Proponente, il quale, a seguito di un'attenta analisi, potrà affermare il totale adempimento dei requisiti obbligatori e delle funzionalità concordate, riconoscendo il prodotto sviluppato come Minimum Viable Product (MVP) atteso dal capitolato.

==== Gestione dei risultati della validazione

Nel caso in cui il software venga riconosciuto come MVP e approvato definitivamente dal Proponente, il lavoro su di esso deve subire una riduzione di priorità o arrestarsi totalmente, dando maggiore importanza all'eventuale documentazione incompleta in vista della revisione PB.
L'adempimento dei requisiti da parte del prodotto sviluppato deve essere tracciato all'interno del documento #st_v.

Contrariamente, nel caso in cui emergano problematiche o mancanze, esse devono essere discusse e affrontate in un meeting interno, al fine di eseguire una mirata pianificazione dei task correttivi.
Questi ultimi vengono registrati su Jira, in modo tale da ottenere maggiore chiarezza riguardo l'organizzazione del gruppo e l'avanzamento dei lavori.
Tali considerazioni e decisioni prese devono essere presenti nel verbale conseguente al relativo meeting interno.


#pagebreak()

= Tracciamento paragrafi ISO/IEC/IEEE 12207:2017 <tracciamento_paragrafi>

La tabella di seguito riportata consente di associare ogni capitolo del documento al rispettivo capitolo dello standard di riferimento. Viene riportato anche il grado di conformità:
- *To outcomes* indica che il gruppo ha dovuto adattare lo standard al progetto, omettendo o reinterpretando sezioni incompatibili con la natura del progetto pur cercando il più possibile di perseguire l'obiettivo di qualità che lo standard impone;
- *Full* indica che il capitolo riporta fedelmente le indicazioni dello standard con poche o nessuna azione di adeguamento.

#figure(
  table(
    columns: 3,
    [*Capitolo Norme*],[*Capitolo Standard*],[*Conformance Level*],
    [@processo_fornitura],[6.1.2 - Supply process],[To outcomes],
    [@processo_ciclo_di_vita],[6.2.1 - Life cycle model management process],[To outcomes],
    [@processo_risorse_umane],[6.2.4 - Human Resource Management process],[To outcomes],
    [@processo_gestione_qualità],[6.2.5 - Quality Management process],[To outcomes],
    [@pianificazione],[6.3.1 - Project Planning process],[To outcomes],
    [@valutazioneControllo],[6.3.2 - Project assessment and control process],[Full],
    [@processo_gestione_decisioni],[6.3.3 - Decision Management process],[Full],
    [@processo_gestione_rischi],[6.3.4 - Risk Management process],[Full],
    [@processo_gestione_configurazione],[6.3.5 - Configuration Management process],[To outcomes],
    [@processo_gestione_informazioni],[6.3.6 - Information Management process],[To outcomes],
    [@processo_misurazione],[6.3.7 - Measurement process],[To outcomes],
    [@processo_controllo_qualità],[6.3.8 - Quality Assurance process],[Full],
    [@processo_missione],[6.4.1 - Business or Mission Analysis process],[Full],
    [@processo_bisogni],[6.4.2 - Stakeholder Needs and Requirements Definition process],[To outcomes],
    [@processo_definizione_architettura],[6.4.4 - Architecture Definition process],[To outcomes],
    [@processo_design],[6.4.5 - Design Definition process],[To outcomes],
    [@processo_implementazione],[6.4.7 - Implementation process],[To outcomes],
    [@processo_integrazione],[6.4.8 - Integration process],[To outcomes],
    [@processo_verifica],[6.4.9 - Verification process],[To outcomes],
    [@processo_transizione],[6.4.10 - Transition process],[To outcomes],
    [@processo_validazione],[6.4.11 - Validation process],[To outcomes],
  ),
  caption: "Tracciamento paragrafi ISO/IEC/IEEE 12207:2017"
)
