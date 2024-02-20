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
Questo documento contiene le regole del _way of working_ che disciplinano le attività di ogni membro del gruppo _Error_418_. Queste regole mirano a garantire coerenza, uniformità ed efficacia nel processo collaborativo, promuovendo un ambiente di lavoro strutturato ed efficiente.
L'approccio adottato per la redazione di questo documento è di natura incrementale. Ciò significa che il testo è soggetto ad aggiornamenti e revisioni continue al fine di integrare progressivamente le nuove norme, le _best practices_ e i cambiamenti che emergono nel corso dello sviluppo del progetto. Questa flessibilità consente al gruppo di adattarsi prontamente alle dinamiche di lavoro e alle esigenze specifiche del contesto, garantendo un documento sempre allineato alle necessità attuali del gruppo.

== Scopo del progetto
Il capitolato C5, denominato _WMS3: Warehouse Management 3D_ e aggiudicato al gruppo, ha come obiettivo la realizzazione di un sistema di gestione di magazzino in tre dimensioni. L'applicazione sviluppata consentirà all'utente di accedere a un ambiente virtuale tridimensionale, dove potrà navigare all'interno di un magazzino e visualizzare gli oggetti presenti nelle scaffalature.
L'utente avrà la possibilità di cercare specifici prodotti all'interno del magazzino, sfruttando la visualizzazione 3D per individuare rapidamente la posizione degli articoli desiderati, potrà modificare l'assetto del magazzino e inviare una notifica verso l'esterno in caso ci sia il bisogno di prelevare un articolo.

== Glossario
#glo_paragrafo

== Riferimenti <riferimenti>

=== Riferimenti a documentazione interna <riferimenti-interni>

- Documento #glo_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/2%20-%20RTB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(13,02,2024)

- Documento #ris_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/2%20-%20RTB/Documentazione%20interna/Analisi%20dei%20Rischi_v" + ris_vo + ".pdf")_
  #lastVisitedOn(13,02,2024)

=== Riferimenti normativi <riferimenti-normativi>

- Capitolato "Warehouse Management 3D" (C5) di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)

- Regolamento di Progetto: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_
  #lastVisitedOn(13,02,2024)

- Standard ISO/IEC/IEEE 12207:2017: \
  _#link("https://www.iso.org/obp/ui/en/#iso:std:iso-iec-ieee:12207:ed-1:v1:en")_
  #lastVisitedOn(13,02,2024)

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


= Processi di accordo

== Processo di fornitura <processo_fornitura>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.1.2_

=== Scopo e descrizione
Il processo di fornitura ha come obiettivo l'offerta di un prodotto o servizio che soddisfi i requisiti concordati con Proponente e Committente. Tra quest'ultimi e il fornitore deve essere stabilito un accordo all'interno del quale vengono definiti i requisiti, le tempistiche e i costi da rispettare. Prima di allora, il fornitore avrà effettuato un'attenta analisi del progetto proposto e dei rischi annessi alla sua realizzazione, con relative linee guida per mitigarli.
=== Rapporti con il Proponente
Il dialogo tra il gruppo _Error_418_ e il Proponente dovrà essere attivo e frequente fino al termine del progetto didattico, in modo che si riescano a raccogliere più feedback possibili riguardo la correttezza del lavoro svolto. Questa comunicazione avverrà in due modalità:
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
In questa sezione viene descritta la documentazione prodotta dal gruppo nel processo di fornitura, la quale sarà resa disponibile al Proponente, _Sanmarco Informatica_, e ai Committenti, ovvero il #vardanega e il #cardin.

==== Valutazione dei capitolati
Documento nel quale il gruppo ha analizzato le diverse proposte di progetto rese disponibili dai vari proponenti. Per ogni capitolato vengono presentati tre paragrafi:
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
In questa sezione sono indicati gli strumenti utilizzati dal gruppo nel processo di fornitura.

- *Zoom*: applicazione per videoconferenze;
- *Google Slides*: servizio cloud offerto da Google, utilizzato dal gruppo per le presentazioni del diario di bordo, ovvero l'attività in cui il gruppo aggiorna il Committente riguardo l'andamento del lavoro;
- *Jira*: Issue Tracking System utilizzato per la pianificazione del lavoro.

= Processi di ciclo di vita

== Processi organizzativi abilitanti

I processi organizzativi abilitanti hanno la funzione di garantire la capacità dell'organizzazione di acquisire e fornire prodotti o servizi attraverso l'avvio, il supporto e il controllo di progetti. \
Questi processi forniscono l'infrastruttura e le risorse necessarie a supportare i progetti e il conseguimento degli obiettivi dell'organizzazione e degli accordi fra parti. Non sono da intendersi come un insieme esaustivo di processi aziendali atti alla gestione strategica dell'organizzazione.

I processi organizzativi abilitanti implementati dal gruppo sono i seguenti:
+ processo di gestione dei modelli di ciclo di vita;
+ processo di gestione dell'infrastruttura.

=== Processo di gestione dei modelli di ciclo di vita<processo_ciclo_di_vita>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.2.1_
==== Scopo

Lo scopo del processo di gestione del modello di ciclo di vita è definire, mantenere e garantire regole, processi, modelli e procedure di ciclo di vita.\
Questo processo fornisce politiche, processi, modelli e procedure del ciclo di vita coerenti con gli obiettivi dell'organizzazione, che sono definiti, adattati, migliorati e mantenuti per supportare le esigenze individuali dei progetti all'interno del contesto dell'organizzazione, e che sono in grado di essere applicati mediante metodi e strumenti efficaci e comprovati.\

Il gruppo adotta il modello PDCA (Plan-Do-Check-Act) per la gestione del ciclo di vita del software. Questo modello prevede quattro fasi:
+ Pianificazione (Plan): definizione degli obiettivi e dei processi necessari per raggiungerli;
+ Esecuzione (Do): attuazione del piano;
+ Verifica (Check): monitoraggio e misurazione dei processi e dei prodotti rispetto agli obiettivi e ai requisiti, e reportistica dei risultati;
+ Attuazione (Act): azioni per migliorare le prestazioni, se necessario, in base ai risultati della verifica.

==== Organizzazione del processo
===== Pianificazione
La pianificazione del processo è compito del Responsabile, il quale al termine dello sprint precedente, in base alle attività svolte e ai risultati ottenuti, pianifica le attività da svolgere nello sprint successivo. \
La pianificazione è un'attività iterativa, che viene svolta all'inizio dello sprint. Il Responsabile, in relazione al progresso svolto, può decidere di modificare la pianificazione iniziale, aggiungendo o rimuovendo attività. \
Questo processo permette di individuare le attività da svolgere, le risorse necessarie e le tempistiche di svolgimento, mediante il sistema di ticketing offerto da Jira.\
Il risultato di questo processo è visibile all'interno del documento #pdp.\
\
===== Esecuzione
Identifica il processo di sviluppo del prodotto, dove quanto pianificato viene concretamente svolto. \
Il processo di esecuzione è composto da due attività principali:
+ sviluppo del prodotto;
+ sviluppo della documentazione.

Durante questo processo, ogni ruolo svolge le attività assegnate seguendo quanto stabilito nella pianificazione. Sarà compito del Responsabile verificare che le attività siano svolte correttamente e nei tempi previsti. Ogni membro avrà la possibilità di segnalare eventuali criticità, avendo a disposizione una board apposita sulla piattaforma Miro.\ Questo permette di avere un resoconto pronto a fine sprint in merito al processo di avanzamento, individuando: \
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
  - permettono di avere una visione rapida di quanto del lavoro pianificato è stato portato a termine: si tratta di una metrica puramente quantitativa, che tiene conto del numero di ticket chiusi e del numero di ticket aperti;

+ board di avanzamento:
  - "Keep doing": attività che hanno dato buoni risultati e che quindi vanno mantenute: questo permette al gruppo di individuare il _modus operandi_ più efficace ed efficiente per svolgere le attività;

  - "Things to change": attività che hanno dato risultati non soddisfacenti e che quindi vanno modificate: si tratta dell'aspetto più delicato da considerare, in quanto permette di individuare le criticità e le inefficienze del processo di sviluppo, e di conseguenza di apportare le modifiche necessarie per migliorare il processo stesso.

Questa analisi individua i miglioramenti da apportare al processo di sviluppo, stabilendo le contromisure necessarie per migliorare il processo stesso.
  \ \
===== Attuazione
L'attuazione è l'ultima fase del processo di gestione del ciclo di vita, e consiste nella messa in pratica delle contromisure stabilite durante la fase di verifica. \
L'obiettivo è sopperire alle mancanze e alle inefficienze del processo di sviluppo, in modo da migliorare la qualità del prodotto e la produttività del gruppo. \
Diventa compito del Responsabile stabilire le attività necessarie per attuare le contromisure, e di conseguenza di pianificare le attività da svolgere nello sprint successivo. \
Il risultato di questo processo è visibile all'interno del documento #pdp.
\
\
==== Ruoli
===== Responsabile
Il Responsabile è la figura chiave che guida il progetto, assumendo il ruolo di referente principale per il gruppo e per gli stakeholder. \

Le responsabilità del Responsabile includono:

+ coordinamento: ha il compito di supervisionare i membri del gruppo, assicurandosi che le attività vengano svolte nel rispetto delle norme identificate in questo documento;

+ pianificazione: stabilisce le attività da svolgere, le relative scadenze e priorità, sancendo l'inizio e la fine di ogni sprint;

+ monitoraggio e gestione dei costi: tiene sotto controllo l'andamento del progetto, stima i costi e gestisce l'analisi dei rischi, garantendo che il progetto rimanga entro il budget previsto;

+ #ndp: si occupa della stesura e dell'aggiornamento delle #ndp, che devono essere rispettate da tutti i membri del gruppo;

+ relazioni esterne: gestisce tutte le interazioni con il Proponente e i Committenti assicurando una comunicazione fluida ed efficace;
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

+ documento di #adr: l'Analista è incaricato di redigere questo documento, che dettaglia i requisiti specifici del progetto.

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
=== Processi di gestione dell'infrastruttura

==== Scopo

Lo scopo del processo di gestione dell'infrastruttura è fornire l'infrastruttura e i servizi a supporto dell'organizzazione per il conseguimento degli obiettivi di progetto nel corso dell'intero ciclo di vita.

Questo processo definisce, fornisce e regola i servizi, gli strumenti e le tecnologie di comunicazione e condivisione delle informazioni a supporto degli scopi dell'organizzazione.

==== Requisiti

L'infrastruttura è costituita dai servizi, dagli strumenti e dalle tecnologie di comunicazione e condivisione delle informazioni adottate a supporto degli scopi dell'organizzazione. L'infrastruttura risponde alle necessità di comunicazione interna ed esterna.

I requisiti dei processi di gestione dell'infrastruttura sono:

+ semplicità di adozione di strumenti e servizi;
+ accesso rapido alle informazioni, anche in mobilità;
+ non ridondanza tra strumenti e servizi adottati.

==== Infrastruttura di comunicazione
I principi della comunicazione che ispirano i processi di gestione dell'infrastruttura sono:

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

Sono compiti dell'amministratore il mantenimento dell'infrastruttura, l'aggiornamento delle norme e dei processi e l'identificazione di nuovi servizi a supporto delle attività dell'organizzazione.

L'organizzazione adotta nuovi servizi, strumenti e tecnologie di comunicazione avendo cura di non introdurre ridondanza. L'organizzazione si dota di un insieme di strumenti e servizi sufficienti a coprire tutti i requisiti di comunicazione.

=== Processo di gestione delle Risorse Umane <processo_risorse_umane>

La natura didattica del progetto riduce le prerogative del processo di gestione delle Risorse umane. Per questa ragione, l'organizzazione dichiara la: \
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

Le sessioni di tutoring sono "a sportello" ed è responsabilità dei singoli membri richiederne l'attivazione. Il responsabile, identificati i temi di maggior interesse, può espressamente richiedere che un ruolo copra le esigenze di tutoring interno tramite le modalità sopra indicate.

===== Acquisire e fornire competenze

I membri dell'organizzazione sono prestabiliti. Qualora le competenze interne all'organizzazione siano deficitarie, è richiesta l'attivazione delle attività descritte in @gestione-risorse-umane-sviluppo.

Non sono previste variazioni della composizione dell'organizzazione, se non in via straordinaria e comunque discussa preventivamente con il Committente.

= Processi di gestione tecnica

== Processo di pianificazione di progetto <pianificazione>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.1_
=== Scopo
Il processo di pianificazione di progetto ha come scopo la produzione e coordinazione di un piano efficace ed applicabile per garantire una corretta gestione del lavoro. La pianificazione viene inserita in un documento denominato #pdp (@PdP).

=== Risultati (#pdp) <PdP>
Il #pdp è il documento principale che viene redatto durante questo processo, e ha il compito di governare la pianificazione e l'avanzamento del progetto. In questo documento vengono determinati i task e gli obiettivi da raggiungere, fornendo anche un'analisi critica del lavoro svolto fino a quel momento accompagnata dai grafici di Gantt e di burndown. Sono presenti cinque sezioni, di cui le prime quattro rientrano nel processo di pianificazione:

+ Rischi e loro mitigazione;
+ Divisione temporale di sviluppo;
+ Preventivo dei costi di realizzazione;
+ Pianificazione del lavoro;
+ Consuntivo del progetto.

La redazione del documento va di pari passo con l'avanzamento del progetto, in modo tale da essere sempre aggiornato alla situazione corrente del lavoro.

=== Attività
Nel processo di pianificazione sono presenti due attività principali:

+ definizione del progetto;
+ pianificazione del progetto e della gestione tecnica.

==== Definizione del progetto
In questa attività il gruppo deve definire tutto ciò che caratterizza il progetto, ovvero i suoi obiettivi e vincoli, sia di carattere funzionale che tecnologico. Durante la lavorazione del progetto verranno prodotti diversi output, che possono essere suddivisi nelle due macro categorie di: documentazione, codice. Entrambi questi prodotti dovranno essere realizzati rispettando determinate regole e processi, ed è quindi necessario che il gruppo definisca in questa attività uno o più cicli di vita da seguire.

==== Pianificazione del progetto e della gestione tecnica
È l'attività principale del processo, nella quale viene definita nel concreto la pianificazione.

===== Suddivisione temporale
Il gruppo ha individuato tre periodi di lavoro principali:

- raccolta e analisi dei requisiti: vengono delineati i requisiti che il prodotto finale dovrà rispettare tramite un continuo rapporto con il Proponente;
- sviluppo della Requirements and Technology Baseline (RTB): si studiano le tecnologie da utilizzare e si applicano le conoscenze acquisite per realizzare un PoC (Proof of Concept), ovvero un prodotto software che permetta di dimostrare la padronanza delle tecnologie selezionate ai fini dello sviluppo del progetto;
- periodo di sviluppo del Minimum Viable Product (MVP): viene progettato e implementato un prodotto software che rispetti almeno i requisiti minimi di accettazione, e che offra tutte le funzionalità richieste.

Ognuno di questi viene suddiviso a sua volta in periodi della durata di una settimana denominati _sprint_. Al termine di ogni _sprint_ viene effettuato un incontro interno di retrospettiva, nel quale si analizza criticamente la settimana appena conclusa, mostrandone aspetti positivi, aspetti da migliorare e fissando obiettivi che verranno poi riportati nell'Issue Tracking System sotto forma di task. Questi andranno a comporre il _backlog_ dello _sprint_ successivo, e il loro progressivo completamento andrà a produrre un _burndown-chart_, utilizzato dal gruppo come strumento che rappresenti in modo oggettivo l'andamento del lavoro.

===== Definizione di ruoli, responsabilità e costi
Al fine di migliorare l'assegnazione del lavoro vengono definiti sei ruoli, ognuno dei quali con precise responsabilità da rispettare. Ogni membro del gruppo dovrà assumere ognuno di questi ruoli all'interno del periodo di lavoro al progetto. L'assegnazione dei ruoli avviene con frequenza bisettimanale. Di seguito viene riportata la descrizione di ogni ruolo con i relativi compiti:

+ *Responsabile*: è presente durante l'intero progetto, in particolare si occupa di:
  - coordinare il gruppo;
  - verificare che il lavoro proceda secondo le tempistiche e i costi stabiliti;
  - rappresentare il gruppo nei rapporti con il committente;
  - gestire la pianificazione di ogni _sprint_.
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
  - traduce in codice eseguibile l'architettura del prodotto finale definita dal progettista durante il periodo di sviluppo del MVP.
+ *Verificatore*: è presente durante l'intero progetto, e si occupa di controllare che il lavoro prodotto dal gruppo rispetti gli standard qualitativi adottati.

Ad ogni ruolo è inoltre associato un costo orario, sulla base del quale il gruppo calcola il preventivo totale del progetto e quello di ogni _sprint_ seguito dal relativo consuntivo. Il costo orario viene calcolato in base alla sua importanza all'interno del progetto, misurata in termini di competenze e disponibilità della risorsa.


== Processo di valutazione e controllo di progetto <valutazioneControllo>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.2_
=== Scopo
Il processo di valutazione e controllo ha lo scopo di determinare lo stato del progetto tramite la verifica dell'allineamento del lavoro con i piani definiti. Tale allineamento viene dimostrato osservando i seguenti parametri:

- tempistiche;
- costi;
- obiettivi raggiunti.

Questo viene fatto all'interno di revisioni periodiche chiamate retrospettive, e viene messo per iscritto all'interno dei verbali di tali riunioni e nei paragrafi di consuntivo del #pdp.

=== Risultati
Come risultato dell'implementazione del processo di valutazione e controllo si elencano i seguenti:
- valutazione dell'adeguatezza di ruoli, responsabilità e risorse;
- esecuzione delle azioni correttive scaturite dalle revisioni di progresso;
- viene avviata, se necessaria, la ripianificazione del progetto;
- viene autorizzata l'azione del progetto di avanzare (o meno) da un traguardo o evento programmato al successivo;
- vengono registrati gli obiettivi raggiunti.

I risultati sono espressi e analizzati nei paragrafi di consuntivo del #pdp.

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

- quantità di story point completati;
- quantità di issue completate.

Entrambe le rappresentazioni pongono nell'asse $x$ del grafico il tempo, indicato in giorni. Questi grafici contengono inoltre una retta rappresentante l'andamento ideale del lavoro, grazie alla quale risulta più semplice verificare l'efficienza del gruppo.

Al termine dell'incontro di retrospettiva viene redatto il paragrafo di consuntivo dello sprint nel #pdp, nel quale, oltre a fare un resoconto dello sprint, si analizza il suo l'aspetto economico: in base ai ruoli impegnati e al monte ore produttivo svolto, si calcola il costo effettivo del periodo concluso, aggiornando conseguentemente il costo preventivato e il documento #pdp. Questo indicatore contribuisce ad avere un resoconto completo del progetto, e permette al gruppo di comprendere meglio come sta lavorando e se sta gestendo correttamente le risorse a sua disposizione.

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
È necessario che alla chiusura dello sprint le attività ancora in fase di svolgimento vengano riportate nello sprint successivo, insieme a tutte quelle attività pianificate ma non ancora iniziate che sono considerate importanti. Tutte le attività che non vengono considerate importanti, ad esempio attività di cui si è rivalutato il grado di priorità, vengono riportate nel backlog. Una situazione di mancato raggiungimento degli obiettivi può essere sinonimo anche da una pianificazione errata e troppo ottimista, ed è quindi necessario che essa sia rivista e migliorata.

====== Miglioramenti e accortezze da adottare
Le soluzioni correttive vengono decise dal gruppo tramite la visualizzazione e l'analisi della board Miro durante la retrospettiva. Nella board infatti, come esposto nella @valutazione, alcuni dei task raccolti rispondono direttamente ai problemi individuati nella parte di Things to change.

===== Ripianificazione
La ripianificazione ha atto quando gli obiettivi cambiano nel corso dello sprint o alcune ipotesi fatte in fase di pianificazione si rivelano sbagliate. La ripianificazione viene gestita tramite Jira, che consente di aggiornare i task attivi, permettendo anche la comunicazione tempestiva dei cambiamenti al gruppo.

===== Azioni di cambiamento dovute a richieste del Committente e/o Proponente
Le azioni di cambiamento dovute a richieste del Committente e/o Proponente sono recepite attraverso i canali di comunicazione con quest'ultimi (Zoom, mail) e vengono registrate nei rispettivi verbali. A queste azioni viene attribuita un'alta priorità per garantire massima soddisfazione nel cliente finale.

===== Autorizzazione ad avanzare alla successiva milestone
L'autorizzazione ad avanzare alla successiva milestone di progetto viene concessa dal Committente e/o Proponente in seguito ai colloqui pianificati su Zoom con quest'ultimi. Il gruppo si riserva di procedere verso la milestone successiva solo una volta ricevuta l'approvazione richiesta, in modo da non portare avanti difetti e problematiche che potrebbero risultare insidiosi da correggere una volta entrati in un periodo avanzato del progetto.

== Processo di gestione delle Decisioni <processo_gestione_decisioni>
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

Il processo di decision making viene prevalentemente svolto nel meeting di retrospettiva, in modo da non contrastare la pianificazione dello sprint in corso ed evitare un eccessivo numero di meeting interni che potrebbero comportare difficoltà organizzative e un rallentamento dell'avanzamento. Alcune decisioni potrebbero richiedere il coinvolgimento di soggetti esterni, come Proponente e Committente, soprattutto nei casi in cui sia richiesta una figura con maggiore esperienza nel campo di riferimento.
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
  - documento soggetto a modifiche: #ndp;
  - ruoli responsabili dell'aggiornamento: Responsabile, Amministratori;
  - strategia di decision-making: collaborativa.

+ *Decisioni tecnologiche*: sono relative allo stack tecnologico da adottare durante lo sviluppo del progetto:
  - documento soggetto a modifiche: #ndp;
  - ruoli responsabili dell'aggiornamento: Responsabile, Progettisti;
  - strategia di decision-making: expertise decision-making.

+ *Decisioni sui requisiti*: sono relative ai requisiti del prodotto software. Possono riguardare aspetti funzionali e non funzionali:
  - documento soggetto a modifiche: #adr;
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
  - documento soggetto a modifiche: #pdq;
  - ruoli responsabili dell'aggiornamento: Responsabile, Verificatori;
  - strategia di decision-making: collaborativa.


== Processo di Gestione dei Rischi <processo_gestione_rischi>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.4_

=== Scopo
Lo scopo del processo di Gestione dei Rischi è identificare, analizzare, trattare e monitorare costantemente i rischi, così da poterli affrontare sistematicamente durante l'intero ciclo di vita del progetto.

=== Risultati
Come risultato dell'implementazione del processo di Gestione dei Rischi:
- vengono identificati e analizzati i rischi;
- vengono identificate e priorizzate le opzioni di trattamento del rischio;
- viene selezionato ed implementato un trattamento appropriato;
- i rischi vengono valutati per verificare cambiamenti di stato e progressi nel trattamento.
I risultati sono raccolti nel documento #ris.

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
  dopo la selezione di un trattamento del rischio, vengono coordinate azioni di gestione per implementare le decisioni prese. Il processo di valutazione e controllo del progetto può essere applicato.

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
- le release dei documenti sono controllate e approvate.

=== Attività
==== Versionamento
===== Generalità
Il versionamento è un processo che permette di tenere traccia delle modifiche effettuate su un prodotto software o documentale. Per ogni modifica viene creata una nuova versione del prodotto, che viene identificata da un numero di versione. Il numero di versione è composto da tre cifre separate da un punto, e segue la convenzione seguente:
#align(center, `X.Y.Z`)
dove:
- X: indica il numero di versione principale, aggiornato al cambiamento della struttura del documento. Riguarda dunque cambiamenti di organizzazione del documento, dei suoi paragrafi e della presentazione delle informazioni, nonché cambiamento dei parametri necessari nel template dei documenti;
- Y: indica il numero di versione secondaria, aggiornato all'aggiunta o alla rimozione di paragrafi;
- Z: indica il numero di versione di revisione e correzione, aggiornato a seguito di cambiamenti minimi o correzioni ortografiche.

L'aggiornamento di una delle cifre del numero di versione azzera le cifre di rilevanza inferiore.
- Questo schema descrive il versionamento dei documenti;
- Un normale numero di versione deve avere la forma `X.Y.Z`, dove `X`, `Y` e `Z` sono interi non negativi;
- Numeri di versione con `X` pari a 0 indicano documenti in lavorazione, da non considerarsi pronti al rilascio;
- Dopo il rilascio, il contenuto della versione non deve essere modificato. Qualsiasi modifica successiva al rilascio deve causare un cambio nel numero di versione.

===== Tracciamento modifiche <tracciamento-modifiche>
Il tracciamento delle modifiche avviene per mezzo di automazioni che permettono di identificare:
- versione del documento modificato;
- data di modifica (gg-mm-aaaa, ddd);
- numero della pull request di riferimento;
- titolo della pull request di riferimento;
- autore della modifica;
- revisore incaricato.

Tali informazioni sono salvate in un file CSV, unico per ogni documento. Questo file, denominato _log.csv_, è salvato nella cartella dedicata al documento a cui si riferisce, e viene generato automaticamente da una GitHub Action invocata all'apertura, riapertura, sincronizzazione e chiusura di una pull request. Maggiori dettagli al paragrafo dedicato (@automazioni).

Ogni documento, nella sezione direttamente sottostante all'indice, mostra in formato tabellare le informazioni relative al tracciamento delle modifiche, leggendo le informazioni dal file _log.csv_.

#figure(table(
    align: left,
    columns: (1fr, 1.7fr, 0.8fr, 5fr, 2.1fr, 2.1fr),
    [*Ver.*],[*Data*],[*PR*],[*Titolo*],[*Redattore*],[*Verificatore*],
    [1.0.0], [11-12-2023,\ Mon], [90], [DOC-123 Redazione paragrafo], [Riccardo \ Carraro], [Mattia \ Todesco]
), caption: [Esempio tracciamento modifiche])

===== Tecnologie adoperate
====== GitHub <repository-github>
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

Al fine di garantire uno svolgimento delle attività in parallelo, la strategia utilizzata dal gruppo durante lo sviluppo è il _featuring branching_. È presente un branch per le release e un branch per lo sviluppo dal quale vengono creati dei branch per ogni nuova funzionalità o modifica da apportare.
Questi ultimi vengono identificati dal codice DOC-XXX, dove XXX è il numero del relativo task su Jira. I branch di feature vengono integrati tramite pull request.

====== GitHub Actions <automazioni>
L'intero processo di versionamento è accompagnato da una serie di automazioni, realizzate tramite GitHub Actions, che sollevano i componenti del gruppo dall'onere manuale di attività come la compilazione dei documenti, l'aggiornamento del registro delle modifiche (file _log.csv_) e la pubblicazione dei documenti dopo la verifica.

*Workflow delle automazioni:*
#figure(image("./imgs/flusso_actions.svg", format: "svg"), caption: [Workflow delle automazioni]);

Alla creazione della pull request si avvia il workflow per la compilazione e la registrazione delle modifiche avvenute. Prima di procedere è necessario inserire informazioni essenziali ai fini di ottenere maggiore chiarezza e tracciabilità nel messaggio di pull request, quali:
- titolo conforme, contenente il nome del task di riferimento su Jira legata alla pull request, nel formato _DOC-XXX titolo_;
- identificativo di almeno un verificatore;
- eventuali note aggiuntive.
Il workflow è composto dai seguenti passaggi:
+ *fetch delle informazioni dei file modificati*: vengono recuperate le informazioni relative ai file modificati nella pull request, quali:
  - nome del file;
  - path del file.
+ *controllo del numero di file modificati*: se il numero di file modificati è maggiore di 1, il workflow termina con un errore;
+ *controllo dell'esistenza del file _log.csv_*: se il file non esiste, viene creato (sinonimo di creazione del documento);
+ *rilascio della review*: il verificatore si occupa di controllare il documento e rilasciare la review, segnando i cambiamenti richiesti;
+ *richiesta di una nuova review per verificare che i cambiamenti apportati siano corretti*;
+ *nel momento in cui la review termina con esito positivo, si procede al recupero della versione corrente del documento*:
  - se non esiste il corrispettivo pdf nel branch main, allora il documento non era mai stato pubblicato, pertanto la sua versione di partenza sarà fissata a 1.0.0;
  - se esiste il corrispettivo pdf nel branch main, essendo la versione contenuta nel nome del file, si procede al recupero della versione corrente del documento, modificando la versione X.Y.Z in base all'analisi del documento mediante uno script python;
+ *aggiornamento del file _log.csv_*: il file di log viene aggiornato con le informazioni relative alla modifica effettuata: questo passaggio, avvenendo solamente a seguito di review positiva, permette di garantire che vengano segnate solamente le modifiche che hanno superato il processo di verifica;
+ *compilazione del documento*: aggiornato il file _log.csv_ e recuperato il numero di versione, il documento è pronto per essere compilato, mostrando numero di versione e registro delle modifiche aggiornati;
+ *pubblicazione del documento*: terminati i workflow precedenti, se si avvia la procedura di merge a seguito del processo di verifica, il documento pdf generato dalla compilazione viene pubblicato nel ramo main della repository;
+ *merge non confermato*: qualora a termine della compilazione del documento non venisse confermato il merge da parte del verificatore, significa che è stato individuato un ulteriore errore o correzione da dover apportare al documento prima della sua pubblicazione sul ramo main del repository. In questa circostanza sarà dunque necessario rilasciare un'ulteriore review. L'esecuzione riprende dal punto 4.


L'azione manuale si riduce solamente al rilascio di review e conferma di merge, mentre tutte le altre attività vengono automatizzate.
All'approvazione della pull request, e alla conseguente chiusura del branch, un'ulteriore automazione integrata su Jira, permette di aggiornare in automatico lo stato del task collegato alla pull request, portandolo allo stato di "Completato".

====== Typst
Il gruppo utilizza Typst come strumento di scrittura e compilazione dei documenti. \
Al fine di dare una struttura comune ai documenti si è creato un file _template.typ_ parametrizzato, sfruttando la possibilità di produrre un file pdf compilando insieme più file Typst. Questo file contiene le impostazioni di base per la creazione di un documento:
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
Al fine di semplificare la procedura di creazione di un documento, è stato condiviso un documento di testo denominato _quickstart.txt_ che contiene la configurazione base per la stesura dei documenti.

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
- selezionare la repository e il branch da cui creare il nuovo branch.

A questo punto, il task si aggiornerà nello stato "In corso" e verrà aperto il relativo branch. Terminato il task ed effettuata la pull request, lo stato del ticket passerà automatica a "In verifica". Superato il processo di verifica, Jira provvederà ad aggiornare lo stato del task in "Completato".

====== Backlog
Ogni task da svolgere è segnato all'interno del backlog di Jira. Durante la pianificazione dello sprint, si definisce lo sprint backlog, il sottoinsieme di attività provenienti dal backlog che si intendono portare a termine entro la conclusione dello sprint.
A differenza dello sprint backlog definito durante la pianificazione, il backlog viene espanso man mano che si riscontrano nuovi task necessari o a seguito di decisioni prese durante le riunioni interne o esterne.

====== Board
Le board di Jira permettono, similmente allo sprint backlog, di avere una visione d'insieme delle attività da svolgere, ma con un approccio più visuale e intuitivo.
I task sono organizzati in quattro colonne, rappresentanti lo stato:
- *da completare*: non ancora avviati, ovvero non esiste il branch dedicato;
- *in corso*: in fase di svolgimento, ovvero branch dedicato al task creato;
- *in verifica*: in fase di review, dopo l'apertura di una pull request;
- *completato*: task concluso, ovvero branch dedicato chiuso a seguito di merge sul ramo principale.

====== Timeline
La timeline di Jira permette di avere una visione delle attività incentrata sulle tempistiche e le relazioni tra i task.
Permette inoltre di mostrare il grafico di Gantt delle attività evidenziando i rapporti di dipendenza tra i task e stabilendo le scadenze necessarie per il loro svolgimento.

====== Grafici
Jira offre la possibilità di produrre grafici e report relativi all'avanzamento e alla tracciabilità dei task. Tali strumenti permettono di avere delle metriche di valutazione dell'andamento del progetto e di individuare eventuali criticità.
Il gruppo utilizza come metrica principale il burndown chart, che permette di avere una visione dell'avanzamento delle attività in base al tempo, basato sugli story point di ogni attività.


==== Controllo delle release
Il controllo delle release viene gestito tramite il meccanismo di pull request di GitHub.
Prima di integrare i nuovi cambiamenti, viene aperta una pull request dall'assegnatario del task. La pull request deve avere un titolo valido (come descritto nel paragrafo dedicato @automazioni) e deve essere designato almeno un reviewer. Di norma il reviewer di base è il Verificatore, che svolge una supervisione sulla correttezza sintattica e semantica dei contenuti.
Nel caso in cui ci sia bisogno di una figura con delle competenze specifiche per quanto riguarda la semantica e il contenuto del materiale da revisionare, il Verificatore può essere affiancato da altri membri del gruppo.
Per ogni richiesta di modifiche da apportare vengono aperte delle conversation, in cui è possibile evidenziare le linee del documento che hanno bisogno di cambiamenti, oltre a stabilire un canale di comunicazione fra assegnatario e Verificatore.
Il processo di verifica del documento è accompagnato dall'esecuzione di GitHub Actions che si occupano di automatizzare l'aggiornamento del file _log.csv_ con i dati relativi alla modifica apportata, e la compilazione e pubblicazione del documento nel ramo main del repository. In questo modo si assicura che ogni documento presente nel ramo principale sia prima stato sottoposto ad un processo di verifica.
Si può procedere alla chiusura della pull request e con l'operazione di merge solo nel caso in cui tutte le conversation siano state risolte e siano stati applicati i cambiamenti richiesti in fase di review.
Solo a seguito del merge della pull request, il task collegato presente in Jira può essere definito concluso e il relativo branch viene chiuso in modo automatico.


== Processo di Gestione delle Informazioni <processo_gestione_informazioni>
_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.6_

=== Scopo
Lo scopo del processo di Gestione delle Informazioni è generare, ottenere, confermare, trasformare, conservare, recuperare e distribuire le informazioni e la relativa documentazione agli stakeholder interessati, garantendone chiarezza, completezza, consistenza, tracciabilità e presentazione.

Le informazioni possono essere tecniche, di progetto, organizzative e di accordo.

=== Informazioni gestite
Le informazioni gestite dal gruppo sono:
- documentazione:
  - #pdp;
  - #ndp;
  - #pdq;
  - #adr;
  - #glo;
  - Verbali.
- codice sorgente:
  - Proof of Concept (PoC);
  - Minimum Viable Product (MVP).

Codice sorgente e documenti sono creati, organizzati, aggiornati, versionati e distribuiti all'interno dei repository del gruppo.

=== Documentazione

==== Struttura dei documenti <struttura-documenti>
Ogni documento segue una struttura standard, stabilita nel template _template.typ_. \
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
  - responsabile del gruppo;
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
Il gruppo ha concordato sulla necessità di tenere traccia dei meeting interni ed esterni svolti, per questo vengono redatti dei verbali che devono essere precisi e completi nel riportare i punti fondamentali degli incontri.\
Per soddisfare i precedenti parametri è stata definita una struttura per aiutare il redattore nella scrittura del documento:
+ *cover page* (@struttura-documenti);
+ paragrafo "*informazioni generali*":
  - luogo: il luogo reale o digitale dove il gruppo insieme ad eventuali partecipanti esterni svolge il meeting;
  - data e ora nel formato (gg-mm-aaaa, hh:mm ~ hh:mm);
  - partecipanti;
  - assenti;
  - partecipanti esterni al gruppo (se presenti).
+ paragrafo "*ordine del giorno*": elenco degli argomenti trattati durante la riunione;
+ paragrafo "*Valutazione del progresso generale*" descrive l'analisi sul lavoro svolto durante lo sprint precedente. Questo paragrafo è così definito:
  - valutazione sulla qualità del lavoro in merito alla velocità di avanzamento, evidenziando eventuali rallentamenti o meriti riscontrati.
  - sottoparagrafi per ogni epic su cui si è lavorato in cui viene riportato una descrizione sul lavoro svolto, se i lavori svolti sono molti e diversi riportarli in forma di elenco puntato.
+ paragrafo "*Analisi di retrospettiva*", suddiviso in:
  - tabella che riporta i valori calcolati dalle metriche presenti nel #pdq riguardo allo sprint, nello specifico riportare le metriche: task completate, SEV, SPV, SAC.
  - sottoparagrafo "*Keep doing*", riporta i meriti riscontrati dal gruppo;
  - sottoparagrafo "*Improvements*", riporta una serie di criticità riscontrate dal gruppo etichettate con un codice identificativo del tipo C_i_ con _i_ numero naturale positivo. Quindi una riportare una tabella che associa ad ogni criticità titolo e codice del metodo di risoluzione contenuto nel #pdp.
+ eventuali altri paragrafi che descrivono eventi di cui si ritiene importante la documentazione.
+ paragrafo "*Pianificazione*", riporta una tabella che riporta tutte le task programmate per il prossimo sprint. Questa tabella è automaticamente generata da un foglio di calcolo elettronico condiviso e disponibile nel Google Drive del gruppo.

=== Stile e convenzioni
Al fine di uniformare e conformare i prodotti del progetto, il gruppo ha stabilito delle convenzioni stilistiche e di scrittura da rispettare durante la stesura dei documenti e del codice.
L'obiettivo è perseguire:
- chiarezza;
- leggibilità;
- manutenibilità.

==== Convenzioni stilistiche globali
Convenzioni stilistiche valide sia per i prodotti documentali che software.

===== Nomi dei documenti <norma_nomi_documenti>
Ogni parola dei titoli dei documenti deve iniziare con la lettera maiuscola, ad eccezione delle preposizioni e degli articoli.\
I verbali avranno come titolo la data del verbale nel formato _yyyy-mm-dd_.
Se si fa riferimento al contenuto di un documento, dopo il rispettivo titolo riportare anche la versione nel formato `\_vX.Y.Z`. \

Esempio: #ndp_v.

===== Formato data
All'interno del documento, le date seguiranno il formato locale _dd/mm/yyyy_, mentre all'interno dei nomi dei file e dei commit di GitHub, il formato utilizzato sarà _yyyy-mm-dd_, dove:
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

=== Distribuzione delle informazioni
Il gruppo condivide il materiale prodotto all'interno di un repository dedicato reperibile al link:\
#align(link("https://github.com/Error-418-SWE/Documenti"), center)
Maggiori dettagli in merito all'organizzazione della repository sono reperibili qui: @repository-github.

== Processo di Misurazione <processo_misurazione>

_Conformant to outcomes to ISO/IEC/IEEE 12207:2017 clause 6.3.7_

=== Scopo

Lo scopo del processo di misurazione è raccogliere, analizzare e riportare dati e informazioni, al fine di dimostrare la qualità di prodotti, servizi e processi.\
Questo processo viene svolto affinché il gruppo sia in grado di prendere le corrette decisioni per gestire al meglio il raggiungimento dei propri obiettivi.\
Le misure devono soddisfare determinate caratteristiche di qualità, ovvero devono essere:
+ verificabili;
+ significative;
+ attuabili;
+ tempestive;
+ economicamente vantaggiose.

Definiamo il concetto di "qualità" come segue: insieme delle caratteristiche di un'entità, che ne determinano la capacità di soddisfare esigenze sia esplicite che implicite.

=== Risultati

A seguito dell'implementazione efficace del processo di misurazione:

- vengono identificate le esigenze informative;
- viene identificato e sviluppato un insieme appropriato di misure basato sulle esigenze informative;
- i dati necessari vengono raccolti, verificati e archiviati;
- i dati vengono analizzati e i risultati interpretati;
- gli elementi informativi forniscono informazioni oggettive per poter prendere decisioni concrete.

I risultati sono contenuti nel documento #pdq_v.

=== Attività

Il gruppo deve implementare le seguenti attività in conformità con le politiche e le procedure applicabili al processo di misurazione definito nel #pdq_v:

+ prepararsi per la misurazione:

    - definire la strategia di misurazione per i processi primari. La strategia scelta si compone di metriche mirate alla valutazione dei processi primari, quali:
        + BAC (Budget at Completion);
        + PV (Planned Value), che si estende in:
          - SPV (Sprint Planned Value);
          - PPV (Project Planned Value);
        + AC (Actual Cost), che si estende in:
          - SAC (Sprint Actual Cost);
          - PAC (Project Actual Cost);
        + EV (Earned Value), che si estende in:
          - SEV (Sprint Earned Value);
          - PEV (Project Earned Value);
        + CPI (Cost Performance Index);
        + EAC (Estimated at Completion).

    - definire la strategia di misurazione per i processi di supporto. La strategia scelta si compone di una serie di parametri e metriche che permettono di valutare la qualità dei processi di supporto:
        - errori ortografici;
        - percentuale metriche soddisfatte.

    - descrivere le caratteristiche del gruppo rilevanti per la misurazione, come obiettivi aziendali e obiettivi tecnici:
        - richieste del Proponente;
        - requisiti individuati.

    - definire procedure di raccolta, analisi, accesso e reportistica dei dati:
        - #pdq: definisce i criteri e le modalità di misurazione e reportistica dei dati misurati.

    - definire criteri per valutare gli elementi informativi e il processo di misurazione:
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
  + il Verificatore deve applicare il processo di misurazione della qualità per verificare che il prodotto o servizio rispetti le metriche precedentemente stabilite;
  + il Verificatore deve esprimere un giudizio e segnalare eventuali problematiche riscontrate.

+ *gestire report e record del Controllo della Qualità*:

 - *l'attività consiste in*:

  + *stilare report e record relativi alle attività di Controllo della Qualità*:
    - i report e i record vengono generati tramite l'utilizzo coordinato di Jira, Google Sheets e Grafana che porta alla creazione di un cruscotto di qualità. Si rimanda a @tecnologie_controllo per ulteriori dettagli.

  + *mantenere, archiviare e distribuire i report*:
    - il cruscotto di qualità è consultabile in ogni momento da ogni membro del gruppo, che possiede un link per accedervi. L'aggiornamento del cruscotto avviene in automatico e in tempo reale grazie al suo collegamento con Jira.

  + *identificare incidenti e problemi associati alle valutazioni effettuate*:
    - in sede di retrospettiva, il gruppo lavora in modo coordinato per identificare gli incidenti e i problemi, servendosi delle informazioni presentate dal Verificatore tramite il cruscotto di qualità;
    - l'Amministratore si occupa della redazione di un verbale contenente anche gli esiti del processo di Controllo della Qualità.

  + *trattare incidenti e problemi*:

    + in caso di segnalazione di incidenti e problemi deve essere svolto un lavoro collettivo per la loro risoluzione;
    + tutte le criticità devono prevedere risoluzioni e arginamenti già predisposti all'interno del documento #pdp_v.
    + nel caso tali problemi o incidenti siano di carattere generale, deve essere avvisato collettivamente il gruppo dell'insorgenza di tali problemi o incidenti, al fine di evitare future ricorrenze degli stessi.

==== Tecnologie <tecnologie_controllo>
===== Jira
Jira, essendo l'ITS del gruppo, è la fonte principale di informazioni per il cruscotto di qualità.
===== Google Sheets
Google Sheets viene utilizzato per rendere meglio manipolabili i dati provenienti da Jira, in modo da poterli analizzare con più facilità e calcolare comodamente metriche come CPI, EAC, EV.
===== Grafana
Grafana è l'applicazione utilizzata per visualizzare i dati raccolti tramite l'implementazione di un cruscotto di qualità. Le informazioni mostrate sono le seguenti:
  - sprint rimanenti;
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

== Processo di analisi della missione <processo_missione>

_Tailored conformance on ISO/IEC/IEEE 12207:2017 clause 6.4.1 per ISO/IEC/IEEE 12207:2017 Annex A_

=== Scopo

Il processo di analisi della missione definisce i problemi e le opportunità dai quali scaturisce il progetto, caratterizza lo spazio delle soluzioni e determina una classe di soluzione preferita.

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

La sintesi di bisogni e requisiti avviene nel contesto del processo di definizione di bisogni e requisiti degli Stakeholder disponibile nella @processo_bisogni.

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

== Processo di definizione di bisogni e requisiti degli stakeholder <processo_bisogni>

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
- studio individuale di tecnologie abilitanti e documentazione tecnica;
- acquisizione di conoscenze tramite workshop interni e _brainstorming_;
- osservazione delle criticità delle soluzioni software preesistenti.
Le comunicazioni con gli stakeholder avvengono nelle modalità descritte in @modalita-comunicazione.

Le attività sono supportate, quando utile, da documenti, immagini, dimostratori tecnologici e in generale qualsiasi elemento informativo utile alla comprensione dei bisogni degli stakeholder. Le informazioni sono organizzate in modo da supportare l'identificazione, l'analisi e la trasformazione dei bisogni in requisiti. Il livello di astrazione adottato può differire in base all'interlocutore e al progresso globale conseguito dal _Processo di definizione di bisogni e requisiti degli stakeholder_.

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
Le preferenze espresse dagli stakeholder, coadiuvate dal processo di gestione delle decisioni (@processo_gestione_decisioni), guidano la selezione e la prioritizzazione dei requisiti.

==== Casi d'uso
Si definisce un insieme di casi d'uso (anche detti use case, abbreviato in UC) che identifichi tutte le funzionalità attese.
I casi d'uso sono definiti ed utilizzati nel documento di #adr. Essi sono:
- fonte di bisogni e, indirettamente, di requisiti;
- un ausilio per l'esplorazione degli aspetti descritti nella @identificazione-bisogni.

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
Il documento #adr raccoglie le informazioni previste. Il documento deve ricevere approvazione esplicita da parte degli stakeholder coinvolti.

#pagebreak()

= Tracciamento paragrafi ISO/IEC/IEEE 12207:2017

La tabella di seguito riportata consente di associare ogni capitolo del documento al rispettivo capitolo dello standard di riferimento. Viene riportato anche il grado di conformità:
- *To outcome* indica che il gruppo ha dovuto adattare lo standard al progetto, omettendo o reinterpretando sezioni incompatibili con la natura del progetto pur cercando il più possibile di perseguire l'obbiettivo di qualità che lo standard impone;
- *Full* indica che il capitolo riporta fedelmente le indicazioni dello standard con poche o nessuna azione di adeguamento.

#figure(
  table(
    columns: 3,
    [*Capitolo Norme*],[*Capitolo Standard*],[*Conformance Level*],
    [@processo_fornitura],[6.1.2 - Supply process],[To outcome],
    [@processo_ciclo_di_vita],[6.2.1 - Life cycle model management process],[To outcome],
    [@processo_risorse_umane],[6.2.4 - Human Resource Management process],[To outcome],
    [@pianificazione],[6.3.1 - Project Planning process],[To outcome],
    [@valutazioneControllo],[6.3.2 - Project assessment and control process],[Full],
    [@processo_gestione_decisioni],[6.3.3 - Decision Management process],[Full],
    [@processo_gestione_rischi],[6.3.4 - Risk Management process],[Full],
    [@processo_gestione_configurazione],[6.3.5 - Configuration Management process],[To outcome],
    [@processo_gestione_informazioni],[6.3.6 - Information Management process],[To outcome],
    [@processo_misurazione],[6.3.7 - Measurement process],[To outcome],
    [@processo_controllo_qualità],[6.3.8 - Quality Assurance process],[Full],
    [@processo_missione],[6.4.1 - Business or Mission Analysis process],[Full],
    [@processo_bisogni],[6.4.2 - Stakeholder Needs and Requirements Definition process],[To outcome],
  ),
  caption: "Tracciamento paragrafi ISO/IEC/IEEE 12207:2017"
)
