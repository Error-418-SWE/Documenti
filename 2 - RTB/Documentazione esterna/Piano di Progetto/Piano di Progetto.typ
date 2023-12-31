#import "/template.typ": *

#show: project.with(
  title:"Piano di Progetto",
  subTitle: "Pianificazione, Analisi e Retrospettive",
  authors: (
    "Carraro Riccardo",
    "Zaccone Rosario",
    "Nardo Silvio",
    "Banzato Alessio"
  ),
  showIndex: true,
  showLog: true,
  isExternalUse: true,
);

= Introduzione
Il documento _Piano di progetto_ ha il compito di governare la pianificazione dell'avanzamento del progetto, determinando task e obiettivi da raggiungere e presentando un'analisi critica del lavoro fino a quel momento svolto. L'intento è rendicontare e valutare criticamente l'operato compiuto per  migliorarlo, ove necessario, e gestire in modo efficace ed efficiente le risorse.

Il documento si articola in 5 sezioni:
- *Rischi e loro mitigazione*: dedicata all'analisi dei rischi che possono insorgere con relativi sistemi di mitigazione;
- *Divisione temporale di sviluppo*: dedicata all'analisi della suddivisione temporale dello sviluppo del progetto;
- *Preventivo dei costi di realizzazione*: dedicata all'analisi preventiva dei costi di realizzazione di progetto;
- *Pianificazione del lavoro*: dedicata alla pianificazione delle attività da svolgere nei periodi di sprint;
- *Consuntivo del progetto*: dedicata all'analisi retrospettiva del lavoro svolto, indicando criticità ed eventuali azioni intraprese a fini migliorativi.

== Glossario
Al fine di rendere quanto più chiaro possibile il contenuto dei documenti, e per evitare qualsiasi forma di ambiguità in merito ai termini utilizzati, il gruppo _Error\_418_ fornisce come risorsa web liberamente consultabile, un _*Glossario*_. Ogni ricorrenza di termini tecnici appartenenti al dominio del progetto sarà denotata dalla lettera _G_ al pedice.

== Riferimenti esterni
=== Norme
- Regolamento di progetto \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_

- Gestione di progetto \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T4.pdf")_

- I processi di ciclo di vita del software \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T2.pdf")_

=== Capitolato
- Capitolato C5: WMS3: Warehouse management 3D \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_

#pagebreak()

= Rischi e loro mitigazione

== Parametri
A ciascun rischio individuato si associano:
- Impatto: può essere lieve, medio, grave. Esprime l'effetto generato dall'evento;
- Probabilità: da 1 a 5. Esprime la probabilità del verificarsi del rischio;
- Conseguenze: effetti collaterali a breve o medio termine che il rischio può comportare.

== Rischi

=== Comunicazione con il proponente
I contatti con il proponente potrebbero subire variazioni nella qualità e nella frequenza a causa di problematiche fuori dal controllo del gruppo. Questa situazione potrebbe causare un rallentamento significativo del lavoro, soprattutto durante l'analisi dei requisiti.

- Impatto: grave;
- Probabilità: 1;
- Conseguenze: lo sviluppo potrebbe allontanarsi dalle linee guida o dalle aspettative del proponente, non rispettando quanto preventivato o pianificato. Tale rischio, comporterebbe dunque la produzione di un software non in linea con le richieste conducendo a perdite di tempo per analisi, progettazione e implementazione aggiuntive;
- Mitigazione:
  - Pianificazione anticipata degli incontri di revisione dell'avanzamento;
  - Uso di strumenti asincroni per facilitare lo scambio di informazioni tra gruppo e proponente;
  - Programmazione di incontri periodici di aggiornamento, anche brevi.

=== Effetto "sottomarino"
Uno o più membri potrebbero, per motivi diversi, cessare la partecipazione attiva alle attività del gruppo. È necessario evitare che la durata di queste assenze impedisca il regolare svolgimento delle attività di progetto.

- Impatto: medio;
- Probabilità: 3;
- Conseguenze: i partecipanti che si dovessero trovare in questa situazione rischierebbero di accentuare eventuali incomprensioni nel proprio lavoro senza la possibilità di confrontarsi con gli altri accorgendosi degli errori troppo tardi;
- Mitigazione:
  - Mantenimento di un dialogo costante sulle problematiche interne al gruppo;
  - Segnalazione responsabile e preventiva di difficoltà o impedimenti da parte dei singoli membri.

=== Rallentamento delle attività
Tra le difficoltà principali durante lo sviluppo del progetto è la congiunzione tra gli impegni individuali e progettuali. Tale rischio può comportare un rallentamento nel completamento di attività e task assegnate comportando un generale ritardo nello sviluppo.

- Impatto: grave;
- Probabilità: 4 (Probabilità aumentata nel periodo della sessione invernale).
- Conseguenze: attività non svolte o completate parzialmente determinerebbero uno slittamento della data di consegna e delle scadenze intermedie.
- Mitigazione:
  - Organizzazione e suddivisione del monte ore con occhio di riguardo a precise date e scadenze;
  - Incontri e comunicazione costante con i membri del gruppo al fine di rendere note eventuali indisponibilità o impegni;
  - Uso di strumenti asincroni al fine di permettere a tutti i membri un'equa divisione del lavoro da svolgere nei momenti a loro più comodi, a patto di rispettare le linee guida delle Norme di Progetto.

=== Adozione delle tecnologie
Le tecnologie individuate o suggerite durante i processi di analisi e progettazione potrebbero risultare complesse da comprendere e/o integrare.
- Impatto: medio;
- Probabilità: 4;
- Conseguenze: rallentamenti non preventivati che possono avere conseguenze a cascata sulle attività dipendenti;
- Mitigazione:
  - Accurata pianificazione e stesura delle Norme di Progetto;
  - Assicurarsi che ad ogni membro del gruppo sia chiaro il funzionamento delle tecnologie e delle norme concordate.

= Divisione temporale di sviluppo
== Introduzione
== Periodi di sviluppo
=== Periodo RTB
- Analisi dei requisiti
- Proof of Concept
- date nostra suddivisione
=== Periodo PB
Ancora da definire
=== Periodo CA
Ancora da definire
= Preventivo dei costi di realizzazione
== Introduzione
Delineati i rischi, le relative contromisure e il calendario di progetto, si è definito, mediante una pianificazione retrospettiva, un preventivo iniziale dei costi di realizzazione del progetto.\
È altresì corretto evidenziare come i membri del gruppo non siano dotati di esperienza sufficiente per fornire un preventivo corretto e preciso sin dagli inizi dello sviluppo: per tale motivo, il prezzo indicato sarà soggetto a modifiche con l'avanzamento del progetto (seppur mai superando il prezzo preventivato in candidatura).
=== Analisi dei ruoli
==== Responsabile
Il Responsabile è un ruolo presente durante l'intero progetto. Il suo compito è quello di gestire il team e di assicurarsi che lo sviluppo proceda secondo le tempistiche predefinite e le aspettative del Committente. Deve inoltre redigere e far rispettare le Norme di Progetto, nonché le linee guida di sviluppo che l'intero team deve rispettare. Essendo il ruolo più costoso, il numero di ore è stato scelto per favorire l'efficienza e non pesare eccessivamente sul costo finale.

==== Amministratore
L'Amministratore è un ruolo presente durante l'intero progetto, in quanto si occupa di predisporre e controllare il corretto utilizzo delle procedure e degli strumenti definiti nelle Norme di Progetto, andando anche a gestire e implementare automatismi, migliorando così l'efficienza del team. Il monte ore scelto è tale, poiché essendo questo un ruolo di controllo, non sono richieste un numero elevato di ore.

==== Analista
L'Analista è presente esclusivamente nelle fasi iniziali del progetto, poiché si occupa della raccolta e dell'elaborazione dei requisiti. Ciò comporta un numero di ore ridotto e una distribuzione delle stesse unicamente nelle prime settimane del progetto.

==== Progettista
Il Progettista ha il compito di delineare e documentare l'architettura del prodotto in modo da:

- soddisfare i requisiti raccolti nelle fasi pregresse;

- aiutare il team di sviluppo con una documentazione chiara ed esaustiva.

Nello stabilire l'architettura deve quindi indicare anche quali saranno le tecnologie da utilizzare per la sua implementazione.
Ritenendolo un ruolo impegnativo dal punto di vista temporale, il numero di ore risulta maggiore rispetto ai ruoli precedenti.

==== Programmatore
Il Programmatore ha il compito di tradurre in codice eseguibile l'architettura prodotta dal progettista. Il ruolo prevede un numero di ore molto elevato poiché riteniamo il lavoro più dispendioso a livello temporale rispetto a quello delle altre figure professionali.

==== Verificatore
Il Verificatore è un ruolo presente durante l'intero progetto, che si occupa di mantenere degli standard qualitativi sul lavoro del team: egli deve verificare la correttezza, esaustività e coerenza di tutti i documenti, e nella fase di codifica sarà colui che si occuperà di controllare la qualità del software prodotto. Proprio per questo il totale delle ore risulta essere il secondo più elevato dopo il Programmatore.

=== Suddivisione delle ore dei ruoli
La ripartizione delle ore tiene conto degli obiettivi disciplinari di sviluppo di competenze trasversali nei vari ruoli presenti all'interno del progetto.

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*],[*Responsabile*],[*Amministratore*],[*Analista*],[*Progettista*],[*Programmatore*],[*Verificatore*],[*Totale*],
    [Alessio Banzato], [13], [10], [10], [14], [30], [18], [95],
    [Antonio Oseliero], [13], [10], [10], [14], [30], [18], [95],
    [Giovanni Gardin], [13], [10], [10], [14], [30], [18], [95],
    [Mattia\ Todesco], [13], [10], [10], [14], [30], [18], [95],
    [Riccardo Carraro], [13], [10], [10], [14], [30], [18], [95],
    [Rosario Zaccone], [13], [10], [10], [14], [30], [18], [95],
    [Silvio\ Nardo], [13], [10], [10], [14], [30], [18], [95],
    [Totale Ore], [91], [70], [70], [98], [210], [126], [665],
    [Costo Orario (€)], [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo Ruolo (€)], [2.730], [1.400], [1.750], [2.450], [3.150], [1.890], [],
  ),
  caption: "Suddivisione delle ore dei ruoli"
)

=== Preventivo calcolato
Il costo totale preventivato è di € 13.370,00.

= Pianificazione del lavoro
== Introduzione
La pianificazione ricopre un ruolo fondamentale nello sviluppo dell'intero progetto. Svolge il compito di stabilire quali obiettivi raggiungere in periodi di tempo determinati, organizzando le risorse in modo da rendere lo sviluppo efficace ed efficiente. Lo scopo principale deve essere pianificare le azioni da intraprendere nel periodo successivo, definendo tempistiche, modalità e obiettivi.
\
== Metodologia di lavoro Scrum
Il team si è imposto una metodologia di lavoro _agile_ mediante l'applicazione del framework Scrum, determinando periodi di lavoro di durata fissa terminanti con un'analisi retrospettiva degli stessi. \
Tale approccio è definibile _adattivo_, in grado dunque di adattarsi ad eventuali modifiche in corso d'opera, in merito soprattutto a cambiamenti di specifiche e requisiti.\
L'intero sviluppo è dunque organizzato in iterazioni di lunghezza fissa, denominati in SCRUM come _sprint_. \
L'analisi retrospettiva e il frequente contatto con il Proponente permettono di indirizzare lo sviluppo verso la realizzazione di un prodotto finale che si attenga quanto più possibile ai requisiti desiderati dall'azienda e alle sue aspettative, e una documentazione dettagliata e precisa che evolve e migliora insieme al prodotto.

=== Eventi dettati dal framework
La corretta applicazione del framework comporta il rispetto di determinati impegni, individuabili nello svolgimento di precisi eventi organizzativi quali:
- *Sprint planning*: evento decisionale da tenersi prima dell'avvio dello sprint successivo. In questo incontro vengono stabiliti gli obiettivi da raggiungere e le task necessarie da compiere entro la fine dello stesso;

- *Daily Scrum meeting*: evento di livellamento ove il team, in un metting della durata molto breve, si aggiorna sullo stato dei lavori e organizza il lavoro del giorno;

- *Sprint review*: al termine dello sprint si compie un'azione di validazione di quanto prodotto, valutando dunque gli obiettivi che sono stati (o meno) raggiunti;

- *Sprint retrospective*: al termine dello sprint si compie un'azione di retrospettiva, analizzando eventuali criticità incontrate e stabilendo i possibili miglioramenti o meccanismi di mitigazione.

=== Organizzazione per sprint
Gli sprint sono periodi di sviluppo di durata fissa entro i quali si cerca di raggiungere obiettivi prefissati. Ciascuno sprint viene stabilito, in termini di scope e obiettivi, in un momento precedente all'avvio dello sprint stesso.\
Error\_418 adotta periodi di sprint di una settimana, ove l'intento è fissare obiettivi concretamente raggiungibili nell'arco di tempo stabilito.\
Al termine di ogni sprint si svolgerà un'analisi retrospettiva con lo scopo di valutare il lavoro svolto e proporre eventuali miglioramenti in caso di criticità riscontrate.\

La pianificazione di uno sprint sarà così composta:
- *Obiettivi prefissati*: gli obiettivi che si intende raggiungere entro il termine dello sprint;

- *Preventivo dei costi*: preventivo dei costi in base alle figure che operano nel periodo di sprint;

- *Diagramma di Gantt*: diagramma che rappresenta l'organizzazione delle attività nel tempo e le dipendenze tra esse.

Essenziale in questa organizzazione è l'analisi retrospettiva a fine sprint, che permette di valutare in modo critico eventuali mancanze, criticità o errori che possono in questo modo venir affrontati per trovare soluzioni che ne mitighino gli effetti in futuro.

La retrospettiva di uno sprint si articolerà in:
- *Obiettivi raggiunti*: obiettivi fissati e concretamente raggiunti al termine dello sprint;

- *Obiettivi mancati*: obiettivi non raggiunti al termine dello sprint;

- *Analisi delle problematiche insorte*: analisi delle criticità riscontrate durante lo sprint, in modo da aver chiari le motivazioni che le hanno causate;

- *Risoluzioni attuate*: azioni compiute in risposta alle problematiche riscontrate durante lo sprint, in modo che in futuro si possa o prevenire del tutto il ripetersi di tali problemi, o in caso insorgessero nuovamente, sapere come mitigarli.

- *Analisi dei costi dello sprint effettivi*: al termine dello sprint sarà possibile verificare se i costi preventivati rispecchino i costi effettivi, in base alle ore svolte per ogni ruolo;

- *Burndown-chart*: strumento metrico che permette di avere una chiara visione dell'andamento dello sprint.

== Primo Sprint dal 06-11-2023 al 13-11-2023

=== Obiettivi prefissati
Gli obiettivi del primo sprint si concentrano sulla correzione e sul miglioramento dei documenti e della repository in seguito alla valutazione esposta dal Committente.\
Gli obiettivi dello sprint 1 sono:
- riconfigurazione della repository;
- revisione preventivo costi con aggiornamento della suddivisione delle ore;
- implementazione di automazioni per la compilazione dei documenti;
- implementazione di automazioni per il versionamento dei documenti;
- stesura delle domande in merito al dominio tecnologico del capitolato;
- contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- contatto con l'azienda Proponente per fissare un primo meeting di analisi.

=== Preventivo costi
Il primo sprint, il gruppo svolge compiti correttivi e incentrati sul miglioramento dei documenti e dei processi. In quest'ottica, vede l'impiego principale delle figure:
- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;

- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti;

- *Verificatore*: al fine di garantire che le modifiche effettuate rispecchino gli standard qualitativi desiderati e implementino effettivamente le mancanze individuate dalla valutazione;

- *Analista*: al fine di redigere le principali domande da porre al Proponente in merito al dominio tecnologico da utilizzare.

In questo primo periodo, l'assegnazione dei ruoli di progettista e di programmatore è ritenuta precoce.

#figure(
  table(
    columns: 6,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Verificatore*],[*Totale*],
    [Banzato Alessio],  [/],  [/],    [/],    [3],    [3],
    [Carraro Riccardo], [/],  [4],    [/],    [/],    [4],
    [Gardin Giovanni],  [/],  [4],    [/],    [/],    [4],
    [Nardo Silvio],     [/],  [/],    [/],    [3],    [3],
    [Oseliero Antonio], [3],  [/],    [/],    [/],    [3],
    [Todesco Mattia],   [/],  [/],    [3],    [/],    [3],
    [Zaccone Rosario],  [/],  [/],    [3],    [/],    [3],
    [Totale ore ruolo], [3],  [8],    [6],    [6],    [23],
    [Costo orario],     [30,00], [20,00], [25,00], [15,00], [],
    [Costo ruolo],      [90,00], [160,00], [150,00], [90,00], [490,00]
  ),
  caption: "Preventivo primo sprint"
)

=== Diagramma Gantt
[da inserire]

== Secondo Sprint dal 12-11-2023 al 20-11-2023

=== Obiettivi prefissati
Gli obiettivi del secondo sprint si concentrano sull'individuazione degli use case del progetto, sul perfezionamento delle automazioni e sulla stesura iniziale delle Norme di Progetto. \
Gli obiettivi dello sprint 2 sono:
- riconfigurazione del repository;
- stesura della sezione _introduzione_ del documento delle Norme di Progetto;
- stesura della sezione _processi di supporto_ del documento delle Norme di Progetto;
- perfezionamento delle automazioni per la compilazione dei documenti;
- perfezionamento delle automazioni per il versionamento dei documenti;
- contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- meeting con l'azienda Proponente per riflettere sull'Analisi dei Requisiti e sulle ulteriori tecnologie da usare;
- inizio dell'individuazione e della stesura degli use case.

=== Preventivo costi
Nel secondo sprint il team svolge compiti correttivi incentrati sul miglioramento dei documenti e compiti orientati all'individuazione e alla stesura degli use case. In quest'ottica, vede l'impiego principale delle figure:
- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;

- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti;

- *Verificatore*: al fine di garantire che le modifiche effettuate rispecchino gli standard qualitativi desiderati e implementino effettivamente le mancanze individuate dalla valutazione;

- *Analista*: al fine di individuare e sviluppare testualmente i principali use case in ottica del documento di Analisi dei Requisiti.

In questo  periodo, l'assegnazione dei ruoli di programmatore e progettista è ritenuta precoce.

#figure(
  table(
    columns: 6,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Verificatore*],[*Totale*],
    [Banzato Alessio],  [/],  [/],    [/],    [3],    [3],
    [Carraro Riccardo], [/],  [4],    [/],    [/],    [4],
    [Gardin Giovanni],  [/],  [4],    [/],    [/],    [4],
    [Nardo Silvio],     [/],  [/],    [3],    [/],    [3],
    [Oseliero Antonio], [3],  [/],    [/],    [/],    [3],
    [Todesco Mattia],   [/],  [/],    [3],    [/],    [3],
    [Zaccone Rosario],  [/],  [/],    [3],    [/],    [3],
    [Totale ore ruolo], [3],  [8],    [9],    [3],    [23],
    [Costo orario],     [30,00], [20,00], [25,00], [15,00], [],
    [Costo ruolo],      [90,00], [160,00], [225,00], [45,00], [520,00]
  ),
  caption: "Preventivo secondo sprint"
)

=== Diagramma Gantt
[da inserire]

== Terzo Sprint dal 20-11-2023 al 27-11-2023
=== Obiettivi prefissati
Gli obiettivi del terzo sprint si concentrano sull'aggiornamento del documento di Norme di Progetto, sul periodo di Analisi dei Requisiti (principalmente concentrata sui requisiti funzionali) e su un primo momento di esplorazione delle nuove tecnologie.\
Gli obiettivi dello sprint 3 sono:
- proseguimento del processo di individuazione e stesura degli use case;
- perfezionamento delle automazioni di versionamento documenti;
- perfezionamento del template usato per i documenti;
- aggiornamento del documento di Norme di Progetto;
- studio iniziale della libreria Three.js;
- meeting con l'azienda Proponente per esporre ipotesi e use case individuati, richiedere chiarimenti ed avanzare opportune richieste;
- contatto con l'azienda Proponente per fissare il prossimo meeting.

=== Preventivo costi
Nel terzo sprint, il gruppo svolge delle attività principalmente focalizzate sull'Analisi dei Requisiti e sull'aggiornamento e perfezionamento dei documenti e delle automazioni. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti, al fine di aggiornare il documento di Piano di Progetto;
- *Verificatore*: al fine di verificare la correttezza delle modifiche ai documenti, al fine di effettuare un controllo sulla validità e formulazione degli use case individuati;
- *Analista*: al fine di individuare e formulare gli use case correlati ai requisiti funzionali;
- *Progettista*: al fine di condurre uno studio iniziale sulla libreria Three.js.

In questo periodo, l'assegnazione del ruolo di programmatore è ritenuta precoce.

#set text(
  size: 10pt
)

#figure(
  table(
    columns: 7,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Verificatore*],[*Totale*],
    [Banzato Alessio],  [3],  [/],    [/],    [/], [/],   [3],
    [Carraro Riccardo], [/],  [/],    [4],    [/], [/],   [4],
    [Gardin Giovanni],  [/],  [/],    [/],    [/], [3],   [3],
    [Nardo Silvio],     [/],  [/],    [/],    [3], [/],   [3],
    [Oseliero Antonio], [/],  [/],    [4],    [/], [/],   [4],
    [Todesco Mattia],   [/],  [3],    [/],    [/], [/],   [3],
    [Zaccone Rosario],  [/],  [3],    [/],    [/], [/],   [3],
    [Totale ore ruolo], [3],  [6],    [8],    [3], [3],   [23],
    [Costo orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [],
    [Costo ruolo], [90,00], [120,00], [200,00], [75,00], [45,00], [530,00]
  ),
  caption: "Preventivo terzo sprint"
)

#set text(
  size: 11pt
)

=== Diagramma Gantt
[da inserire]

== Quarto Sprint dal 27-11-2023 al 04-12-2023

=== Obiettivi prefissati
Gli obiettivi del quarto sprint si concentrano sull'aggiornamento e perfezionamento dei documenti redatti negli scorsi sprint, sulla finalizzazione di una prima versione
dell'Analisi dei Requisiti e sull'esplorazione delle nuove tecnologie. \
Gli obiettivi dello sprint 4 sono:
- effettuare una migliore pianificazione;
- perfezionamento della stesura degli use case individuati finora;
- redazione di una prima versione dell'Analisi dei Requisiti;
- valutazione di un'eventuale data per un primo meeting con il professore Cardin per ottenere un feedback sull'Analisi dei Requisiti;
- proseguimento della redazione e aggiornamento del documento di Norme di Progetto;
- proseguimento periodo di studio di Three.js, in particolare finalizzato a:
 - creazione di alcuni scaffali nell'ambiente tridimensionale;
 - implementazione sistema di drag and drop;
 - parametrizzazione degli elementi presenti nell'applicazione.

=== Preventivo costi
Nel quarto sprint il team svolge compiti correttivi incentrati sul miglioramento dei documenti, Analisi dei Requisiti e studio delle nuove tecnologie. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti, al fine di aggiornare il documento di Piano di Progetto;
- *Analista*: al fine di perfezionare la stesura degli use case individuati e redatte una prima versione di Analisi dei Requisiti;
- *Progettista*: al fine di condurre uno studio esplorativo sulla libreria Three.js;
- *Programmatore*: al fine di esplorare in modo pratico le tecnologie relative ai PoC;
- *Verificatore*: al fine di verificare la correttezza delle modifiche ai documenti e di effettuare un controllo sulla validità degli Use Case individuati nel documento di Analisi dei Requisiti.

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Programmatore*], [*Verificatore*],[*Totale*],
    [Banzato Alessio],  [3],  [/],    [/],    [/], [/], [/],   [3],
    [Carraro Riccardo], [/],  [/],    [3],    [/], [1], [/],   [4],
    [Gardin Giovanni],  [/],  [/],    [/],    [/], [/], [3],   [3],
    [Nardo\ Silvio],     [/],  [/],    [/],    [1], [2], [/],   [3],
    [Oseliero Antonio], [/],  [/],    [4],    [/], [/], [/],   [4],
    [Todesco Mattia],   [/],  [3],    [/],    [/], [/], [/],   [3],
    [Zaccone Rosario],  [/],  [3],    [/],    [/], [/], [/],   [3],
    [Totale\ ore ruolo], [3],  [6],    [7],    [1], [3], [3],   [23],
    [Costo\ orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo\ ruolo],      [90,00], [120,00], [175,00], [25,00], [45,00],[45,00], [500,00]
  ),
  caption: "Preventivo quarto sprint"
)

=== Diagramma Gantt
[da inserire]

== Quinto Sprint dal 04-12-2023 al 11-12-2023

=== Obiettivi prefissati
Gli obiettivi del quinto sprint si concentrano sull'aggiornamento e perfezionamento dei documenti redatti negli scorsi sprint, sulla finalizzazione di una prima versione
dell'Analisi dei Requisiti e sullo sviluppo dei primi PoC. \
Gli obiettivi dello sprint 5 sono:
- perfezionamento del sistema di drag and drop nel PoC;
- creazione degli scaffali nel PoC;
- creazione ambiente docker;
- svolgere meeting con il professor Cardin in merito all'Analisi dei Requisiti;
- perfezionare e aggiornare il documento di Norme di Progetto;
- aggiornamento del documento di Analisi dei Requisiti, introducendo i requisiti non funzionali;
- informarsi sul documento di Piano di Qualifica;
- aggiornare vecchi documenti con il nuovo template;
- scrittura del glossario.

=== Preventivo costi
Nel quinto sprint il team svolge compiti correttivi incentrati sul miglioramento dei documenti, Analisi dei Requisiti e studio delle nuove tecnologie. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira;
- *Analista*: al fine di redarre il documento di Analisi dei Requisiti;
- *Progettista*: al fine di continuare lo studio sulla libreria Three.js;
- *Programmatore*: al fine di sviluppare i PoC relativi allo studio della libreria;
- *Verificatore*: al fine di verificare la correttezza delle modifiche ai documenti e di effettuare un controllo sulla validità e formulazione degli use case individuati e del documento di Analisi dei Requisiti.

#set text(
  size: 10pt
)

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*],[*Programmatore*],[*Verificatore*],[*Totale*],
    [Banzato Alessio],   [/],  [/],    [4],    [/], [/],[/],   [4],
    [Carraro\ Riccardo], [3],  [/],    [/],    [/], [2],[/],   [5],
    [Gardin\ Giovanni],  [/],  [/],    [4],    [/], [/],[/],   [4],
    [Nardo\ Silvio],     [/],  [3],    [/],    [/], [2],[/],   [5],
    [Oseliero\ Antonio], [/],  [/],    [/],    [2], [2],[/],   [4],
    [Todesco\ Mattia],   [/],  [/],    [/],    [/], [/],[3],   [3],
    [Zaccone\ Rosario],  [/],  [/],    [/],    [2], [2],[/],   [4],
    [Totale\ ore ruolo], [3],  [3],    [8],    [4], [8],[3],   [23],
    [Costo orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo ruolo], [90,00], [60,00], [200,00], [100,00], [120,00], [45,00], [615,00],
  ),
  caption: "Preventivo quinto sprint"
)

#set text(
  size: 11pt
)

=== Diagramma Gantt
[da inserire]


== Sesto Sprint dal 11-12-2023 al 18-12-2023

=== Obiettivi prefissati
Gli obbiettivi del sesto sprint si focalizzano sul miglioramento dei PoC e dei diversi documenti. Nel dettaglio:
- avanzare con la redazione del PoC "A" integrando il funzionamento dei bin;
- approfondire e migliorare l'utilizzo di Docker nel PoC corrispondente;
- migliorare le Action di GitHub risolvendo eventuali problemi o aggiungendo funzionalità;
- proseguire con il lavoro sul documento Norme di Progetto;
- redigere introduzione del documento Piano di Qualifica;
- adeguare l'Analisi dei Requisiti in funzione di quanto emerso durante lo scorso meeting con il professor Cardin;
- aggiungere nel file di Analisi dei Requisiti la tabella che correli gli Use Case ai requisiti.


=== Preventivo costi
Nel sesto sprint il team svolge compiti correttivi incentrati sul miglioramento dei documenti Analisi dei Requisiti e Norme di Progetto.
Il team continua a produrre e migliorare PoC e inizia a scrivere il documento Piano di Qualifica.
In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira, redigere i verbali e aggiornare il documento Piano di Progetto;
- *Analista*: al fine di redarre il documento di Analisi dei Requisiti con relativi diagrammi UML;
- *Progettista*: al fine di progettare i PoC;
- *Programmatore*: al fine di sviluppare i PoC;
- *Verificatore*: al fine di verificare la correttezza delle modifiche ai documenti assicurandosi che siano coerenti con le Norme di Progetto.


#figure(
  table(
  columns: 8,
  fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
  [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Programmatore*], [*Verificatore*],[*Totale*],
  [Banzato Alessio],  [/],  [/],    [4],    [/],    [/],   [/], [4],
  [Carraro Riccardo], [3],  [/],    [/],    [/],    [/],   [/], [3],
  [Gardin Giovanni],  [/],  [/],    [4],    [/],    [/],   [/], [4],
  [Nardo\ Silvio],     [/],  [3],    [/],    [/],    [/],   [/], [3],
  [Oseliero Antonio], [/],  [/],    [/],    [1],    [3],   [/], [4],
  [Todesco Mattia],   [/],  [/],    [/],    [/],    [/],   [3], [3],
  [Zaccone Rosario],  [/],  [/],    [/],    [1],    [3],   [/], [4],
  [Totale\ ore ruolo], [3],  [3],    [8],    [2],    [6],   [3], [25],
  [Costo\ orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
  [Costo\ ruolo], [90,00], [60,00], [200,00], [50,00], [90,00], [45,00], [535,00]
  ),
  caption: "Preventivo sesto sprint"
)

=== Diagramma Gantt
[da inserire]


== Settimo Sprint dal 18-12-2023 al 25-12-2023

=== Obiettivi prefissati
Gli obiettivi del settimo sprint si focalizzano sul completamento del PoC, terminare l'analisi dei requisiti e in generale sull'avanzamento dei documenti e miglioramento delle automazioni. Nel dettaglio gli obiettivi posti sono:
- creazione di un PoC per il front-end e realizzazione di un PoC definitivo comprendente tutto il lavoro svolto fin'ora
- espansione del Piano di Qualifica con l'individuazione delle metriche da utilizzare;
- espansione delle Norme di Progetto;
- completamento del documento Analisi dei Requisiti con:
  - implementazione del tracciamento requisito-fonte;
  - revisione generale del documento per verificare la presenza di tutti gli use case e requisiti necessari.
- miglioramento delle GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- implementazione dell'automazione che evidenzia i termini presenti nel glossario all'interno dei documenti.

=== Preventivo costi
Nel settimo sprint i compiti del team sono incentrati sulla realizzazione del PoC finale e sul proseguimento e miglioramento di tutti i documenti necessari alla Requirements and Technology Baseline. Di conseguenza saranno essenziali le figure di:
- *Responsabile*: al fine di coordinare le attività e proseguire la redazione delle Norme di Progetto;
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento Piano di Progetto;
  - gestire GitHub e Jira;
  - migliorare le GitHub Actions risolvendo gli errori legati al versionamento dei file e all'aggiornamento dei changelog.
- *Analista*: al fine di migliorare il documento Analisi dei Requisiti e aggiungere il tracciamento requisito-fonte;
- *Progettista*: al fine di studiare e confrontare le tecnologie per il front-end individuate;
- *Programmatore*: al fine di realizzare un PoC per il front-end e un PoC finale;
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le Norme di Progetto;
  - individuare le metriche da inserire nel Piano di Qualifica.

#set text(
  size: 10pt
)

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Programmatore*], [*Verificatore*],[*Totale*],
    [Banzato Alessio],  [/],  [4],    [/],    [/],    [/],   [/], [4],
    [Carraro\ Riccardo], [/],  [/],    [/],    [/],    [3],   [/], [3],
    [Gardin\ Giovanni],  [/],  [/],    [/],    [3],    [/],   [/], [3],
    [Nardo\ Silvio],     [3],  [/],    [/],    [/],    [/],   [/], [3],
    [Oseliero\ Antonio], [/],  [/],    [/],    [/],    [2],   [2], [4],
    [Todesco Mattia],   [/],  [/],    [/],    [3],    [/],   [/], [3],
    [Zaccone\ Rosario],  [/],  [/],    [3],    [/],    [/],   [/], [3],
    [Totale\ ore ruolo], [3],  [4],    [3],    [6],    [5],   [2], [23],
    [Costo orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo ruolo],      [90,00], [80,00], [75,00], [150,00], [75,00], [30,00], [500,00]
  ),
  caption: "Preventivo settimo sprint"
)

#set text(
  size: 11pt
)

=== Diagramma Gantt
[da inserire]


== Ottavo Sprint dal 25-12-2023 al 01-01-2024

=== Obiettivi prefissati <obiettivi8>
Gli obiettivi dell'ottavo sprint si incentrano sul completamento delle attività rimaste sospese nel settimo sprint, e sull'avanzamento del documento Norme di Progetto, oltre che sul miglioramento di alcuni aspetti di attività già concluse. In particolare gli obiettivi prefissati per questo sprint sono:

- miglioramento del Glossario:
  - rendere _case insensitive_ l'individuazione dei termini;
  - implementare la gestione di plurali e acronimi.
- proseguimento del documento Analisi dei Requisiti con:
  - implementazione tracciamento requisito-fonte;
  - miglioramento della resa grafica dei diagrammi UML tramite la loro conversione in SVG.
- proseguimento del documento Norme di Progetto, recuperando i capitoli non scritti nello sprint precedente e espandendone altri;
- proseguimento del PoC finale;
- miglioramento delle GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- studio e confronto delle tecnologie riguardanti le API (Next.js e Express);
- realizzazione di un sito web per la documentazione;
- realizzazione di una dashboard per monitorare le metriche definite nel Piano di Qualifica.

=== Preventivo costi
Gli obiettivi dell'ottavo sprint riguardano tutti gli aspetti del progetto, di conseguenza saranno necessari tutti i ruoli presenti nel team:
- *Responsabile*: al fine di coordinare le attività e proseguire la redazione delle Norme di Progetto;
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento Piano di Progetto;
  - gestire GitHub e Jira;
  - migliorare le GitHub Actions individuando e rimuovendo bug;
  - migliorare il Glossario come indicato nel primo punto della @obiettivi8.
- *Analista*: al fine di:
  - aggiungere il tracciamento requisito-fonte nel documento Analisi dei Requisiti;
  - convertire i diagrammi UML in SVG.
- *Progettista*: al fine di studiare e confrontare le tecnologie per l'implementazione delle API;
- *Programmatore*: al fine di proseguire con l'implementazione del PoC finale;
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le Norme di Progetto;
  - realizzare una dashboard per il monitoraggio delle metriche.

#set text(
  size: 10pt
)

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Programmatore*], [*Verificatore*],[*Totale*],
    [Banzato Alessio],   [/],  [3],    [/],    [/],    [/],   [/], [3],
    [Carraro\ Riccardo], [/],  [/],    [/],    [/],    [3],   [/], [3],
    [Gardin\ Giovanni],  [/],  [/],    [/],    [3],    [/],   [/], [3],
    [Nardo\ Silvio],     [4],  [/],    [/],    [/],    [/],   [/], [4],
    [Oseliero\ Antonio], [/],  [/],    [/],    [/],    [/],   [4], [4],
    [Todesco Mattia],    [/],  [/],    [/],    [3],    [/],   [/], [3],
    [Zaccone\ Rosario],  [/],  [/],    [3],    [/],    [/],   [/], [3],
    [Totale\ ore ruolo], [4],  [3],    [3],    [6],    [3],   [4], [23],
    [Costo orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo ruolo],      [120,00], [60,00], [75,00], [150,00], [45,00], [60,00], [510,00]
  ),
  caption: "Preventivo ottavo sprint"
)

#set text(
  size: 11pt
)

=== Diagramma Gantt
[da inserire]



= Consuntivo del progetto

== Introduzione
Il consuntivo di ogni sprint permette di avere una valutazione critica dell'avanzamento dello sviluppo, valutando in modo oggettivo i punti positivi e negativi dello sprint terminato. \
Questa fase di retrospettiva è essenziale al fine di individuare possibili miglioramenti e di analizzare se la pianificazione ideata all'inizio dello sprint abbia trovato concretezza. \

== Primo Sprint dal 06-11-2023 al 13-11-2023

=== Obiettivi raggiunti
- Revisione preventivo costi con aggiornamento della suddivisione delle ore, con conseguente riduzione del costo totale;
- Implementazione di automazioni per la compilazione dei documenti;
- Stesura delle domande in merito al dominio tecnologico del capitolato;
=== Obiettivi mancati
- Riconfigurazione della repository;
- Implementazione di automazioni per il versionamento dei documenti;
- Contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- Contatto con l'azienda Proponente per fissare un primo meeting di analisi.
=== Analisi problematiche insorte
A causa di una sottostima del carico di lavoro per l'implementazione delle automazioni tramite GitHub Action, alcuni obiettivi riguardanti la repository sono stati mancati, creando un effetto a catena che ha temporaneamente bloccato il caricamento di documenti nella repository.\
Un altro problema riguarda la comunicazione con l'azienda Proponente: la mail inviata sfortunatamente non ha ricevuto riscontro in tempo, impedendo di procedere ulteriormente con l'analisi dei requisiti e/o la programmazione di un meeting con l'azienda.\
=== Risoluzioni attuate
Le automazioni riguardanti il versionamento verranno concluse nello sprint successivo.\
La problematica in merito al contatto con l'azienda vedrà l'intraprendersi di un'azione di sollecito con una seconda mail e successivamente la richiesta di stabilire un nuovo canale di comunicazione.

=== Analisi costi di sprint effettivi

#figure(
  table(
    columns: 6,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Verificatore*],[*Totale*],
    [Banzato Alessio],  [/],    [/],        [/],        [2(-1)],    [2(-1)],
    [Carraro Riccardo], [/],    [6(+2)],    [/],        [/],        [6(+2)],
    [Gardin Giovanni],  [/],    [6(+2)],    [/],        [/],        [6(+2)],
    [Nardo Silvio],     [/],    [/],        [/],        [2(-1)],    [2(-1)],
    [Oseliero Antonio], [2(-1)],[/],        [/],        [/],        [2(-1)],
    [Todesco Mattia],   [/],    [/],        [2(-1)],    [/],        [2(-1)],
    [Zaccone Rosario],  [/],    [/],        [2(-1)],    [/],        [2(-1)],
    [Totale ore ruolo], [2(-1)],    [12(+4)],        [4(-2)],    [4(-2)],    [22(-5)],
    [Costo orario],     [30,00], [20,00], [25,00], [15,00], [],
    [Costo ruolo],      [60,00], [240,00], [100,00], [60,00], [460,00(-30)]
  ),
  caption: "Consuntivo primo sprint"
)

A causa dei rallentamenti incontrati, alcuni ruoli hanno visto un monte ore effettivo inferiore a quanto preventivato:
- Amministratore: il blocco temporaneo della repository e la mancata risposta dell'azienda non hanno permesso la produzione di documenti, limitando così il lavoro del responsabile;

- Analista: la mancata risposta da parte dell'azienda ha impedito agli analisti di iniziare l'analisi dei requisiti, limitando dunque il lavoro alla stesura di domande in merito al dominio tecnologico;

- Verificatore: il mancato avanzamento ha prodotto documentazione ridotta rispetto a quanto preventivato, pertanto il Verificatore ha svolto un numero inferiore di ore.

Il ruolo dell'Amministratore invece, incaricato di gestire il reparto tecnologico implementando gli automatismi necessari, a causa di difficoltà incontrate nell'implementazione (errori, testing, verifica), ha visto un aumento delle ore rispetto a quanto preventivato.
=== Burndown-chart
[da inserire]


== Secondo sprint dal 06-11-2023 al 13-11-2023
=== Obiettivi raggiunti
- riconfigurazione del repository;
- stesura della sezione _introduzione_ del documento delle Norme di Progetto;
- stesura della sezione _processi di supporto_ del documento delle Norme di Progetto;
- perfezionamento delle automazioni per la compilazione dei documenti;
- perfezionamento delle automazioni per il versionamento dei documenti;
- contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- meeting con l'azienda Proponente per riflettere sull'Analisi dei Requisiti e sulle ulteriori tecnologie da usare;
- inizio dell'individuazione e della stesura degli use case.
=== Obiettivi mancati
Gli obiettivi sono stati tutti raggiunti, considerando anche che molti erano obiettivi mancati dello sprint precedente.
=== Analisi problematiche insorte
- Il team ha notato la mancanza di una struttura comune nei verbali, che porta a documenti senza una precisa convenzione e rallentamenti in fase di redazione;
- Sono emerse difficoltà nelle modalità di utilizzo del repository comune, nonostante sia stato dedicato del tempo per la formazione;
- Scarsa reattività in fase di review.
=== Risoluzioni attuate
- Per risolvere la problematica di una mancanza di struttura nei verbali, si sono fissate delle convenzioni da seguire nel documento di Norme di Progetto;
- Per formare meglio il team sulle modalità di utilizzo del repository, è stato dedicato tempo in più per fornire tutorial video e testuali in supporto del team;
- Per ovviare alla scarsa reattività in fase di review, il team prende la responsabilità di visionare spesso la casella mail personale per capire quando c'è bisogno di una review o di risolvere una conversation GitHub, oltre a sollecitare i Verificatori via i canali di comunicazione interni del team in caso di mancate revisioni.

=== Analisi costi di sprint effettivi
#figure(
  table(
  columns: 6,
  fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
  [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Verificatore*],[*Totale*],
  [Banzato Alessio],  [/],  [/],    [/],    [2(-1)],    [2(-1)],
  [Carraro Riccardo], [/],  [6(+2)],    [/],    [/],    [6(+2)],
  [Gardin Giovanni],  [/],  [6(+2)],    [/],    [/],    [6(+2)],
  [Nardo Silvio],     [/],  [/],    [3],    [/],    [3],
  [Oseliero Antonio], [3],  [/],    [/],    [/],    [3],
  [Todesco Mattia],   [/],  [/],    [3],    [/],    [3],
  [Zaccone Rosario],  [/],  [/],    [3],    [/],    [3],
  [Totale ore ruolo], [3],  [12],    [9],    [2],    [26],
  [Costo orario],     [30,00], [20,00], [25,00], [15,00], [],
  [Costo ruolo],      [90,00], [240,00], [225,00], [30,00], [585,00]
  ),
  caption: "Consuntivo secondo sprint"
)

A causa delle problematiche incontrate, alcuni ruoli hanno visto un monte ore effettivo diverso a quanto preventivato:
- Amministratore: la scarsa comprensione delle modalità di utilizzo del repository da parte dei membri del team ha portato gli Amministratori a dedicare delle ore in più mirate al perfezionamento della formazione dei membri del gruppo;

- Verificatore: la scarsa reattività in fase di review ha portato un impegno inferiore alle attività di revisione.

=== Burndown-chart
[da inserire]

== Terzo Sprint dal 27-11-2023 al 04-12-2023

=== Obiettivi raggiunti
- proseguimento del processo di individuazione e stesura degli use case;
- perfezionamento delle automazioni di versionamento documenti;
- perfezionamento del template usato per i documenti;
- aggiornamento parziale del documento di Norme di Progetto;
- studio iniziale della libreria Three.js;
- meeting con l'azienda Proponente per esporre ipotesi e use case individuati, richiedere chiarimenti ed avanzare opportune richieste;
- contatto con l'azienda Proponente per fissare il prossimo meeting.

=== Obiettivi mancati
- aggiornamento completo del documento di Norme di Progetto con l'inserimento dei grafici di Gantt e di burndown.

=== Analisi problematiche insorte

Nonostante la realizzazione soddisfacente della maggior parte degli obiettivi concordati, sono emerse alcune criticità durante l'implementazione del progetto:

- si è riscontrata una pianificazione non ottimale e superficiale, attribuibile alla mancanza di un dettagliato processo di pianificazione durante la riunione precedente l'avvio dello sprint;
- problemi sono sorti a causa della mancata definizione di standard per la creazione dei grafici di Gantt e burndown, comportando una stesura parziale dei paragrafi nel documento del Piano di Progetto;
- la durata dei meeting ha superato le aspettative a causa di alcune inefficienze temporali;
- il team ha rilevato la mancanza di standard per designare le persone responsabili della redazione dei verbali durante lo sprint.

=== Risoluzioni attuate
Le risoluzioni attuate per risolvere i problemi citati in precedenza si concentrano su un'organizzazione e un'attenzione maggiore nella fase di pianificazione, oltre alla definizione di standard relativi ai grafici da inserire nei documenti e relativi allo svolgimento dei meeting e redazione dei rispettivi verbali. In particolare:

- è stata prestata una maggiore attenzione nella pianificazione del nuovo sprint, introducendo nella board retrospettiva di Miro una bacheca relativa alle task da svolgere, che sono state tradotte fin da subito in ticket di Jira e assegnati ai rispettivi ruoli;
- la durata massima dei meeting di retrospettiva è stata fissata a 90 minuti (_soft limit_);
- sono stati definiti degli standard per la realizzazione dei grafici, adottando quelli proposti da Jira, ma gestendo meglio la pianificazione in modo da ottenere grafici ottimali;
- è stato assegnato all'Amministratore il compito della redazione dei verbali.

=== Analisi costi di sprint effettivi

#set text(
  size: 10pt
)

#figure(
  table(
    columns: 7,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Verificatore*],[*Totale*],
    [Banzato Alessio],  [2(-1)],  [/],    [/],    [/], [/],   [2(-1)],
    [Carraro Riccardo], [/],  [/],    [4],    [/], [/],   [4],
    [Gardin Giovanni],  [/],  [/],    [/],    [/], [3],   [3],
    [Nardo Silvio],     [/],  [/],    [/],    [3], [/],   [3],
    [Oseliero Antonio], [/],  [/],    [4],    [/], [/],   [4],
    [Todesco Mattia],   [/],  [4(+1)],    [/],    [/], [/],   [4(+1)],
    [Zaccone Rosario],  [/],  [4(+1)],    [/],    [/], [/],   [4(+1)],
    [Totale ore ruolo], [2(-1)],  [8(+2)],    [8],    [3], [3],   [23],
    [Costo orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [],
    [Costo ruolo], [60,00], [160,00], [200,00], [75,00], [45,00], [540,00]
  ),
  caption: "Consuntivo terzo sprint"
)

#set text(
  size: 11pt
)

A causa dei problemi incontrati, alcuni ruoli hanno visto un monte ore effettivo diverso a quanto preventivato:
- Responsabile: a causa di mancati standard su come effettuare una pianificazione ottimale il responsabile ha impiegato meno ore di quanto previsto;
- Amministratore: a causa dei mancati standard sulla realizzazione dei grafici gli amministratori hanno impiegato più ore finalizzate allo studio sui grafici da adottare.
=== Burndown-chart
[da inserire]




== Quarto Sprint dal 27-11-2023 al 04-12-2023

=== Obiettivi raggiunti
- effettuare una migliore pianificazione;
- perfezionamento della stesura degli use case individuati finora;
- redazione di una prima versione dell'Analisi dei Requisiti;
- valutazione di un'eventuale data per un primo meeting con il professor Cardin per ottenere un feedback sull'Analisi dei Requisiti;
- proseguimento della redazione e aggiornamento del documento di Norme di Progetto;
- proseguimento periodo di studio di Three.js, in particolare finalizzato a:
 - creazione di scaffali nell'ambiente tridimensionale;
 - implementazione sistema di drag and drop;
 - parametrizzazione degli elementi presenti nell'applicazione.
=== Obiettivi mancati
Tutti gli obiettivi sono stati raggiunti.
=== Analisi problematiche insorte
Il team ha notato in fase di retrospettiva una scarsa reattività in fase di review e verifica, che portano al rallentamento del lavoro. Le review
sono state rallentate anche dalla presenza di numerosi merge conflicts, che il team si è ritrovato a gestire per la prima volta nel progetto.\
Inoltre si è presa coscienza della necessità di apportare migliorie al processo di gestione di Jira.
=== Risoluzioni attuate
Il team ha preso in considerazione l'utilizzo di Graphite per velocizzare il processo di review e creare pull request brevi.\
Inoltre il gruppo ha preso l'impegno di formarsi in maniera approfondita sull'utilizzo di Jira, per migliorare l'amministrazione del progetto.
=== Analisi costi di sprint effettivi
#set text(
  size: 10pt
)

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Programmatore*], [*Verificatore*],[*Totale*],
    [Banzato\ Alessio],  [3],     [/],     [/],      [/],    [/],      [/],    [3],
    [Carraro\ Riccardo], [/],     [/],     [3],      [/],    [2(+1)],  [/],    [5(+1)],
    [Gardin\ Giovanni],  [/],     [/],     [/],      [/],    [/],      [4(+1)],[4(+1)],
    [Nardo\ Silvio],     [/],     [/],     [/],      [1],    [2],      [/],    [3],
    [Oseliero\ Antonio], [/],     [/],     [4],      [/],    [/],      [/],    [4],
    [Todesco\ Mattia],   [/],     [2(-1)], [/],      [/],    [/],      [/],    [2(-1)],
    [Zaccone\ Rosario],  [/],     [2(-1)], [/],      [/],    [/],      [/],    [2(-1)],
    [Totale\ ore ruolo], [3],     [4],     [7],      [1],    [4],      [4],    [23],
    [Costo orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo ruolo],      [90,00], [80,00], [175,00], [25,00], [60,00], [60,00], [490,00]
  ),
  caption: "Consuntivo quarto sprint"
)

#set text(
  size: 11pt
)


A causa dei rallentamenti incontrati, alcuni ruoli hanno visto un monte ore effettivo diverso a quanto preventivato:
- Amministratore: l'utilizzo di Jira in maniera approssimativa ha portato ad un monte ore inferiore a quanto previsto;

- Verificatore: i numerosi merge conflicts hanno portato a notevoli rallentamenti in fase di review.

=== Burndown-chart
[da inserire]


== Quinto Sprint dal 04-12-2023 al 11-12-2023

=== Obiettivi raggiunti
- miglioramento e aggiornamento documento Analisi dei Requisiti;
- realizzazione PoC relativo alla creazione e posizionamento di scaffali dell'ambiente di lavoro;
- realizzazione PoC relativo alla lettura e utilizzo di file SVG e comunicazione con Database;
- realizzazione PoC che integra l'utilizzo di Docker;
- incontro con Proponente in data 06-12-23;
- incontro con professor Cardin in data 07-12-23;
- redazione del Glossario;
- aggiornamento documento Norme di Progetto;
- aggiornamento documento Piano di Progetto.

=== Obiettivi mancati
- miglioramento GitHub Actions.

=== Analisi problematiche insorte
Durante il meeting di retrospettiva sono emerse le seguenti problematiche da migliorare:
- mancanza di precise convenzioni da adottare riguardanti il codice;
- lavoro concentrato principalmente nel weekend;
- richiesta di maggiore partecipazione dei membri del gruppo sulle board di Miro.

=== Risoluzioni attuate
Conseguentemente ai problemi rilevati, sono state individuate le relative soluzioni da adottare:
- normare le convenzioni di stesura del codice nelle Norme di Progetto;
- impegnarsi a fissare delle scadenze infrasettimanali così da ridurre il carico di lavoro nel weekend;
- utilizzare le board su Miro con anticipo aggiungendo il proprio feedback.

=== Analisi costi di sprint effettivi

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Programmatore*], [*Verificatore*],[*Totale*],
    [Banzato Alessio],  [/],     [/],      [4],     [/],     [/],      [/],     [4],
    [Carraro Riccardo], [3],     [/],      [/],     [/],     [2],      [/],     [5],
    [Gardin Giovanni],  [/],     [/],      [4],     [/],     [/],      [/],     [4],
    [Nardo\ Silvio],    [/],     [2(-1)],  [/],     [/],     [2],      [/],     [4(-1)],
    [Oseliero Antonio], [/],     [/],      [/],     [1(-1)], [2],      [/],     [3(-1)],
    [Todesco Mattia],   [/],     [/],      [/],     [/],     [/],      [3],     [3],
    [Zaccone Rosario],  [/],     [/],      [/],     [1(-1)], [2],      [/],     [3],
    [Totale\ ore ruolo],[3],     [3],      [8],     [2],     [8],      [3],     [26],
    [Costo\ orario],    [30,00], [20,00],  [25,00], [25,00], [15,00],  [15,00], [],
    [Costo\ ruolo],     [90,00], [40,00],  [200,00],[50,00], [120,00], [45,00], [545,00]
  ),
  caption: "Consuntivo quinto sprint"
)

Per produrre una prima versione dei PoC, i Progettisti (e in parte il Responsabile e l'Amministratore) hanno impiegato ore produttive come Programmatori, questo ha in parte significato una riduzione delle ore produttive previste per il ruolo assegnato.

=== Burndown-chart
[da inserire]


== Sesto Sprint dal 11-12-2023 al 18-12-2023

=== Obiettivi raggiunti
- avanzamento del PoC A con:
  - miglioramento grafico degli scaffali;
  - posizionamento automatico dei bin nello scaffale al momento della sua creazione;
  - implementazione visualizzazione prodotti dei bin tramite alert JavaScript.
- aggiornamento documento Norme di Progetto;
- aggiornamento documento Analisi dei Requisiti con:
  - refactoring degli use case secondo le indicazioni del professor Cardin;
  - redazione requisiti funzionali;
  - redazione requisiti di qualità;
  - redazione requisiti di vincolo.
- redazione introduzione Piano di Qualifica;
- meeting con l'azienda Proponente per:
  - esporre il PoC A;
  - aggiornare sullo stato dei lavori;
  - chiedere feedback sui requisiti non funzionali;
- conversione del Glossario in JSON per automatizzare l'individuazione dei termini nei documenti.


=== Obiettivi mancati
- migliorare GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- implementazione PoC per il front-end.

=== Analisi problematiche insorte
Durante il meeting di retrospettiva sono emerse le seguenti problematiche da migliorare:
- mancata comunicazione di situazioni di difficoltà o problemi che hanno portato a rallentamenti nella produzione di un PoC per il front-end;
- la stesura del documento Norme di Progetto ha una velocità di avanzamento troppo bassa.

=== Risoluzioni attuate
Conseguentemente ai problemi rilevati, sono state individuate le relative soluzioni da adottare:
- si richiede ai componenti del gruppo una comunicazione rapida delle difficoltà e problemi, non appena questi si presentano;
- il numero di persone assegnate alla redazione delle Norme di Progetto verrà incrementato da due a tre, in modo da garantire la produzione di un maggior numero di sezioni durante lo sprint.

=== Analisi costi di sprint effettivi

#set text(
  size: 10pt
)

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Programmatore*], [*Verificatore*],[*Totale*],
    [Banzato Alessio],  [/],  [/],    [4],    [/],    [/],   [/], [4],
    [Carraro\ Riccardo], [3],  [/],    [/],    [/],    [/],   [/], [3],
    [Gardin\ Giovanni],  [/],  [/],    [4],    [/],    [/],   [/], [4],
    [Nardo\ Silvio],     [/],  [3],    [/],    [/],    [/],   [/], [3],
    [Oseliero\ Antonio], [/],  [/],    [/],    [1],    [2(-1)],   [/], [3(-1)],
    [Todesco Mattia],   [/],  [/],    [/],    [/],    [/],   [3], [3],
    [Zaccone\ Rosario],  [/],  [/],    [/],    [1],    [3],   [/], [4],
    [Totale\ ore ruolo], [3],  [3],    [8],    [2],    [5],   [3], [24],
    [Costo orario],     [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo ruolo],      [90,00], [60,00], [200,00], [50,00], [75,00], [45,00], [520,00]
  ),
  caption: "Consuntivo sesto sprint"
)

#set text(
  size: 11pt
)

Il ruolo di Programmatore presenta un monte ore effettivo minore rispetto a quello preventivato a causa di problemi tecnici che hanno interrotto la lavorazione del PoC.

=== Burndown-chart
[da inserire]