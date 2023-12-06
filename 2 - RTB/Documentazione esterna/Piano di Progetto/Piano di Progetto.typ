#import "/template.typ": *

#show: project.with(
  title:"Piano di Progetto",
  subTitle: "Pianificazione, Analisi e Retrospettive",
  authors: (
    "Carraro Riccardo",
    "Zaccone Rosario",
  ),
  showIndex: true,
  showLog: true,
  isExternalUse: true,
);
#set text(font:"New Computer Modern")
#set align(left)
#show "link": word => text[#text(fill:blue, word)]

= Introduzione
Il documento _Piano di progetto_ ha il compito di governare la pianificazione dell'avanzamento del progetto, determinando task e obiettivi da raggiungere e presentando un'analisi critica del lavoro fino a quel momento svolto. L'intento è rendicontare e valutare criticamente l'operato compiuto per  migliorarlo, ove necessario, e gestire in modo efficace ed efficiente le risorse.

Il documento si articola in 5 sezioni:
- *Rischi e loro mitigazione*: dedicata all'analisi dei rischi che possono insorgere con relativi sistemi di mitigazione;
- *Divisione temporale di sviluppo*: dedicata all'analisi della suddivisione temporale dello sviluppo del progetto;
- *Preventivo dei costi di realizzazione*: dedicata all'analisi preventiva dei costi di realizzazione di progetto;
- *Pianificazione del lavoro*: dedicata alla pianificazione delle attività da svolgere nei periodi di sprint;
- *Consuntivo del progetto*: dedicata all'analisi retrospettiva del lavoro svolto, indicando criticità ed eventuali azioni intraprese a fini migliorativi.

== Glossario
Al fine di rendere quanto più chiaro possibile il contenuto dei documenti, e per evitare qualsiasi forma di ambiguità in merito ai termini utilizzati, il gruppo _Error\_418_ fornisce come risorsa web liberamente consultabile, un _*Glossario*_. Ogni ricorrenza di termini tecnici appartenenti al dominio del progetto sarà denotata dalla lettera _g_ al pedice.

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
=== Suddivisione delle ore dei ruoli
=== Preventivo calcolato

= Pianificazione del lavoro
== Introduzione
La pianificazione ricopre un ruolo fondamentale nello sviluppo dell'intero progetto. Svolge il compito di stabilire quali obiettivi raggiungere in periodi di tempo determinati, organizzando le risorse in modo da rendere lo sviluppo efficace ed efficiente. Lo scopo principale deve essere pianificare le azioni da intraprendere nel periodo successivo, definendo tempistiche, modalità e obiettivi.
\
== Metodologia di lavoro Scrum
Il team si è imposto una metodologia di lavoro _agile_ mediante l'applicazizone del framework Scrum, determinando periodi di lavoro di durata fissa terminanti con un'analisi retrospettiva degli stessi. \
Tale approccio è definibile _adattivo_, in grado dunque di adattarsi ad eventuali modifiche in corso d'opera, in merito soprattutto a cambiamenti di specifiche e requisiti.\
L'intero sviluppo è dunque organizzato in iterazioni di lunghezza fissa, denominati in SCRUM come _sprint_. \
L'analisi retrospettiva e il frequente contatto con il Proponente permettono di indirizzare lo sviluppo verso la realizzazione di un prodotto finale che si attenga quanto più possibile ai requisiti desiderati dall'azienda e alle sue aspettative, e una documentazione dettagliata e precisa che evolve e migliora insieme al prodotto.

=== Eventi dettati dal framework
La corretta applicazione del framework comporta il rispetto di determinati impegni, individuabili nello svolgimento di precisi eventi organizzativi quali:
- *Sprint planning*: evento decisionale da tenersi prima dell'avvio dello sprint successivo. In questo incontro vengono stabili gli obiettivi da raggiungere e le task necessarie da compiere entro la fine dello stesso;

- *Daily Scrum meeting*: evento di livellamento ove il team, in un metting della durata molto breve, si aggiorna sullo stato dei lavori e organizza il lavoro del giorno;

- *Sprint review*: al termine dello sprint si compie un'azione di validazione di quanto prodotto, valutando dunque gli obiettivi che sono stati (o meno) raggiunti;

- *Sprint retrospective*: al termine dello sprint si compie un'azione di retrospettiva, analizzando eventuali criticità incontrate e stabilendo i possibili miglioramenti o meccanismi di mitigazione.

=== Organizzazione per sprint
Gli sprint sono periodi di sviluppo di durata fissa entro i quali si cerca di raggiungere obiettivi prefissati. Ciascuno sprint viene stabilito, in termini di scope e obiettivi, in un momento precedente all'avvio dello sprint stesso.\
Error\_418 adotta periodi di sprint di una settimana, ove l'intento è fissare obiettivi concretamente raggiungibili nell'arco di tempo stabilito.\
Al termine di ogni sprint si svolgerà un'analisi retrospettiva con lo scopo di valutare il lavoro svolto e proporre eventuali miglioramenti in caso di criticità riscontrate.\

La pianficazione di uno sprint sarà così composta:
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

#table(
columns: (3fr, 2fr, 2fr, 2fr, 2fr, 2fr),
fill: (col, row) => if col == 0 and row > 8 or row == 0 {gray},
align: center,
inset:7pt ,
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
)
#align(center, text("Tabella 1: preventivo primo sprint"))

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

#table(
columns: (3fr, 2fr, 2fr, 2fr, 2fr, 2fr),
fill: (col, row) => if col == 0 and row > 8 or row == 0 {gray},
align: center,
inset:7pt ,
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
)
#align(center, text("Tabella 3: preventivo secondo sprint"))

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
- meeting con l'azienda Proponente per esporre ipotesi e use case individuati, richiedere chiarimenti ed avanzare oppurtune richieste;
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

#table(
columns: (3fr, 2fr, 2fr, 2fr, 2fr, 2fr, 2fr),
fill: (col, row) => if col == 0 and row > 8 or row == 0 {gray},
align: center,
inset:7pt,
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
)

#align(center, text("Tabella 7: preventivo quarto sprint"))

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
- perfezionamento della stesura degli use case indivduati finora;
- redazione di una prima versione dell'Analisi dei Requisiti;
- valutazione di un'eventuale data per un primo meeting con il professore Cardin per ottenere un feedback sull'Analisi dei Requisiti;
- proseguimento della redazione e aggiornamento del documento di Norme di Progetto;
- proseguimento periodo di studio di Three.js, in particolare finalizzato a:
 - creazione di alcuni scaffali nell'ambiente tridimensionale;
 - implentazione sistema di drag and drop;
 - parametrizzazione degli elementi presenti nell'applicazione.

=== Preventivo costi
Nel quarto sprint il team svolge compiti correttivi incentrati sul miglioramento dei documenti, Analisi dei Requisiti e studio delle nuove tecnologie. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti, al fine di aggiornare il documento di Piano di Progetto;
- *Verificatore*: al fine di verificare la correttezza delle modifiche ai documenti, al fine di effettuare un controllo sulla validità e formulazione degli use case individuati e del documento di Analisi dei Requisiti;
- *Analista*: al fine di perfezionare la stesura degli use case individuati e redatte una prima versione di Analisi dei Requisiti;
- *Progettista*: al fine di condurre uno studio esplorativo sulla libreria Three.js.

In questo periodo, l'assegnazione del ruolo di programmatore è ritenuta precoce.

#set text(
  size: 10pt
)

#table(
columns: (3fr, 2fr, 2fr, 2fr, 2fr, 2fr, 2fr),
fill: (col, row) => if col == 0 and row > 8 or row == 0 {gray},
align: center,
inset:7pt,
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
)

#align(center, text("Tabella 7: preventivo quarto sprint"))

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
Le automazioni rigurdanti il versionamento verranno concluse nello sprint successivo.\
La problematica in merito al contatto con l'azienda vedrà l'intraprendersi di un'azione di sollecito con una seconda mail e successivamente la richiesta di stabilire un nuovo canale di comunicazione.
=== Analisi costi di sprint effettivi
#table(
columns: (3fr, 2fr, 2fr, 2fr, 2fr, 2fr),
fill: (col, row) => {
  if col == 0 and row > 8 or row == 0 {gray}
} ,
align: center,
inset:7pt ,
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
)
#align(center, text("Tabella 2: costo effettivo primo sprint"))
A causa dei rallentamenti incontrati, alcuni ruoli hanno visto un monte ore effettivo inferiore a quanto preventivato:
- Amministratore: il blocco temporaneo della repository e la mancata risposta dell'azienda non hanno permesso la produzione di documenti, limitando così il lavoro del responsabile;

- Analista: la mancata risposta da parte dell'azienda ha impedito agli analisti di iniziare l'analisi dei requisiti, limitando dunque il lavoro alla stesura di domande in merito al dominio tecnologico;

- Verificatore: il mancato avanzamento ha prodotto documentazione ridotta rispetto a quanto preventivato, pertanto il verificatore ha svolto un numero inferiore di ore.

Il ruolo dell'amministratore invece, incaricato di gestire il reparto tecnologico implementando gli automatismi necessari, a causa di difficoltà incontrate nell'implementazione (errori, testing, verifica), ha visto un aumento delle ore rispetto a quanto preventivato.
=== Burndown-chart
[da inserire]
