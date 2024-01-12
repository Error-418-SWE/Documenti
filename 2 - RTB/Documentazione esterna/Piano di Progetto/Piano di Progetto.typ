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
- *impatto*: può essere lieve, medio, grave. Esprime l'effetto generato dall'evento;
- *probabilità*: da 1 a 5. Esprime la probabilità del verificarsi del rischio;
- *conseguenze*: effetti collaterali a breve o medio termine che il rischio può comportare.

== Rischi

=== Comunicazione con il Proponente
I contatti con il Proponente potrebbero subire variazioni nella qualità e nella frequenza a causa di problematiche fuori dal controllo del gruppo. Questa situazione potrebbe causare un rallentamento significativo del lavoro, soprattutto durante l'analisi dei requisiti.

- Impatto: grave;
- Probabilità: 1;
- Conseguenze: lo sviluppo potrebbe allontanarsi dalle linee guida o dalle aspettative del Proponente, non rispettando quanto preventivato o pianificato. Tale rischio comporterebbe dunque la produzione di un software non in linea con le richieste, conducendo a perdite di tempo per analisi, progettazione e implementazione aggiuntive;
- Mitigazione:
  - pianificazione anticipata degli incontri di revisione dell'avanzamento;
  - uso di strumenti asincroni per facilitare lo scambio di informazioni tra gruppo e Proponente;
  - programmazione di incontri periodici di aggiornamento, anche brevi.

=== Effetto "sottomarino"
Uno o più membri potrebbero, per motivi diversi, cessare la partecipazione attiva alle attività del gruppo. È necessario evitare che la durata di queste assenze impedisca il regolare svolgimento delle attività di progetto.

- Impatto: medio;
- Probabilità: 3;
- Conseguenze: i partecipanti che si dovessero trovare in questa situazione rischierebbero di accentuare eventuali incomprensioni nel proprio lavoro senza la possibilità di confrontarsi con gli altri, accorgendosi troppo tardi degli errori;
- Mitigazione:
  - mantenimento di un dialogo costante sulle problematiche interne al gruppo;
  - segnalazione responsabile e preventiva di difficoltà o impedimenti da parte dei singoli membri.

=== Rallentamento delle attività
Tra le difficoltà principali durante lo sviluppo del progetto c'è la congiunzione tra gli impegni individuali e progettuali. Tale difficoltà può comportare un rallentamento nel completamento di attività e task assegnate, comportando un generale ritardo nello sviluppo.

- Impatto: grave;
- Probabilità: 4 (probabilità aumentata nel periodo della sessione invernale);
- Conseguenze: attività non svolte o completate parzialmente determinerebbero uno slittamento della data di consegna e delle scadenze intermedie;
- Mitigazione:
  - organizzazione e suddivisione del monte ore con occhio di riguardo a precise date e scadenze;
  - incontri e comunicazione costante con i membri del gruppo al fine di rendere note eventuali indisponibilità o impegni;
  - uso di strumenti asincroni al fine di permettere a tutti i membri un'equa divisione del lavoro da svolgere nei momenti a loro più comodi, a patto di rispettare le linee guida delle Norme di Progetto.

=== Adozione delle tecnologie
Le tecnologie individuate o suggerite durante i processi di analisi e progettazione potrebbero risultare complesse da comprendere e/o integrare.
- Impatto: medio;
- Probabilità: 4;
- Conseguenze: rallentamenti non preventivati che possono avere conseguenze a cascata sulle attività dipendenti;
- Mitigazione:
  - accurata pianificazione e stesura delle Norme di Progetto;
  - assicurarsi che ad ogni membro del gruppo sia chiaro il funzionamento delle tecnologie e delle norme concordate.

= Divisione temporale di sviluppo
== Introduzione
== Periodi di sviluppo
=== Periodo RTB
- Analisi dei Requisiti;
- Proof of Concept;
- Date nostra suddivisione.
=== Periodo PB
Ancora da definire.
=== Periodo CA
Ancora da definire.

= Preventivo dei costi di realizzazione
== Introduzione
Delineati i rischi, le relative contromisure e il calendario di progetto, si è definito, mediante una pianificazione retrospettiva, un preventivo iniziale dei costi di realizzazione del progetto.

È altresì corretto evidenziare come i membri del gruppo non siano dotati di esperienza sufficiente per fornire un preventivo corretto e preciso sin dagli inizi dello sviluppo: per tale motivo, il prezzo indicato sarà soggetto a modifiche con l'avanzamento del progetto (seppur mai superando il prezzo preventivato in candidatura).

=== Analisi dei ruoli
==== Responsabile
Il Responsabile è un ruolo presente durante l'intero progetto. Il suo compito è quello di gestire il gruppo e di assicurarsi che lo sviluppo proceda secondo le tempistiche predefinite e le aspettative del Committente. Deve inoltre redigere e far rispettare le Norme di Progetto, nonché le linee guida di sviluppo che l'intero gruppo deve rispettare. Essendo il ruolo più costoso, il numero di ore è stato scelto per favorire l'efficienza e non pesare eccessivamente sul costo finale.

==== Amministratore
L'Amministratore è un ruolo presente durante l'intero progetto, in quanto si occupa di predisporre e controllare il corretto utilizzo delle procedure e degli strumenti definiti nelle Norme di Progetto, andando anche a gestire e implementare automatismi, migliorando così l'efficienza del gruppo. Il monte ore scelto è tale, poiché essendo questo un ruolo di controllo, non sono richieste un numero elevato di ore.

==== Analista
L'Analista è presente esclusivamente nelle fasi iniziali del progetto, poiché si occupa della raccolta e dell'elaborazione dei requisiti. Ciò comporta un numero di ore ridotto e una distribuzione delle stesse unicamente nelle prime settimane del progetto.

==== Progettista
Il Progettista ha il compito di delineare e documentare l'architettura del prodotto in modo da:

- soddisfare i requisiti raccolti nelle fasi pregresse;

- aiutare il gruppo di sviluppo con una documentazione chiara ed esaustiva.

Nello stabilire l'architettura deve quindi indicare anche quali saranno le tecnologie da utilizzare per la sua implementazione.
Ritenendolo un ruolo impegnativo dal punto di vista temporale, il numero di ore risulta maggiore rispetto ai ruoli precedenti.

==== Programmatore
Il Programmatore ha il compito di tradurre in codice eseguibile l'architettura prodotta dal progettista. Il ruolo prevede un numero di ore molto elevato poiché riteniamo il lavoro più dispendioso a livello temporale rispetto a quello delle altre figure professionali.

==== Verificatore
Il Verificatore è un ruolo presente durante l'intero progetto, che si occupa di mantenere degli standard qualitativi sul lavoro del gruppo: egli deve verificare la correttezza, esaustività e coerenza di tutti i documenti, e nella fase di codifica sarà colui che si occuperà di controllare la qualità del software prodotto. Proprio per questo il totale delle ore risulta essere il secondo più elevato dopo il Programmatore.

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
    [Costo\ Orario (€)], [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo\ Ruolo (€)], [2.730], [1.400], [1.750], [2.450], [3.150], [1.890], [],
  ),
  caption: "Suddivisione delle ore dei ruoli"
)

=== Preventivo calcolato
Il costo totale preventivato è di € 13.370,00.

= Pianificazione del lavoro
== Introduzione
La pianificazione ricopre un ruolo fondamentale nello sviluppo dell'intero progetto. Svolge il compito di stabilire quali obiettivi raggiungere in periodi di tempo determinati, organizzando le risorse in modo da rendere lo sviluppo efficace ed efficiente. Lo scopo principale deve essere pianificare le azioni da intraprendere nel periodo successivo, definendo tempistiche, modalità e obiettivi.

== Metodologia di lavoro Scrum
Il gruppo si è imposto una metodologia di lavoro *agile* mediante l'applicazione del framework Scrum, determinando periodi di lavoro di durata fissa terminanti con un'analisi retrospettiva degli stessi.

Tale approccio è definibile *adattivo*, in grado dunque di adattarsi ad eventuali modifiche in corso d'opera, in merito soprattutto a cambiamenti di specifiche e requisiti.

L'intero sviluppo è dunque organizzato in iterazioni di lunghezza fissa, denominati in Scrum come *sprint*.

L'analisi retrospettiva e il frequente contatto con il Proponente permettono di indirizzare lo sviluppo verso la realizzazione di un prodotto finale che si attenga quanto più possibile ai requisiti desiderati dall'azienda e alle sue aspettative, e una documentazione dettagliata e precisa che evolve e migliora insieme al prodotto.

=== Eventi dettati dal framework
La corretta applicazione del framework comporta il rispetto di determinati impegni, individuabili nello svolgimento di precisi eventi organizzativi quali:
- *Sprint planning*: evento decisionale da tenersi prima dell'avvio dello sprint successivo. In questo incontro vengono stabiliti gli obiettivi da raggiungere e le task necessarie da compiere entro la fine dello stesso;

- *Daily Scrum meeting*: evento di livellamento ove il gruppo, in un meeting della durata molto breve, si aggiorna sullo stato dei lavori e organizza il lavoro del giorno;

- *Sprint review*: al termine dello sprint si compie un'azione di validazione di quanto prodotto, valutando dunque gli obiettivi che sono stati (o meno) raggiunti;

- *Sprint retrospective*: al termine dello sprint si compie un'azione di retrospettiva, analizzando eventuali criticità incontrate e stabilendo i possibili miglioramenti o meccanismi di mitigazione.

=== Organizzazione per sprint
Gli sprint sono periodi di sviluppo di durata fissa entro i quali si cerca di raggiungere obiettivi prefissati. Ciascuno sprint viene stabilito, in termini di scope e obiettivi, in un momento precedente all'avvio dello sprint stesso.

Il gruppo _Error\_418_ adotta periodi di sprint di una settimana, ove l'intento è fissare obiettivi concretamente raggiungibili nell'arco di tempo stabilito.

Al termine di ogni sprint si svolgerà un'analisi retrospettiva con lo scopo di valutare il lavoro svolto e proporre eventuali miglioramenti in caso di criticità riscontrate.

La pianificazione di uno sprint sarà così composta:
- *Obiettivi prefissati*: gli obiettivi che si intende raggiungere entro il termine dello sprint;

- *Preventivo costi*: preventivo dei costi dello sprint, calcolato in base alle figure che vi operano e alla loro quantità di ore di lavoro previste;

- *Diagramma di Gantt*: diagramma che rappresenta l'organizzazione delle attività nel tempo e le dipendenze tra esse.

Essenziale in questa organizzazione è l'analisi retrospettiva a fine sprint, che permette di valutare in modo critico eventuali mancanze, criticità o errori che possono in questo modo venir affrontati per trovare soluzioni che ne mitighino gli effetti in futuro.

La retrospettiva di uno sprint si articolerà in:
- *Obiettivi raggiunti*: obiettivi fissati e concretamente raggiunti al termine dello sprint;

- *Obiettivi mancati*: obiettivi non raggiunti al termine dello sprint;

- *Analisi problematiche insorte*: analisi delle criticità riscontrate durante lo sprint, in modo da aver chiari le motivazioni che le hanno causate;

- *Risoluzioni attuate*: azioni compiute in risposta alle problematiche riscontrate durante lo sprint, in modo che in futuro si possano prevenire o mitigare;

- *Analisi costi di sprint effettivi*: al termine dello sprint sarà possibile verificare se i costi preventivati rispecchino i costi effettivi, in base alle ore svolte per ogni ruolo;

- *Monitoraggio costi e ore*: tabelle che riportano le ore e il budget rimanenti per ogni ruolo e complessivamente;

- *Burndown-chart*: strumento metrico che permette di avere una chiara visione dell'andamento dello sprint.

== Primo Sprint dal 06-11-2023 al 13-11-2023

=== Obiettivi prefissati
Gli obiettivi del primo sprint si concentrano sulla correzione e sul miglioramento dei documenti e della repository in seguito alla valutazione esposta dal Committente.

Gli obiettivi dello sprint 1 sono:
- riconfigurazione della repository;
- revisione preventivo costi con aggiornamento della suddivisione delle ore;
- implementazione di automazioni per la compilazione dei documenti;
- implementazione di automazioni per il versionamento dei documenti;
- stesura delle domande in merito al dominio tecnologico del capitolato;
- contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- contatto con l'azienda Proponente per fissare un primo meeting di analisi.

=== Preventivo costi
Nel primo sprint il gruppo svolge compiti correttivi e incentrati sul miglioramento dei documenti e dei processi. In quest'ottica, vede l'impiego principale delle figure:
- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;

- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti;

- *Verificatore*: al fine di garantire che le modifiche effettuate rispecchino gli standard qualitativi desiderati e implementino effettivamente le mancanze individuate dalla valutazione;

- *Analista*: al fine di redigere le principali domande da porre al Proponente in merito al dominio tecnologico da utilizzare.

In questo primo periodo, l'assegnazione dei ruoli di Progettista e di Programmatore è ritenuta precoce.

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

=== Diagramma di Gantt
[da inserire]

== Secondo Sprint dal 13-11-2023 al 20-11-2023

=== Obiettivi prefissati
Gli obiettivi del secondo sprint si concentrano sull'individuazione degli Use Case del progetto, sul perfezionamento delle automazioni e sulla stesura iniziale delle Norme di Progetto. 

Gli obiettivi dello sprint 2 sono:
- riconfigurazione della repository;
- stesura della sezione _Introduzione_ del documento Norme di Progetto;
- stesura della sezione _Processi di supporto_ del documento Norme di Progetto;
- perfezionamento delle automazioni per la compilazione dei documenti;
- perfezionamento delle automazioni per il versionamento dei documenti;
- contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- meeting con l'azienda Proponente per riflettere sull'analisi dei requisiti e sulle tecnologie da usare;
- inizio dell'individuazione e della stesura degli Use Case.

=== Preventivo costi
Nel secondo sprint il gruppo svolge compiti correttivi incentrati sul miglioramento dei documenti e compiti orientati all'individuazione e alla stesura degli Use Case. In quest'ottica, vede l'impiego principale delle figure:
- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;

- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira per la definizione e il miglioramento delle automazioni per la compilazione e il versionamento dei documenti;

- *Verificatore*: al fine di garantire che le modifiche effettuate rispecchino gli standard qualitativi desiderati e implementino effettivamente le mancanze individuate dalla valutazione;

- *Analista*: al fine di individuare e sviluppare testualmente i principali Use Case in ottica del documento Analisi dei Requisiti.

In questo  periodo, l'assegnazione dei ruoli di Programmatore e Progettista è ritenuta precoce.

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

=== Diagramma di Gantt
[da inserire]

== Terzo Sprint dal 20-11-2023 al 27-11-2023
=== Obiettivi prefissati
Gli obiettivi del terzo sprint si concentrano sull'aggiornamento del documento Norme di Progetto, sul periodo di analisi dei requisiti (principalmente concentrata sui requisiti funzionali) e su un primo momento di esplorazione delle nuove tecnologie.

Gli obiettivi dello sprint 3 sono:
- proseguimento del processo di individuazione e stesura degli Use Case;
- perfezionamento delle automazioni di versionamento documenti;
- perfezionamento del template usato per i documenti;
- aggiornamento del documento Norme di Progetto;
- studio iniziale della libreria Three.js;
- meeting con l'azienda Proponente per esporre ipotesi e Use Case individuati, richiedere chiarimenti ed avanzare opportune richieste;
- contatto con l'azienda Proponente per fissare il prossimo meeting.

=== Preventivo costi
Nel terzo sprint, il gruppo svolge delle attività principalmente focalizzate sull'analisi dei requisiti e sull'aggiornamento e perfezionamento dei documenti e delle automazioni. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di:
  - gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti;
  - aggiornare il documento Piano di Progetto.
- *Verificatore*: al fine di:
  - verificare la correttezza delle modifiche ai documenti;
  - effettuare un controllo sulla validità e formulazione degli Use Case individuati.
- *Analista*: al fine di individuare e formulare gli Use Case correlati ai requisiti funzionali;
- *Progettista*: al fine di condurre uno studio iniziale sulla libreria Three.js.

In questo periodo, l'assegnazione del ruolo di Programmatore è ritenuta precoce.

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

=== Diagramma di Gantt
[da inserire]

== Quarto Sprint dal 27-11-2023 al 04-12-2023

=== Obiettivi prefissati
Gli obiettivi del quarto sprint si concentrano sull'aggiornamento e perfezionamento dei documenti redatti negli scorsi sprint, sulla finalizzazione di una prima versione
del documento Analisi dei Requisiti e sull'esplorazione delle nuove tecnologie.

Gli obiettivi dello sprint 4 sono:
- effettuare una migliore pianificazione;
- perfezionamento della stesura degli Use Case individuati finora;
- redazione di una prima versione dell'Analisi dei Requisiti;
- valutazione di un'eventuale data per un primo meeting con il professore Cardin per ottenere un feedback sull'Analisi dei Requisiti;
- proseguimento della redazione e aggiornamento del documento Norme di Progetto;
- proseguimento periodo di studio di Three.js, in particolare finalizzato a:
 - creazione di alcuni scaffali nell'ambiente tridimensionale;
 - implementazione sistema di drag and drop;
 - parametrizzazione degli elementi presenti nell'applicazione.

=== Preventivo costi
Nel quarto sprint il gruppo svolge compiti correttivi incentrati sul miglioramento dei documenti, Analisi dei Requisiti e studio delle nuove tecnologie. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di:
  - gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti;
  - aggiornare il documento Piano di Progetto.
- *Analista*: al fine di perfezionare la stesura degli Use Case individuati e redarre una prima versione del documento Analisi dei Requisiti;
- *Progettista*: al fine di condurre uno studio esplorativo sulla libreria Three.js;
- *Programmatore*: al fine di esplorare in modo pratico le tecnologie relative ai PoC;
- *Verificatore*: al fine di verificare la correttezza delle modifiche ai documenti e di effettuare un controllo sulla validità degli Use Case individuati nel documento Analisi dei Requisiti.

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

=== Diagramma di Gantt
[da inserire]

== Quinto Sprint dal 04-12-2023 al 11-12-2023

=== Obiettivi prefissati
Gli obiettivi del quinto sprint si concentrano sull'aggiornamento e perfezionamento dei documenti redatti negli scorsi sprint, sulla finalizzazione di una prima versione
del documento Analisi dei Requisiti e sullo sviluppo dei primi PoC.

Gli obiettivi dello sprint 5 sono:
- perfezionamento del sistema di drag and drop nel PoC;
- creazione degli scaffali nel PoC;
- creazione ambiente Docker;
- svolgere meeting con il professor Cardin in merito all'Analisi dei Requisiti;
- perfezionare e aggiornare il documento Norme di Progetto;
- aggiornamento del documento Analisi dei Requisiti, introducendo i requisiti non funzionali;
- informarsi sul documento Piano di Qualifica;
- aggiornare vecchi documenti con il nuovo template;
- scrittura del Glossario.

=== Preventivo costi
Nel quinto sprint il gruppo svolge compiti correttivi incentrati sul miglioramento dei documenti, Analisi dei Requisiti e studio delle nuove tecnologie. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira;
- *Analista*: al fine di redarre il documento Analisi dei Requisiti;
- *Progettista*: al fine di continuare lo studio sulla libreria Three.js;
- *Programmatore*: al fine di sviluppare i PoC relativi allo studio della libreria;
- *Verificatore*: al fine di:
  - verificare la correttezza delle modifiche ai documenti;
  - effettuare un controllo sulla validità e formulazione degli Use Case individuati e del documento Analisi dei Requisiti.

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

=== Diagramma di Gantt
[da inserire]


== Sesto Sprint dal 11-12-2023 al 18-12-2023

=== Obiettivi prefissati
Gli obiettivi del sesto sprint si focalizzano sul miglioramento dei PoC e dei diversi documenti. Nel dettaglio:
- avanzare con la redazione del PoC "A" integrando il funzionamento dei bin;
- approfondire e migliorare l'utilizzo di Docker nel PoC corrispondente;
- migliorare le GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- proseguire con il lavoro sul documento Norme di Progetto;
- redigere introduzione del documento Piano di Qualifica;
- adeguare l'Analisi dei Requisiti in funzione di quanto emerso durante lo scorso meeting con il professor Cardin;
- aggiungere al documento Analisi dei Requisiti la tabella che correli gli Use Case ai requisiti.

=== Preventivo costi
Nel sesto sprint il gruppo svolge compiti correttivi incentrati sul miglioramento dei documenti Analisi dei Requisiti e Norme di Progetto.
Il gruppo continua a produrre e migliorare PoC e inizia a scrivere il documento Piano di Qualifica.
In quest'ottica vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira, redigere i verbali e aggiornare il documento Piano di Progetto;
- *Analista*: al fine di redarre il documento Analisi dei Requisiti con relativi diagrammi UML;
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

=== Diagramma di Gantt
[da inserire]


== Settimo Sprint dal 18-12-2023 al 25-12-2023

=== Obiettivi prefissati
Gli obiettivi del settimo sprint si focalizzano sul completamento del PoC, terminare l'analisi dei requisiti e in generale sull'avanzamento dei documenti e miglioramento delle automazioni. Nel dettaglio gli obiettivi posti sono:
- creazione di un PoC per il front-end e realizzazione di un PoC definitivo comprendente tutto il lavoro svolto fin'ora
- espansione del Piano di Qualifica con l'individuazione delle metriche da utilizzare;
- espansione delle Norme di Progetto;
- completamento del documento Analisi dei Requisiti con:
  - implementazione del tracciamento requisito-fonte;
  - revisione generale del documento per verificare la presenza di tutti gli Use Case e requisiti necessari.
- miglioramento delle GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- implementazione dell'automazione che evidenzia i termini presenti nel glossario all'interno dei documenti.

=== Preventivo costi
Nel settimo sprint i compiti del gruppo sono incentrati sulla realizzazione del PoC finale e sul proseguimento e miglioramento di tutti i documenti necessari alla Requirements and Technology Baseline. Di conseguenza saranno essenziali le figure di:
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

=== Diagramma di Gantt
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
Gli obiettivi dell'ottavo sprint riguardano tutti gli aspetti del progetto, di conseguenza saranno necessari tutti i ruoli presenti nel gruppo:
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

=== Diagramma di Gantt
[da inserire]



= Consuntivo del progetto

== Introduzione
Il consuntivo di ogni sprint permette di avere una valutazione critica dell'avanzamento dello sviluppo, valutando in modo oggettivo i punti positivi e negativi dello sprint terminato.

Questa fase di retrospettiva è essenziale al fine di individuare possibili miglioramenti e di analizzare se la pianificazione ideata all'inizio dello sprint abbia trovato concretezza.

== Primo Sprint dal 06-11-2023 al 13-11-2023

=== Obiettivi raggiunti
- Revisione preventivo costi con aggiornamento della suddivisione delle ore e conseguente riduzione del costo totale;
- Implementazione di automazioni per la compilazione dei documenti;
- Stesura delle domande in merito al dominio tecnologico del capitolato.

=== Obiettivi mancati
- Riconfigurazione della repository;
- Implementazione di automazioni per il versionamento dei documenti;
- Contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- Contatto con l'azienda Proponente per fissare un primo meeting di analisi.

=== Analisi problematiche insorte
A causa di una sottostima del carico di lavoro per l'implementazione delle automazioni tramite GitHub Actions, alcuni obiettivi sono stati mancati, creando un effetto a catena che ha temporaneamente bloccato il caricamento di documenti nella repository.

Un altro problema riguarda la comunicazione con l'azienda Proponente: sfortunatamente, la mail inviata non ha ricevuto riscontro in tempo, impedendo di procedere ulteriormente con l'analisi dei requisiti e la programmazione di un meeting con l'azienda.

=== Risoluzioni attuate
Le automazioni riguardanti il versionamento verranno concluse nello sprint successivo.

La problematica in merito al contatto con l'azienda vedrà l'intraprendersi di un'azione di sollecito con una seconda mail, e successivamente la richiesta di stabilire un nuovo canale di comunicazione.

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
- Responsabile: il blocco temporaneo della repository e la mancata risposta dell'azienda non hanno permesso la produzione di documenti, limitando così il lavoro del Responsabile;

- Analista: la mancata risposta da parte dell'azienda ha impedito agli analisti di iniziare l'analisi dei requisiti, limitando dunque il lavoro alla stesura di domande in merito al dominio tecnologico;

- Verificatore: il mancato avanzamento ha prodotto documentazione ridotta rispetto a quanto preventivato, pertanto il Verificatore ha svolto un numero inferiore di ore.

Il ruolo dell'Amministratore, invece, ha visto un aumento delle ore rispetto a quanto preventivato, a causa di difficoltà incontrate nell'implementazione delle automazioni (errori, testing, verifica).

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Budget rimanente*], 
    [Responsabile], [2.670,00],
    [Amministratore], [1.160,00],
    [Analista], [1.650,00],
    [Progettista], [2.450,00],
    [Programmatore], [3.150,00],
    [Verificatore], [1.830,00],
    [*Totale rimanente*], [12.910,00]
  ),
  caption: "Monitoraggio costi primo sprint"
)

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Ore rimanenti*],
    [Responsabile], [89],
    [Amministratore], [58],
    [Analista], [66],
    [Progettista], [98],
    [Programmatore], [210],
    [Verificatore], [122],
    [*Totale ore rimanenti*], [643]
  ),
  caption: "Monitoraggio ore primo sprint"
)

=== Burndown-chart
[da inserire]


== Secondo Sprint dal 13-11-2023 al 20-11-2023

=== Obiettivi raggiunti
- Riconfigurazione della repository;
- Stesura della sezione _Introduzione_ del documento Norme di Progetto;
- Stesura della sezione _Processi di supporto_ del documento Norme di Progetto;
- Perfezionamento delle automazioni per la compilazione dei documenti;
- Perfezionamento delle automazioni per il versionamento dei documenti;
- Contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- Meeting con l'azienda Proponente per riflettere sull'analisi dei requisiti e sulle tecnologie da usare;
- Inizio dell'individuazione e della stesura degli Use Case.

=== Obiettivi mancati
Gli obiettivi sono stati tutti raggiunti, considerando anche che molti erano obiettivi mancati dello sprint precedente.

=== Analisi problematiche insorte
- Il gruppo ha notato la mancanza di una struttura comune nei verbali, che porta a documenti senza una precisa convenzione e rallentamenti in fase di redazione;
- Sono emerse difficoltà nelle modalità di utilizzo della repository, nonostante sia stato dedicato del tempo per la formazione;
- Scarsa reattività in fase di review.

=== Risoluzioni attuate
- Per risolvere la problematica di una mancanza di struttura nei verbali, si sono fissate delle convenzioni da seguire nel documento Norme di Progetto;
- Per formare meglio il gruppo sulle modalità di utilizzo della repository, è stato dedicato tempo in più per fornire tutorial video e testuali a supporto del gruppo;
- Per ovviare alla scarsa reattività in fase di review, il gruppo prende la responsabilità di visionare spesso la casella mail personale per capire quando c'è bisogno di una review o di risolvere una conversation GitHub, oltre a sollecitare i Verificatori via i canali di comunicazione interni del gruppo in caso di mancate revisioni.

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
- Amministratore: la scarsa comprensione delle modalità di utilizzo della repository da parte dei membri del gruppo ha portato gli Amministratori a dedicare delle ore in più mirate al perfezionamento della formazione dei membri del gruppo;

- Verificatore: la scarsa reattività in fase di review ha portato un impegno inferiore alle attività di revisione.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Budget rimanente*], 
    [Responsabile], [2.580,00],
    [Amministratore], [920,00],
    [Analista], [1.425,00],
    [Progettista], [2.450,00],
    [Programmatore], [3.150,00],
    [Verificatore], [1.800,00],
    [*Totale rimanente*], [12.325,00]
  ),
  caption: "Monitoraggio costi secondo sprint"
)

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Ore rimanenti*],
    [Responsabile], [86],
    [Amministratore], [46],
    [Analista], [57],
    [Progettista], [98],
    [Programmatore], [210],
    [Verificatore], [120],
    [*Totale ore rimanenti*], [617]
  ),
  caption: "Monitoraggio ore secondo sprint"
)

=== Burndown-chart
[da inserire]

== Terzo Sprint dal 20-11-2023 al 27-11-2023

=== Obiettivi raggiunti
- Proseguimento del processo di individuazione e stesura degli Use Case;
- Perfezionamento delle automazioni di versionamento documenti;
- Perfezionamento del template usato per i documenti;
- Aggiornamento parziale del documento Norme di Progetto;
- Studio iniziale della libreria Three.js;
- Meeting con l'azienda Proponente per esporre ipotesi e Use Case individuati, richiedere chiarimenti ed avanzare opportune richieste;
- Contatto con l'azienda Proponente per fissare il prossimo meeting.

=== Obiettivi mancati
- Aggiornamento completo del documento Piano di Progetto con l'inserimento dei grafici di Gantt e di burndown.

=== Analisi problematiche insorte

Nonostante la realizzazione soddisfacente della maggior parte degli obiettivi concordati, sono emerse alcune criticità durante l'implementazione del progetto:

- si è riscontrata una pianificazione non ottimale e superficiale, attribuibile alla mancanza di un dettagliato processo di pianificazione durante la riunione precedente l'avvio dello sprint;
- sono sorti problemi a causa della mancata definizione di standard per la creazione dei grafici di Gantt e burndown, comportando una stesura parziale dei paragrafi nel documento Piano di Progetto;
- la durata dei meeting ha superato le aspettative a causa di alcune inefficienze temporali;
- il gruppo ha rilevato la mancanza di standard per designare le persone responsabili della redazione dei verbali durante lo sprint.

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
- Amministratore: a causa dei mancati standard sulla realizzazione dei grafici gli Amministratori hanno impiegato più ore finalizzate allo studio sui grafici da adottare.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Budget rimanente*], 
    [Responsabile], [2.520,00],
    [Amministratore], [760,00],
    [Analista], [1.225,00],
    [Progettista], [2.375,00],
    [Programmatore], [3.150,00],
    [Verificatore], [1.755,00],
    [*Totale rimanente*], [11.785,00]
  ),
  caption: "Monitoraggio costi terzo sprint"
)

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Ore rimanenti*],
    [Responsabile], [84],
    [Amministratore], [38],
    [Analista], [49],
    [Progettista], [95],
    [Programmatore], [210],
    [Verificatore], [117],
    [*Totale ore rimanenti*], [593]
  ),
  caption: "Monitoraggio ore terzo sprint"
)

=== Burndown-chart
[da inserire]




== Quarto Sprint dal 27-11-2023 al 04-12-2023

=== Obiettivi raggiunti
- Effettuare una migliore pianificazione;
- Perfezionamento della stesura degli Use Case individuati finora;
- Redazione di una prima versione del documento Analisi dei Requisiti;
- Valutazione di un'eventuale data per un primo meeting con il professor Cardin per ottenere un feedback sull'Analisi dei Requisiti;
- Proseguimento della redazione e aggiornamento del documento Norme di Progetto;
- Proseguimento periodo di studio di Three.js, in particolare finalizzato a:
 - creazione di scaffali nell'ambiente tridimensionale;
 - implementazione sistema di drag and drop;
 - parametrizzazione degli elementi presenti nell'applicazione.

=== Obiettivi mancati
Tutti gli obiettivi sono stati raggiunti.

=== Analisi problematiche insorte
Il gruppo ha notato in fase di retrospettiva una scarsa reattività in fase di review e verifica, che portano al rallentamento del lavoro. Le review
sono state rallentate anche dalla presenza di numerosi merge conflicts, che il gruppo si è ritrovato a gestire per la prima volta nel progetto.

Inoltre si è presa coscienza della necessità di apportare migliorie al processo di gestione di Jira.

=== Risoluzioni attuate
Il gruppo ha preso in considerazione l'utilizzo di Graphite per velocizzare il processo di review e creare pull request brevi.

Inoltre, il gruppo ha preso l'impegno di formarsi in maniera approfondita sull'utilizzo di Jira, per migliorare l'amministrazione del progetto.

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

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Budget rimanente*], 
    [Responsabile], [2.430,00],
    [Amministratore], [680,00],
    [Analista], [1.050,00],
    [Progettista], [2.350,00],
    [Programmatore], [3.090,00],
    [Verificatore], [1.695,00],
    [*Totale rimanente*], [11.295,00]
  ),
  caption: "Monitoraggio costi quarto sprint"
)

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Ore rimanenti*],
    [Responsabile], [81],
    [Amministratore], [34],
    [Analista], [42],
    [Progettista], [94],
    [Programmatore], [206],
    [Verificatore], [113],
    [*Totale ore rimanenti*], [570]
  ),
  caption: "Monitoraggio ore quarto sprint"
)

=== Burndown-chart
[da inserire]


== Quinto Sprint dal 04-12-2023 al 11-12-2023

=== Obiettivi raggiunti
- Miglioramento e aggiornamento documento Analisi dei Requisiti;
- Realizzazione PoC relativo alla creazione e posizionamento di scaffali dell'ambiente di lavoro;
- Realizzazione PoC relativo alla lettura e utilizzo di file SVG e comunicazione con database;
- Realizzazione PoC che integra l'utilizzo di Docker;
- Incontro con Proponente in data 06-12-23;
- Incontro con professor Cardin in data 07-12-23;
- Redazione del Glossario;
- Aggiornamento documento Norme di Progetto;
- Aggiornamento documento Piano di Progetto.

=== Obiettivi mancati
- Miglioramento GitHub Actions.

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


=== Monitoraggio costi e ore

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Budget rimanente*], 
    [Responsabile], [2.340,00],
    [Amministratore], [640,00],
    [Analista], [850,00],
    [Progettista], [2.300,00],
    [Programmatore], [2.970,00],
    [Verificatore], [1.650,00],
    [*Totale rimanente*], [10.750,00]
  ),
  caption: "Monitoraggio costi quinto sprint"
)

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Ore rimanenti*],
    [Responsabile], [78],
    [Amministratore], [32],
    [Analista], [34],
    [Progettista], [92],
    [Programmatore], [198],
    [Verificatore], [110],
    [*Totale ore rimanenti*], [544]
  ),
  caption: "Monitoraggio ore quinto sprint"
)

=== Burndown-chart
[da inserire]


== Sesto Sprint dal 11-12-2023 al 18-12-2023

=== Obiettivi raggiunti
- Avanzamento del PoC A con:
  - miglioramento grafico degli scaffali;
  - posizionamento automatico dei bin nello scaffale al momento della sua creazione;
  - implementazione visualizzazione prodotti dei bin tramite alert JavaScript.
- Aggiornamento documento Norme di Progetto;
- Aggiornamento documento Analisi dei Requisiti con:
  - refactoring degli Use Case secondo le indicazioni del professor Cardin;
  - redazione requisiti funzionali;
  - redazione requisiti di qualità;
  - redazione requisiti di vincolo.
- Redazione introduzione Piano di Qualifica;
- Meeting con l'azienda Proponente per:
  - esporre il PoC A;
  - aggiornare sullo stato dei lavori;
  - chiedere feedback sui requisiti non funzionali.
- Conversione del Glossario in JSON per automatizzare l'individuazione dei termini nei documenti.

=== Obiettivi mancati
- Migliorare GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- Implementazione PoC per il front-end.

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

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Budget rimanente*], 
    [Responsabile], [2.250,00],
    [Amministratore], [180,00],
    [Analista], [650,00],
    [Progettista], [2.250,00],
    [Programmatore], [2.895,00],
    [Verificatore], [1.605,00],
    [*Totale rimanente*], [10.230,00]
  ),
  caption: "Monitoraggio costi sesto sprint"
)

#figure(
  table(
    columns: 2,
    fill: (col, row) => if col == 0 and row > 6 or row == 0 {rgb("#bbbbbb")},
    [*Ruolo*], [*Ore rimanenti*],
    [Responsabile], [75],
    [Amministratore], [29],
    [Analista], [26],
    [Progettista], [90],
    [Programmatore], [193],
    [Verificatore], [107],
    [*Totale ore rimanenti*], [520]
  ),
  caption: "Monitoraggio ore sesto sprint"
)

=== Burndown-chart
[da inserire]

== Settimo Sprint dal 18-12-2023 al 25-12-2023

=== Obiettivi raggiunti
- Integrazione dei PoC realizzati in un unico PoC;
- Individuazione di metriche di base per il Piano di Qualifica;
- Aggiornamento del documento Norme di Progetto;
- Automatizzata l'individuazione dei termini del glossario nei documenti.

=== Obiettivi mancati
- Implementazione del tracciamento requisito-fonte nel documento Analisi dei Requisiti;
- Correzione di bug presenti nelle GitHub Actions.

=== Analisi problematiche insorte
Durante il meeting di retrospettiva sono insorte le seguenti problematiche:

- il pool mensile di automatismi inclusi nel piano gratuito relativi ai ticket di Jira è stato esaurito;
- lentezza nell'approvazione delle correzioni richieste nelle review;
- nelle review delle pull request alcuni commenti risultano essere poco chiari e/o sbrigativi;
- il progresso relativo al documento Norme di Progetto è risultato scarso in confronto con gli sprint precedenti, e in ritardo rispetto a quanto pianificato;
- il tracciamento delle attività relative al PoC non ha lo stesso livello di precisione di quello delle attività documentali.

=== Risoluzioni attuate
- Richiedere l'upgrade gratuito a Jira Standard per progetti open source;
- Notiﬁcare, tramite i canali dedicati, chi debba apportare correzioni così da velocizzare i tempi di approvazione;
- Impegnarsi a fornire commenti di review più precisi:
  - indicando con precisione la natura dell'errore e, se utile, la sua localizzazione all'interno della riga;
  - fornendo una possibile correzione, quando appropriato;
  - nel caso di più occorrenze dello stesso errore, segnalarle tutte. Per evitare ripetizioni, fornire una valutazione della prima occorrenza ed inserire un riferimento a tale conversazione nelle occorrenze successive;
- Per accelerare il lavoro sulle Norme di Progetto, chi ha redatto le Norme di Progetto nel corso degli sprint precedenti continuerà l'aﬃancamento nel corso dello sprint successivo;
- La natura esplorativa del PoC richiede ﬂessibilità nella pianiﬁcazione, ma si sottolinea la necessità di continuare a tracciare le attività per riferimento futuro.

=== Analisi costi di sprint effettivi

#set text(
  size: 10pt
)

#figure(
  table(
    columns: 8,
    fill: (col, row) => if col == 0 and row > 8 or row == 0 {rgb("#bbbbbb")},
    [*Membro*], [*Responsabile*], [*Amministratore*],[*Analista*],[*Progettista*], [*Programmatore*], [*Verificatore*],[*Totale*],
    [Banzato Alessio],   [/],  [3(-1)],    [/],    [/],    [/],   [/], [3(-1)],
    [Carraro\ Riccardo], [/],  [/],    [/],    [/],    [3],   [/], [3],
    [Gardin\ Giovanni],  [/],  [/],    [/],    [3],    [/],   [/], [3],
    [Nardo\ Silvio],     [2(-1)],  [/],    [/],    [/],    [/],   [/], [2(-1)],
    [Oseliero\ Antonio], [/],  [/],    [/],    [/],    [2],   [2], [4],
    [Todesco Mattia],    [/],  [/],    [/],    [2(-1)],    [/],   [/], [2(-1)],
    [Zaccone\ Rosario],  [/],  [/],    [1(-2)],    [/],    [/],   [/], [1(-2)],
    [Totale\ ore ruolo], [2],  [3],    [1],    [5],    [5],   [2], [18],
    [Costo orario],      [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
    [Costo ruolo],       [60,00], [60,00], [25,00], [125,00], [75,00], [30,00], [375,00]
  ),
  caption: "Consuntivo settimo sprint"
)

#set text(
  size: 11pt
)

Diversi ruoli risultano avere un monte ore minore rispetto a quello preventivato, a causa di rallentamenti nella stesura delle Norme di Progetto e, per quanto riguarda l'Analista, un rallentamento dovuto alla mancanza di materiale su cui lavorare: il materiale necessario era infatti presente in un branch di cui non era ancora stata fatta una pull request.

=== Burndown-chart
[da inserire]