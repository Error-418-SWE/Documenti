#import "@preview/cetz:0.2.0": *
#import chart

#import "/template.typ": *

#show: project.with(
 title:"Piano di Progetto",
 subTitle: "Pianificazione, analisi e retrospettive",
 authors: (
   "Banzato Alessio",
   "Carraro Riccardo",
   "Gardin Giovanni",
   "Nardo Silvio",
   "Zaccone Rosario",
 ),
 showLog: true,
 showImagesIndex: false,
 isExternalUse: true,
);

#show regex("€ (\d)+"): it => {
  it
  ",00"
}

#show regex("\(-(\d)+\)"): it => {
  text(it, fill: green)
}

#show regex("\(\+(\d)+\)"): it => {
  text(it, fill: red)
}

#let roles = ("Responsabile", "Amministratore", "Analista", "Progettista", "Programmatore", "Verificatore")
#let pal = (red, blue, yellow, olive, orange, aqua, eastern, maroon, fuchsia, green)
#let roles-legend = rect(stroke: 0.5pt + luma(140))[
  #let tuples = roles.zip(pal)
  #stack(
    spacing: 0.75em,
    dir: ltr,
    ..tuples.map(tuple => stack(
      dir: ltr,
      spacing: 0.25em,
      rect(stroke: 0.75pt, fill: tuple.at(1), width: 0.75em, height: 0.75em), tuple.at(0)
    ))
  )
]

#let p = palette.new(colors: pal)
#let role-chart-size = (8, 7)

#let barchart-config = (
  size: role-chart-size,
  mode: "clustered",
  value-key: (1,2),
  bar-style: p,
  legend: "legend.north",
  legend-style: (orientation: ltr, spacing: 0.5, padding: 0.5em, stroke: 0.5pt + luma(140), item: (spacing: 0.5)),
  x-label: "Ore",
  x-tick-step: none,
  labels: ("Preventivate", "Effettive")
)

#let barchart-label-config = (
  anchor: "west",
  padding: .2
)

#let piechart-config = (
  radius: 2,
  inner-radius: 1,
  gap: 1deg,
  slice-style: p,
  label-key: (0),
  value-key: (1),
  outer-label: (content: "%"),
)

#let getMaxFromPlotData(data) = {
  let max = 0
  for datum in data {
    if calc.max(..datum.slice(1)) > max {
      max = calc.max(..datum.slice(1))
    }
  }
  return max
}

#let compute-labels-x-coordinate(data, role-chart-size) = {
  let i = 0
  let x-coordinates = ()
  let max = getMaxFromPlotData(data)
  while(i < data.len()) {
    x-coordinates.push((data.at(i).at(1)*role-chart-size.at(0)/max, data.at(i).at(2)*role-chart-size.at(0)/max))
    i += 1
  }
  return x-coordinates
}

#let compute-labels-y-coordinate(data, role-chart-size) = {
  let i = 0
  let y-coordinates = ()
  while(i < data.len()) {
    y-coordinates.push(((role-chart-size.at(1) - 0.77 - i), (role-chart-size.at(1) - 1.17 - i)))
    i += 1
  }
  return y-coordinates
}

#outline(
  title: "Indice dei grafici",
  target: figure.where(kind: "chart")
)

#pagebreak()

= Introduzione

== Scopo del documento
Il documento _Piano di progetto_ ha il compito di governare la pianificazione dell'avanzamento del progetto, determinando task e obiettivi da raggiungere e presentando un'analisi critica del lavoro fino a quel momento svolto. L'intento è rendicontare e valutare criticamente l'operato compiuto per  migliorarlo, ove necessario, e gestire in modo efficace ed efficiente le risorse.

Il documento si articola in 5 sezioni principali:
- *Panoramica generale*: dedicata all'analisi preventiva dei costi complessivi di realizzazione;
- *Periodi di sviluppo*: dedicata all'analisi della suddivisione temporale dello sviluppo del progetto;
- *Pianificazione del lavoro*: dedicata alla descrizione della metodologia di lavoro adottata;
- *Preventivi di periodo*: dedicata alla pianificazione delle attività da svolgere per ciascuno sprint;
- *Consuntivi di periodo*: dedicata all'analisi retrospettiva del lavoro svolto in ciascuno sprint. Riporta eventuali criticità ed azioni intraprese a fini migliorativi.

== Definizioni
Al fine di rendere quanto più chiaro possibile il contenuto dei documenti, e per evitare qualsiasi forma di ambiguità in merito ai termini utilizzati, il gruppo _Error\_418_ fornisce un _*Glossario*_. Ogni ricorrenza di termini tecnici appartenenti al dominio del progetto sarà denotata dalla lettera _G_ al pedice.

== Riferimenti <riferimenti>
=== Riferimenti normativi <riferimenti-normativi>
- Regolamento di progetto \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_

- Gestione di progetto \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T4.pdf")_

- I processi di ciclo di vita del software \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T2.pdf")_

=== Riferimenti informativi <riferimenti-informativi>
- Capitolato C5: WMS3: Warehouse management 3D \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_

=== Riferimenti a documentazione interna <riferimenti-interni>
- Documento Analisi dei Rischi (v2.0.0)\
  #link("https://github.com/Error-418-SWE/Documenti/blob/main/2%20-%20RTB/Documentazione%20interna/Analisi%20dei%20Rischi_v2.0.0.pdf")

#pagebreak()


= Panoramica generale
Identificati i rischi, le relative contromisure e il calendario di progetto, si è definito, mediante una pianificazione a ritroso, un preventivo iniziale dei costi di realizzazione del progetto.

È corretto evidenziare come i membri del gruppo non siano dotati di esperienza sufficiente per fornire un preventivo corretto e preciso sin dagli inizi dello sviluppo: per tale motivo, il prezzo indicato sarà soggetto a modifiche con l'avanzamento del progetto (seppur mai superando il prezzo preventivato in candidatura).

== Rischi e loro mitigazione
Il documento Analisi dei Rischi (v2.0.0), riportato in @riferimenti-interni, elenca e categorizza i rischi, li analizza e fornisce strumenti di monitoraggio e mitigazione.

== Prospetto orario complessivo
La ripartizione delle ore tiene conto degli obiettivi disciplinari di sviluppo di competenze trasversali nei vari ruoli presenti all'interno del progetto.

#figure(
  table(
    columns: 8,
    [*Membro*],[*Responsabile*],[*Amministratore*],[*Analista*],[*Progettista*],[*Programmatore*],[*Verificatore*],[*Totale*],
    [Banzato], [10], [14], [15], [7], [28], [21], [95],
    [Oseliero], [10], [14], [15], [7], [28], [21], [95],
    [Gardin], [10], [14], [15], [7], [28], [21], [95],
    [Todesco], [10], [14], [15], [7], [28], [21], [95],
    [Carraro], [10], [14], [15], [7], [28], [21], [95],
    [Zaccone], [10], [14], [15], [7], [28], [21], [95],
    [Nardo], [10], [14], [15], [7], [28], [21], [95],
    [Totale ore], [91], [70], [70], [98], [210], [126], [665],
    [Costo\ orario], [€ 30], [€ 20], [€ 25], [€ 25], [€ 15], [€ 15], [],
    [Costo\ ruolo], [€ 2100], [€ 1960], [€ 2625], [€ 1225], [€ 2940], [€ 2205], [€ 13055],
  ),
  caption: "Prospetto orario complessivo per membro e ruolo"
)

#let data = (
  ("Responsabile", 10),
  ("Amministratore", 14),
  ("Analista", 15),
  ("Progettista", 7),
  ("Programmatore", 28),
  ("Verificatore", 21),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo (complessiva)",
  kind: "chart",
  supplement: "Grafico"
)


== Analisi dei ruoli
=== Responsabile
Il Responsabile è un ruolo presente durante l'intero progetto. Il suo compito è quello di gestire il gruppo e di assicurarsi che lo sviluppo proceda secondo le tempistiche predefinite e le aspettative del Committente. Deve inoltre redigere e far rispettare le Norme di Progetto, nonché le linee guida di sviluppo che l'intero gruppo deve rispettare. Essendo il ruolo più costoso, il numero di ore è stato scelto per favorire l'efficienza e non pesare eccessivamente sul costo finale.

=== Amministratore
L'Amministratore è un ruolo presente durante l'intero progetto, in quanto si occupa di predisporre e controllare il corretto utilizzo delle procedure e degli strumenti definiti nelle Norme di Progetto, andando anche a gestire e implementare automatismi, migliorando così l'efficienza del gruppo. Il monte ore scelto è tale, poiché essendo questo un ruolo di controllo, non sono richieste un numero elevato di ore.

=== Analista
L'Analista è il ruolo preposto all'individuazione, redazione, aggiornamento e tracciamento dei requisiti del progetto. Il modello Agile adottato dal gruppo prevede che l'attività di analisi si svolga in modo incrementale, seppur preminente inizialmente, che permetterà la redazione del documento Analisi dei Requisiti ai fini della _Requirements and Technology Baseline_. Pertanto, per il ruolo di Analista il gruppo riserva un numero di ore durante il periodo PB qualora si necessitasse di rivedere o aggiornare i requisiti individuati.

=== Progettista
Il Progettista ha il compito di delineare e documentare l'architettura del prodotto in modo da:
- soddisfare i requisiti raccolti nelle fasi pregresse;
- aiutare il gruppo di sviluppo con una documentazione chiara ed esaustiva.

Nello stabilire l'architettura deve quindi indicare anche quali saranno le tecnologie da utilizzare per la sua implementazione.
Ritenendolo un ruolo impegnativo dal punto di vista temporale, il numero di ore risulta maggiore rispetto ai ruoli precedenti.

=== Programmatore
Il Programmatore ha il compito di tradurre in codice eseguibile l'architettura prodotta dal progettista. Il ruolo prevede un numero di ore molto elevato poiché riteniamo il lavoro più dispendioso a livello temporale rispetto a quello delle altre figure professionali.

=== Verificatore
Il Verificatore è un ruolo presente durante l'intero progetto, che si occupa di mantenere degli standard qualitativi sul lavoro del gruppo: egli deve verificare la correttezza, esaustività e coerenza di tutti i documenti, e nella fase di codifica sarà colui che si occuperà di controllare la qualità del software prodotto. Proprio per questo il totale delle ore risulta essere il secondo più elevato dopo il Programmatore.

== Preventivo calcolato
Il costo totale preventivato è di € 13055.

#pagebreak()

= Periodi di sviluppo
== Introduzione
Il periodo compreso tra l'aggiudicazione del capitolato e la data di consegna del prodotto viene suddiviso in 2 periodi principali dettati dalle revisioni esterne _Requirements and Technology Baseline (RTB)_ e _Product Baseline (PB)_, rispettivamente previste per il 27-01-2024 e il 20-03-2024.\
Vengono pertanto a definirsi i seguenti periodi di sviluppo:
- *Periodo RTB*: dal 06-11-2023 al 26-01-2024;
- *Periodo PB*: dal 27-01-2024 al 20-03-2024.

Risulta ragionevole considerare il periodo di PB maggiormente impegnativo e durante il quale si svolgerà la maggior parte delle ore di lavoro, complici la fine delle lezioni universitarie, il termine della sessione invernale d'esami e l'assenza di festività. Per questo motivo, il gruppo _Error\_418_ ha deciso di suddividere le ore di lavoro in modo da svolgere il 65% delle ore totali durante il periodo PB e il restante 35% durante il periodo RTB.

#grid(
  columns: (1fr, 1fr),
  [
    #set align(bottom)
    #figure(
      table(
        columns: 3,
        [*Periodo*], [*Ore*], [*Percentuale*],
        [RTB], [231], [35%],
        [PB], [434], [65%],
        [Totale], [665], [100%]
      ),
    caption: "Suddivisione oraria per periodo"
    )
  ],
  [
    #set align(center)
    #rect(stroke: 0.5pt + luma(140))[
  #let tuples = ("RTB", "PB").zip(pal)
  #stack(
    spacing: 0.75em,
    dir: ltr,
    ..tuples.map(tuple => stack(
      dir: ltr,
      spacing: 0.25em,
      rect(stroke: 0.75pt, fill: tuple.at(1), width: 0.75em, height: 0.75em), tuple.at(0)
    ))
  )
]

    #let data = (
      ("RTB", 231),
      ("PB", 434),
    )
    #figure({
      canvas({
        import draw: *
        chart.piechart(..piechart-config, radius: 1.5, inner-radius: 0.75,
data)}
      )},
      caption: "Suddivisione oraria per periodo",
      kind: "chart",
      supplement: "Grafico"
    )
  ]
)

== Periodo RTB
- Periodo: dal 06-11-2023 al 26-01-2024 (56 giorni lavorativi);
- Obiettivi di periodo:
  - Analisi dei Requisiti;
  - Esplorazione e definizione dei domini tecnologico e applicativo;
  - Produzione del Proof of Concept (PoC);
  - Redazione documentazione relativa al periodo.

#roles-legend
#grid(
  columns: (1fr, 1fr),
  [
    #set align(bottom)
    #figure(
      caption: "Suddivisione oraria per ruolo (RTB)",
      table(
        columns: 2,
        [*Ruolo*], [*Ore*],
        [Responsabile], [28],
        [Amministratore], [42],
        [Analista], [70],
        [Progettista], [14],
        [Programmatore], [28],
        [Verificatore], [49],
        [Totale], [231],
      )
    )
  ],
  [
    #let data = (
      ("Responsabile", 28),
      ("Amministratore", 42),
      ("Analista", 70),
      ("Progettista", 14),
      ("Programmatore", 28),
      ("Verificatore", 49),
    )
    #figure({
      canvas({
        import draw: *
        chart.piechart(..piechart-config, data)}
      )},
      caption: "Suddivisione oraria per ruolo (RTB)",
      kind: "chart",
      supplement: "Grafico"
    )
  ]
)

== Periodo PB
- Periodo: dal 27-01-2024 al 20-03-2024 (38 giorni lavorativi);
- Obiettivi di periodo:
  - Scelte architetturali e di design;
  - Implementazione del prodotto;
  - Verifica, test e validazione del prodotto;
  - Redazione documentazione relativa al periodo.

#roles-legend
#grid(
  columns: (1fr, 1fr),
  [
    #figure(
      caption: "Suddivisione oraria per ruolo (PB)",
      table(
        columns: 2,
        [*Ruolo*], [*Ore*],
        [Responsabile], [42],
        [Amministratore], [56],
        [Analista], [35],
        [Progettista], [35],
        [Programmatore], [168],
        [Verificatore], [98],
        [Totale], [434],
      )
    )
  ],
  [
    #set align(bottom)
    #let data = (
      ("Responsabile", 42),
      ("Amministratore", 56),
      ("Analista", 35),
      ("Progettista", 35),
      ("Programmatore", 168),
      ("Verificatore", 98),
      )
      #figure({
        canvas({
          import draw: *
          chart.piechart(..piechart-config, data)
        })},
        caption: "Suddivisione oraria per ruolo (PB)",
        kind: "chart",
        supplement: "Grafico"
    )
  ]
)

#pagebreak()

= Pianificazione del lavoro
== Introduzione
La pianificazione ricopre un ruolo fondamentale nello sviluppo dell'intero progetto. Svolge il compito di stabilire quali obiettivi raggiungere in periodi di tempo determinati, organizzando le risorse in modo da rendere lo sviluppo efficace ed efficiente. Lo scopo principale deve essere pianificare le azioni da intraprendere nel periodo successivo, definendo tempistiche, modalità e obiettivi.

== Metodologia di lavoro Scrum
Il gruppo si è imposto una metodologia di lavoro *Agile* mediante l'applicazione del framework Scrum, determinando periodi di lavoro di durata fissa terminanti con un'analisi retrospettiva degli stessi.

Tale approccio è definibile *adattivo*, in grado dunque di adattarsi ad eventuali modifiche in corso d'opera, in merito soprattutto a cambiamenti di specifiche e requisiti.

L'intero sviluppo è dunque organizzato in iterazioni di lunghezza fissa, denominati in Scrum come *sprint*.

L'analisi retrospettiva e il frequente contatto con il Proponente permettono di indirizzare lo sviluppo verso la realizzazione di un prodotto finale che si attenga quanto più possibile ai requisiti desiderati dall'azienda e alle sue aspettative, e una documentazione dettagliata e precisa che evolve e migliora insieme al prodotto.

=== Eventi dettati dal framework
La corretta applicazione del framework comporta il rispetto di determinati impegni, individuabili nello svolgimento di precisi eventi organizzativi quali:
- *Sprint planning*: evento decisionale da tenersi prima dell'avvio dello sprint successivo. In questo incontro vengono stabiliti gli obiettivi da raggiungere e le task necessarie da compiere entro la fine dello stesso;

- *Sprint review*: al termine dello sprint si compie un'azione di revisione del progresso, valutando gli obiettivi che sono stati (o meno) raggiunti;

- *Sprint retrospective*: al termine dello sprint si compie un'azione di retrospettiva, analizzando eventuali criticità incontrate e stabilendo i possibili miglioramenti o meccanismi di mitigazione.

=== Organizzazione per sprint
Gli sprint sono periodi di sviluppo di durata fissa entro i quali si cerca di raggiungere obiettivi prefissati. Ciascuno sprint viene stabilito, in termini di scope e obiettivi, in un momento precedente all'avvio dello sprint stesso.

Il gruppo _Error\_418_ adotta periodi di sprint di una settimana, ove l'intento è fissare obiettivi concretamente raggiungibili nell'arco di tempo stabilito. Festività o esigenze organizzative peculiari potrebbero indurre variazioni nella durata di singoli sprint.

La pianificazione di uno sprint sarà così composta:
- *Obiettivi prefissati*: gli obiettivi che si intende raggiungere entro il termine dello sprint;
- *Preventivo costi*: preventivo dei costi dello sprint, calcolato in base alle figure che vi operano e alla loro quantità di ore di lavoro previste.

Essenziale in questa organizzazione è l'analisi retrospettiva al termine di ogni sprint. Essa permette di valutare in modo critico eventuali mancanze, criticità o errori che possono in questo modo venir affrontati per trovare soluzioni che ne mitighino gli effetti. È inoltre utile per identificare buone prassi e strategie che hanno portato a risultati positivi, in modo da poterle replicare in futuro.

La retrospettiva di uno sprint si articolerà in:
- *Obiettivi raggiunti*: obiettivi fissati e concretamente raggiunti al termine dello sprint;
- *Obiettivi mancati*: obiettivi non raggiunti al termine dello sprint;
- *Problematiche insorte*: analisi delle criticità riscontrate durante lo sprint, in modo da aver chiare le motivazioni che le hanno causate;
- *Risoluzioni attuate*: azioni compiute in risposta alle problematiche riscontrate durante lo sprint, in modo che in futuro si possano prevenire o mitigare;
- *Panoramica dei costi effettivi* (consuntivo): al termine dello sprint sarà possibile verificare se i costi preventivati rispecchino i costi effettivi, in base alle ore svolte per ogni ruolo;
- *Monitoraggio costi e ore*: tabelle che riportano le ore e il budget rimanenti per ogni ruolo e complessivamente.

#pagebreak()

= Preventivi di periodo
Il preventivo di ogni sprint esprime gli obiettivi e il relativo costo preventivato, secondo un'attività di pianificazione mirata al conseguimento efficace ed efficiente degli obiettivi di periodo.

== Sprint 1 dal 06-11-2023 al 13-11-2023

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
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Carraro],     [0],     [4],     [0],     [0],     [0],     [0],     [4],
    [Gardin],     [0],     [4],     [0],     [0],     [0],     [0],     [4],
    [Nardo],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Oseliero],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Todesco],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Totale ore],     [3],     [8],     [6],     [0],     [0],     [6],     [23],
    [Costo ruolo],     [90],     [160],     [150],     [0],     [0],     [90],     [490],
  ),
  caption: "Prospetto del preventivo, sprint 1"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 8),
  ("Analista", 6),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 6),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 1",
  kind: "chart",
  supplement: "Grafico"
)


== Sprint 2 dal 13-11-2023 al 20-11-2023

=== Obiettivi prefissati
Gli obiettivi del secondo sprint si concentrano sull'individuazione degli Use Case del progetto, sul perfezionamento delle automazioni e sulla stesura iniziale delle Norme di Progetto.

Gli obiettivi dello sprint 2 sono:
- riconfigurazione della repository;
- stesura della sezione _Introduzione_ del documento Norme di Progetto;
- stesura della sezione _Processi di supporto_ del documento Norme di Progetto;
- perfezionamento delle automazioni per la compilazione dei documenti;
- implementazione delle automazioni per il versionamento dei documenti;
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
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Carraro],     [0],     [4],     [0],     [0],     [0],     [0],     [4],
    [Gardin],     [0],     [4],     [0],     [0],     [0],     [0],     [4],
    [Nardo],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Oseliero],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Todesco],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Totale ore],     [3],     [8],     [9],     [0],     [0],     [3],     [23],
    [Costo ruolo],     [90],     [160],     [225],     [0],     [0],     [45],     [520],
  ),
  caption: "Prospetto del preventivo, sprint 2"
)
#let data = (
        ("Responsabile", 3),
        ("Amministratore", 8),
        ("Analista", 9),
        ("Progettista", 0),
        ("Programmatore", 0),
        ("Verificatore", 3),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 2",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 3 dal 20-11-2023 al 27-11-2023
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

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Carraro],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Nardo],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Oseliero],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Todesco],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Zaccone],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Totale ore],     [3],     [6],     [8],     [3],     [0],     [3],     [23],
    [Costo ruolo],     [90],     [120],     [200],     [75],     [0],     [45],     [530],
  ),
  caption: "Prospetto del preventivo, sprint 3"
)
#let data = (
        ("Responsabile", 3),
        ("Amministratore", 6),
        ("Analista", 8),
        ("Progettista", 3),
        ("Programmatore", 0),
        ("Verificatore", 3),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 3",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 4 dal 27-11-2023 al 04-12-2023

=== Obiettivi prefissati
Gli obiettivi del quarto sprint si concentrano sull'aggiornamento e perfezionamento dei documenti redatti negli scorsi sprint, sulla finalizzazione di una prima versione
del documento Analisi dei Requisiti e sull'esplorazione delle nuove tecnologie.

Gli obiettivi dello sprint 4 sono:
- perfezionamento della stesura degli Use Case individuati finora;
- redazione di una prima versione dell'Analisi dei Requisiti;
- scelta di una data per un eventuale primo meeting con il professore Cardin per ottenere un feedback sull'Analisi dei Requisiti;
- proseguimento della redazione e aggiornamento del documento Norme di Progetto;
- proseguimento periodo di studio di Three.js, finalizzato a:
 - creazione di alcuni scaffali nell'ambiente tridimensionale;
 - implementazione sistema di _drag and drop_;
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
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Carraro],     [0],     [0],     [3],     [0],     [1],     [0],     [4],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Nardo],     [0],     [0],     [0],     [1],     [2],     [0],     [3],
    [Oseliero],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Todesco],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Zaccone],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Totale ore],     [3],     [6],     [7],     [1],     [3],     [3],     [23],
    [Costo ruolo],     [90],     [120],     [175],     [25],     [45],     [45],     [500],
  ),
  caption: "Prospetto del preventivo, sprint 4"
)
#let data = (
        ("Responsabile", 3),
        ("Amministratore", 6),
        ("Analista", 7),
        ("Progettista", 1),
        ("Programmatore", 3),
        ("Verificatore", 3),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 4",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 5 dal 04-12-2023 al 11-12-2023

=== Obiettivi prefissati
Gli obiettivi del quinto sprint si concentrano sull'aggiornamento e perfezionamento dei documenti redatti negli scorsi sprint, sulla finalizzazione di una prima versione
del documento Analisi dei Requisiti e sullo sviluppo dei primi PoC.

Gli obiettivi dello sprint 5 sono:
- perfezionamento del sistema di _drag and drop_ nel PoC;
- creazione degli scaffali nel PoC;
- creazione ambiente Docker;
- svolgere meeting con il Professor Cardin in merito all'Analisi dei Requisiti;
- perfezionare e aggiornare il documento Norme di Progetto;
- aggiornamento del documento Analisi dei Requisiti, introducendo i requisiti non funzionali;
- informarsi sul documento Piano di Qualifica;
- aggiornare vecchi documenti con il nuovo template;
- migliorare affidabilità GitHub Actions;
- redigere del Glossario.

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

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Carraro],     [3],     [0],     [0],     [0],     [2],     [0],     [5],
    [Gardin],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Nardo],     [0],     [3],     [0],     [0],     [2],     [0],     [5],
    [Oseliero],     [0],     [0],     [0],     [2],     [2],     [0],     [4],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Zaccone],     [0],     [0],     [0],     [2],     [2],     [0],     [4],
    [Totale ore],     [3],     [3],     [8],     [4],     [8],     [3],     [29],
    [Costo ruolo],     [90],     [60],     [200],     [100],     [120],     [45],     [615],
  ),
  caption: "Prospetto del preventivo, sprint 5"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 3),
  ("Analista", 8),
  ("Progettista", 4),
  ("Programmatore", 8),
  ("Verificatore", 3),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 5",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 6 dal 11-12-2023 al 18-12-2023

=== Obiettivi prefissati
Gli obiettivi del sesto sprint si focalizzano sul miglioramento dei PoC e dei diversi documenti. Nel dettaglio:
- avanzare con la redazione del PoC "A" integrando il funzionamento dei bin;
- approfondire e migliorare l'utilizzo di Docker nel PoC corrispondente;
- migliorare le GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- proseguire con il lavoro sul documento Norme di Progetto;
- redigere introduzione del documento Piano di Qualifica;
- adeguare l'Analisi dei Requisiti in funzione di quanto emerso durante lo scorso meeting con il Professor Cardin;
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
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Carraro],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Gardin],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Nardo],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Oseliero],     [0],     [0],     [0],     [1],     [3],     [0],     [4],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Zaccone],     [0],     [0],     [0],     [1],     [3],     [0],     [4],
    [Totale ore],     [3],     [3],     [8],     [2],     [6],     [3],     [25],
    [Costo ruolo],     [90],     [60],     [200],     [50],     [90],     [45],     [535],
  ),
  caption: "Prospetto del preventivo, sprint 6"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 3),
  ("Analista", 8),
  ("Progettista", 2),
  ("Programmatore", 6),
  ("Verificatore", 3),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 6",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 7 dal 18-12-2023 al 25-12-2023

=== Obiettivi prefissati
Gli obiettivi del settimo sprint si focalizzano sul completamento del PoC A, terminare l'analisi dei requisiti e in generale sull'avanzamento dei documenti e miglioramento delle automazioni. Nel dettaglio gli obiettivi posti sono:
- creazione di un PoC per il front-end e realizzazione di un PoC definitivo comprendente tutto il lavoro svolto finora;
- espansione del Piano di Qualifica con l'individuazione delle metriche da utilizzare;
- aggiornamento delle Norme di Progetto;
- completamento del documento Analisi dei Requisiti con:
  - implementazione del tracciamento requisito-fonte;
  - revisione generale del documento per verificare la presenza e correttezza di tutti gli Use Case e requisiti necessari.
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

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [4],     [0],     [0],     [0],     [0],     [4],
    [Carraro],     [0],     [0],     [0],     [0],     [3],     [0],     [3],
    [Gardin],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Nardo],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Oseliero],     [0],     [0],     [0],     [0],     [2],     [2],     [4],
    [Todesco],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Totale ore],     [3],     [4],     [3],     [6],     [5],     [2],     [23],
    [Costo ruolo],     [90],     [80],     [75],     [150],     [75],     [30],     [500],
  ),
  caption: "Prospetto del preventivo, sprint 7"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 4),
  ("Analista", 3),
  ("Progettista", 6),
  ("Programmatore", 5),
  ("Verificatore", 2),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 7",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 8 dal 25-12-2023 al 01-01-2024

=== Obiettivi prefissati <obiettivi8>
Gli obiettivi dell'ottavo sprint si incentrano sul completamento delle attività rimaste sospese nel settimo sprint, e sull'avanzamento del documento Norme di Progetto, oltre che sul miglioramento di alcuni aspetti di attività già concluse. ,, gli obiettivi prefissati per questo sprint sono:

- miglioramento del Glossario:
  - rendere _case insensitive_ l'individuazione dei termini;
  - implementare la gestione di plurali e acronimi.
- proseguimento del documento Analisi dei Requisiti con:
  - implementazione tracciamento requisito-fonte;
  - miglioramento della resa grafica dei diagrammi UML tramite la loro conversione in SVG.
- proseguimento del documento Norme di Progetto, recuperando i capitoli non scritti nello sprint precedente e espandendone altri;
- perfezionamento del PoC finale;
- miglioramento delle GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- studio e confronto delle tecnologie riguardanti le API (Next.js e Express.js);
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
  - migliorare il Glossario come indicato nel primo punto della.
- *Analista*: al fine di:
  - aggiungere il tracciamento requisito-fonte nel documento Analisi dei Requisiti;
  - convertire i diagrammi UML in SVG.
- *Progettista*: al fine di studiare e confrontare le tecnologie per l'implementazione delle API;
- *Programmatore*: al fine di proseguire con l'implementazione del PoC finale;
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le Norme di Progetto;
  - realizzare una dashboard per il monitoraggio delle metriche.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Carraro],     [0],     [0],     [0],     [0],     [3],     [0],     [3],
    [Gardin],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Nardo],     [4],     [0],     [0],     [0],     [0],     [0],     [4],
    [Oseliero],     [0],     [0],     [0],     [0],     [0],     [4],     [4],
    [Todesco],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Totale ore],     [4],     [3],     [3],     [6],     [3],     [4],     [23],
    [Costo ruolo],     [120],     [60],     [75],     [150],     [45],     [60],     [510],
  ),
  caption: "Prospetto del preventivo, sprint 8"
)
#let data = (
  ("Responsabile", 4),
  ("Amministratore", 3),
  ("Analista", 3),
  ("Progettista", 6),
  ("Programmatore", 3),
  ("Verificatore", 4),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 8",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 9 dal 01-01-2024 al 08-01-2024

=== Obiettivi prefissati <obiettivi9>
Gli obiettivi dell'ottavo sprint si incentrano sul completamento delle attività rimaste sospese nell'ottavo sprint, sulla revisione dei documenti e del PoC in vista della valutazione RTB. , gli obiettivi prefissati per questo sprint sono:

- estensione e revisione del documento Norme di Progetto;
- correzione degli errori riscontrati in alcuni UC nel documento Analisi dei Requisiti, compreso l'aggiornamento dei diagrammi UML associati;
- realizzazione di una dashboard per monitorare le metriche definite nel Piano di Qualifica;
- revisione dei documenti prodotti finora;
- risoluzione dei problemi legati all'automazione per il versionamento dei documenti;
- ripresa dei contatti con il Proponente tramite l'invio di una comunicazione di aggiornamento corredata da un video demo del PoC.

=== Preventivo costi
Gli obiettivi del nono sprint riguardano i seguenti ruoli:
- *Responsabile*: al fine di:
  - coordinare le attività e proseguire la redazione delle Norme di Progetto;
  - contattare il Proponente fornendo aggiornamenti sull'avanzamento dei lavori.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento Piano di Progetto;
  - gestire GitHub e Jira;
  - migliorare le GitHub Actions individuando e rimuovendo bug;
  - realizzare una dashboard per il monitoraggio delle metriche.
- *Analista*: al fine di correggere gli errori riscontrati in alcuni UC nel documento Analisi dei Requisiti;
- *Verificatore*: al fine di:
  - revisionare i documenti prodotti nel corso degli sprint precedenti;
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le Norme di Progetto.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [5],     [0],     [0],     [0],     [0],     [5],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [4],     [4],
    [Gardin],     [0],     [5],     [0],     [0],     [0],     [0],     [5],
    [Nardo],     [0],     [0],     [0],     [0],     [0],     [4],     [4],
    [Oseliero],     [0],     [0],     [5],     [0],     [0],     [0],     [5],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [4],     [4],
    [Zaccone],     [4],     [0],     [0],     [0],     [0],     [0],     [4],
    [Totale ore],     [4],     [10],     [5],     [0],     [0],     [12],     [31],
    [Costo ruolo],     [120],     [200],     [125],     [0],     [0],     [180],     [625],
  ),
  caption: "Prospetto del preventivo, sprint 9"
)
#let data = (
  ("Responsabile", 4),
  ("Amministratore", 10),
  ("Analista", 5),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 12),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 9",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 10 dal 08-01-2024 al 14-01-2024

=== Obiettivi prefissati

Gli obiettivi del decimo sprint vertono sulla revisione dei documenti in preparazione per il colloquio RTB. , gli obiettivi prefissati per questo sprint sono:

- verificare la correttezza dei documenti redatti finora;
- identificare e correggere le cause del problema prestazionale del PoC;
- introdurre la compilazione automatica del documento a seguito dell'aggiornamento manuale di un changelog;
- ampliare la dashboard di monitoraggio con nuove visualizzazioni;
- preparare la presentazione a supporto della valutazione RTB in Google Slides.

La durata dello sprint è inferiore di 1 giorno rispetto alla norma.

=== Preventivo costi

L'attività prevalente è la revisione documentale. I ruoli attivi durante questo sprint sono:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - redarre la presentazione a supporto della valutazione RTB.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento Piano di Progetto;
  - aggiornare le visualizzazioni della dashboard di monitoraggio;
  - gestire GitHub e Jira.
- *Analista*: al fine di:
  - ultimare la revisione del documento Analisi dei Requisiti.
- *Programmatore*: al fine di:
  - identificare e correggere le cause del problema prestazionale del PoC.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le Norme di Progetto;
  - ricontrollare i documenti prodotti e correggere eventuali errori riscontrati.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [2],     [2],
    [Gardin],     [0],     [2],     [0],     [0],     [0],     [0],     [2],
    [Nardo],     [0],     [0],     [0],     [0],     [2],     [0],     [2],
    [Oseliero],     [0],     [0],     [2],     [0],     [0],     [0],     [2],
    [Todesco],     [0],     [0],     [0],     [0],     [2],     [0],     [2],
    [Zaccone],     [2],     [0],     [0],     [0],     [0],     [3],     [5],
    [Totale ore],     [2],     [2],     [2],     [0],     [4],     [8],     [18],
    [Costo ruolo],     [60],     [40],     [50],     [0],     [60],     [120],     [330],
  ),
  caption: "Prospetto del preventivo, sprint 10"
)
#let data = (
  ("Responsabile", 2),
  ("Amministratore", 2),
  ("Analista", 2),
  ("Progettista", 0),
  ("Programmatore", 4),
  ("Verificatore", 8),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 10",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 11 dal 14-01-2024 al 21-01-2024

=== Obiettivi prefissati

Gli obiettivi dell'undicesimo sprint si incentrano sulla preparazione per il colloquio RTB oltre che sulla revisione di alcuni aspetti di attività già concluse. Gli obiettivi prefissati per questo sprint sono:

- aggiornare il Piano di Qualifica con nuove metriche individuate riguardanti:
  - budget utilizzato;
  - ore rimanenti.
- rimuovere Express dal PoC a seguito del feedback del Professor Cardin;
- registrazione di un video dimostrazione del PoC destinato al proponente;
- creazione di un collegamento tra Jira e Grafana per il cruscotto di controllo della qualità;
- ultimare il documento Analisi dei Requisiti con alcune modifiche minori agli Use Cases;
- verificare la correttezza dei documenti redatti finora;
- preparare la candidatura per il colloquio RTB:
  - Redigere nuova lettera di presentazione con aggiornamento di preventivo;
  - Continuare la revisione dei documenti.

=== Preventivo costi

Sono state assegnate ore al ruolo di Verificatore e Analista a scapito di quello di Programmatore in quanto il PoC risulta ormai ultimato:

- *Responsabile*: al fine di coordinare le attività.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento Piano di Progetto;
  - gestire GitHub e Jira.
- *Analista*: al fine di:
  - ultimare alcune modifiche al documento Analisi dei Requisiti;
  - ricontrollare interamente il documento di Analisi dei Requisiti.
- *Progettista*: al fine di mettere per iscritto le motivazioni che hanno portato alla scelta delle tecnologie utilizzate nel PoC.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le Norme di Progetto;
  - ricontrollare i documenti prodotti e correggere eventuali errori riscontrati;
  - inserire nel Piano di Qualifica alcune metriche nuove.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Carraro],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Nardo],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Oseliero],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Todesco],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Totale ore],     [3],     [3],     [4],     [3],     [0],     [6],     [19],
    [Costo ruolo],     [90],     [60],     [100],     [75],     [0],     [90],     [415],
  ),
  caption: "Prospetto del preventivo, sprint 11"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 3),
  ("Analista", 4),
  ("Progettista", 3),
  ("Programmatore", 0),
  ("Verificatore", 6),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 11",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 12 dal 21-01-2024 al 28-01-2024

=== Obiettivi prefissati

Gli obiettivi del dodicesimo sprint riguardano la partecipazione al colloquio RTB, in data 25/01/2024 alle ore 8:40.

In questo sprint inizia la sessione d'esame invernale. Gli obiettivi prefissati per questo sprint sono:
- estensione dei termini di Glossario;
- aggiunta di grafici significativi al Piano di Progetto, come ad esempio la Suddivisione oraria per ruolo, mediante il pacchetto `plotst` di Typst;
- correzione minore della tabella che riporta il computo dei requisiti totali nel documento di Analisi dei Requisiti;
- ripasso generale individuale e collettivo prima del colloquio RTB.

=== Preventivo costi

Dato lo scope ridotto del lavoro, questo sprint impiega un numero di ore inferiore rispetto agli sprint precedenti. I ruoli attivi durante questo sprint sono:
- *Responsabile*: al fine di coordinare le attività.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento Piano di Progetto.
- *Progettista*: al fine di estendere i termini del Glossario.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le Norme di Progetto;
  - ricontrollare i documenti prodotti e correggere eventuali errori riscontrati.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [1],     [0],     [0],     [1],
    [Carraro],     [0],     [0],     [0],     [1],     [0],     [0],     [1],
    [Gardin],     [0],     [0],     [0],     [1],     [0],     [0],     [1],
    [Nardo],     [1],     [0],     [0],     [0],     [0],     [0],     [1],
    [Oseliero],     [0],     [0],     [0],     [0],     [0],     [1],     [1],
    [Todesco],     [0],     [1],     [0],     [0],     [0],     [0],     [1],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [1],     [1],
    [Totale ore],     [1],     [1],     [0],     [3],     [0],     [2],     [7],
    [Costo ruolo],     [30],     [20],     [0],     [75],     [0],     [30],     [155],
  ),
  caption: "Prospetto del preventivo, sprint 12"
)
#let data = (
  ("Responsabile", 1),
  ("Amministratore", 1),
  ("Analista", 0),
  ("Progettista", 3),
  ("Programmatore", 0),
  ("Verificatore", 2),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 12",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 13 dal 28-01-2024 al 04-02-2024

=== Obiettivi prefissati
Nessuno che esuli dalla normale amministrazione di progetto. Il gruppo attende la valutazione del colloquio RTB e si prepara per la sessione d'esame.

=== Preventivo costi
Questo sprint impiega:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - organizzare il lavoro in reazione al feedback, se ricevuto.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento Piano di Progetto.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Gardin],     [2],     [0],     [0],     [0],     [0],     [0],     [2],
    [Nardo],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Oseliero],     [0],     [1],     [0],     [0],     [0],     [0],     [1],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Totale ore],     [2],     [1],     [0],     [0],     [0],     [0],     [3],
    [Costo ruolo],     [60],     [20],     [0],     [0],     [0],     [0],     [80],
  ),
  caption: "Prospetto del preventivo, sprint 13"
)
#let data = (
  ("Responsabile", 2),
  ("Amministratore", 1),
  ("Analista", 0),
  ("Progettista", 0),
  ("Programmatore", 0),
  ("Verificatore", 0),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 13",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 14 dal 04-02-2024 al 11-02-2024

=== Obiettivi prefissati
Il feedback ricevuto dopo il colloquio RTB con il Professor Cardin ha evidenziato la necessità di una profonda revisione del documento di Analisi dei Requisiti, che pertanto è il focus principale di questo sprint. Gli obiettivi prefissati per questo sprint sono:
- revisione, correzione ed estensione del documento Analisi dei Requisiti secondo il feedback ricevuto;
- preparazione in vista del colloquio RTB con il Professor Vardanega (data da definire);
- inclusione nella dashboard di monitoraggio delle metriche individuate nel corso dello sprint precedente;
- estensione dei termini di Glossario;
- invio aggiornamento sullo stato del progetto al Proponente.

=== Preventivo costi

Questo sprint impiega:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - contattare il Proponente fornendo aggiornamenti sull'avanzamento dei lavori.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento Piano di Progetto;
  - aggiornare la dashboard di monitoraggio.
- *Analista*: al fine di implementare le correzioni e le estensioni al documento Analisi dei Requisiti;
- *Progettista*: al fine di estendere i termini del Glossario.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le Norme di Progetto;
  - ricontrollare i documenti prodotti e correggere eventuali errori riscontrati.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Carraro],     [0],     [1],     [1],     [0],     [0],     [2],     [4],
    [Gardin],     [3],     [0],     [2],     [0],     [0],     [0],     [5],
    [Nardo],     [0],     [0],     [2],     [0],     [0],     [3],     [5],
    [Oseliero],     [0],     [2],     [0],     [0],     [0],     [2],     [4],
    [Todesco],     [0],     [0],     [0],     [1],     [0],     [3],     [4],
    [Zaccone],     [0],     [0],     [0],     [1],     [0],     [3],     [4],
    [Totale ore],     [3],     [3],     [8],     [2],     [0],     [13],     [29],
    [Costo ruolo],     [90],     [60],     [200],     [50],     [0],     [195],     [595],
  ),
  caption: "Prospetto del preventivo, sprint 14"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 3),
  ("Analista", 8),
  ("Progettista", 2),
  ("Programmatore", 0),
  ("Verificatore", 13),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 14",
  kind: "chart",
  supplement: "Grafico"
)

#pagebreak()

= Consuntivi di periodo

Il consuntivo di ogni sprint permette di avere una valutazione critica dell'avanzamento dello sviluppo, valutando in modo oggettivo i punti positivi e negativi dello sprint terminato.

Questa fase di retrospettiva è essenziale al fine di individuare possibili miglioramenti e di analizzare se la pianificazione ideata all'inizio dello sprint sia stata concreta ed efficace.


== Sprint 1 dal 06-11-2023 al 13-11-2023

=== Obiettivi raggiunti
- Revisione preventivo costi con aggiornamento della suddivisione delle ore e conseguente riduzione del costo totale;
- Implementazione di automazioni per la compilazione dei documenti;
- Stesura delle domande in merito al dominio tecnologico del capitolato.

=== Obiettivi mancati
- Riconfigurazione della repository;
- Implementazione di automazioni per il versionamento dei documenti;
- Contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- Contatto con l'azienda Proponente per fissare un primo meeting di analisi.

=== Problematiche
A causa di una sottostima del carico di lavoro per l'implementazione delle automazioni tramite GitHub Actions, alcuni obiettivi sono stati mancati, creando un effetto a catena che ha temporaneamente bloccato il caricamento di documenti nella repository.

Un altro problema riguarda la comunicazione con l'azienda Proponente: sfortunatamente, la mail inviata non ha ricevuto riscontro in tempo, impedendo di procedere ulteriormente con l'analisi dei requisiti e la programmazione di un meeting con l'azienda.

=== Risoluzioni attuate
Le automazioni riguardanti il versionamento verranno concluse nello sprint successivo.

La problematica in merito al contatto con l'azienda vedrà l'intraprendersi di un'azione di sollecito con una seconda mail, e successivamente la richiesta di stabilire un nuovo canale di comunicazione.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [2 (-1)],     [2 (-1)],
    [Carraro],     [0],     [4],     [0],     [0],     [0],     [0],     [4],
    [Gardin],     [0],     [4],     [0],     [0],     [0],     [0],     [4],
    [Nardo],     [0],     [0],     [0],     [0],     [0],     [2 (-1)],     [2 (-1)],
    [Oseliero],     [2 (-1)],     [4 (+4)],     [0],     [0],     [0],     [0],     [6 (+3)],
    [Todesco],     [0],     [0],     [2 (-1)],     [0],     [0],     [0],     [2 (-1)],
    [Zaccone],     [0],     [0],     [2 (-1)],     [0],     [0],     [0],     [2 (-1)],
    [Totale ore],     [2 (-1)],     [12 (+4)],     [4 (-2)],     [0],     [0],     [4 (-2)],     [22 (-1)],
    [Costo ruolo],     [60 (-30)],     [240 (+80)],     [100 (-50)],     [0],     [0],     [60 (-30)],     [460 (-30)],
  ),
  caption: "Prospetto del consuntivo, sprint 1"
)
#let data = (
  ("Responsabile", 3, 2),
  ("Amministratore", 8, 12),
  ("Analista", 6, 4),
  ("Progettista", 0, 0),
  ("Programmatore", 0, 0),
  ("Verificatore", 6, 4),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 1",
  kind: "chart",
  supplement: "Grafico"
)

A causa dei rallentamenti incontrati, alcuni ruoli hanno visto un monte ore effettivo inferiore a quanto preventivato:
- Responsabile: il blocco temporaneo della repository e la mancata risposta dell'azienda non hanno permesso la produzione di documenti, limitando così il lavoro del Responsabile;

- Analista: la mancata risposta da parte dell'azienda ha impedito agli analisti di iniziare l'analisi dei requisiti, limitando dunque il lavoro alla stesura di domande in merito al dominio tecnologico;

- Verificatore: il mancato avanzamento ha prodotto documentazione ridotta rispetto a quanto preventivato, pertanto il Verificatore ha svolto un numero inferiore di ore.

Il ruolo dell'Amministratore, invece, ha visto un aumento delle ore rispetto a quanto preventivato, a causa di difficoltà incontrate nell'implementazione delle automazioni (errori, testing, verifica).

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [68], [€ 2040],
    [Amministratore], [86], [€ 1720],
    [Analista], [101], [€ 2525],
    [Progettista], [49], [€ 1225],
    [Programmatore], [196], [€ 2940],
    [Verificatore], [143], [€ 2145],
    [Rimanente], [643], [€ 12595],
  ),
  caption: "Monitoraggio sprint 1"
)


== Sprint 2 dal 13-11-2023 al 20-11-2023

=== Obiettivi raggiunti
- Riconfigurazione della repository;
- Stesura della sezione _Introduzione_ del documento Norme di Progetto;
- Stesura della sezione _Processi di supporto_ del documento Norme di Progetto;
- Perfezionamento delle automazioni per la compilazione dei documenti;
- Implementazione delle automazioni per il versionamento dei documenti;
- Contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- Meeting con l'azienda Proponente per riflettere sull'analisi dei requisiti e sulle tecnologie da usare;
- Inizio dell'individuazione e della stesura degli Use Case.

=== Obiettivi mancati
Gli obiettivi sono stati tutti raggiunti, considerando anche che molti erano obiettivi mancati dello sprint precedente.

=== Problematiche
- Il gruppo ha notato la mancanza di una struttura comune nei verbali, che porta a documenti senza una precisa convenzione e rallentamenti in fase di redazione;
- Sono emerse difficoltà nelle modalità di utilizzo della repository, nonostante sia stato dedicato del tempo per la formazione;
- Scarsa reattività in fase di review.

=== Risoluzioni attuate
- Per risolvere la problematica di una mancanza di struttura nei verbali, si sono fissate delle convenzioni da seguire nel documento Norme di Progetto;
- Per formare meglio il gruppo sulle modalità di utilizzo della repository, è stato dedicato tempo in più per fornire tutorial video e testuali a supporto del gruppo;
- Per ovviare alla scarsa reattività in fase di review, il gruppo prende la responsabilità di visionare spesso la casella mail personale per capire quando c'è bisogno di una review o di risolvere una conversation GitHub, oltre a sollecitare i Verificatori via i canali di comunicazione interni del gruppo in caso di mancate revisioni.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [2 (-1)],     [2 (-1)],
    [Carraro],     [0],     [5 (+1)],     [0],     [0],     [0],     [0],     [5 (+1)],
    [Gardin],     [0],     [4],     [0],     [0],     [0],     [0],     [4],
    [Nardo],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Oseliero],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Todesco],     [0],     [1 (+1)],     [3],     [0],     [0],     [0],     [4 (+1)],
    [Zaccone],     [0],     [2 (+2)],     [3],     [0],     [0],     [0],     [5 (+2)],
    [Totale ore],     [3],     [12 (+4)],     [9],     [0],     [0],     [2 (-1)],     [26 (+3)],
    [Costo ruolo],     [90],     [240 (+80)],     [225],     [0],     [0],     [30 (-15)],     [585 (+65)],
  ),
  caption: "Prospetto del consuntivo, sprint 2"
)
#let data = (
  ("Responsabile", 3, 3),
  ("Amministratore", 8, 12),
  ("Analista", 9, 9),
  ("Progettista", 0, 0),
  ("Programmatore", 0, 0),
  ("Verificatore", 3, 2),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 2",
  kind: "chart",
  supplement: "Grafico"
)

A causa delle problematiche incontrate, alcuni ruoli hanno visto un monte ore effettivo diverso a quanto preventivato:
- Amministratore: la scarsa comprensione delle modalità di utilizzo della repository da parte dei membri del gruppo ha portato gli Amministratori a dedicare delle ore in più mirate al perfezionamento della formazione dei membri del gruppo;

- Verificatore: la scarsa reattività in fase di review ha portato un impegno inferiore alle attività di revisione.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [65], [€ 1950],
    [Amministratore], [74], [€ 1480],
    [Analista], [92], [€ 2300],
    [Progettista], [49], [€ 1225],
    [Programmatore], [196], [€ 2940],
    [Verificatore], [141], [€ 2115],
    [Rimanente], [617], [€ 12010],
  ),
  caption: "Monitoraggio sprint 2"
)


== Sprint 3 dal 20-11-2023 al 27-11-2023

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

=== Problematiche

Nonostante la realizzazione soddisfacente della maggior parte degli obiettivi concordati, sono emerse alcune criticità durante l'implementazione del progetto:

- si è riscontrata una pianificazione non ottimale e superficiale, attribuibile alla mancanza di un dettagliato processo di pianificazione durante la riunione precedente l'avvio dello sprint;
- sono sorti problemi a causa della mancata definizione di standard per la creazione dei grafici di Gantt e burndown, comportando una stesura parziale dei paragrafi nel documento Piano di Progetto;
- la durata dei meeting ha superato le aspettative a causa di alcune inefficienze temporali;
- il gruppo ha rilevato la mancanza di standard per designare le persone responsabili della redazione dei verbali durante lo sprint.

=== Risoluzioni attuate
Le risoluzioni attuate per risolvere i problemi citati in precedenza si concentrano su un'organizzazione e un'attenzione maggiore nella fase di pianificazione, oltre alla definizione di standard relativi ai grafici da inserire nei documenti e relativi allo svolgimento dei meeting e redazione dei rispettivi verbali. :

- è stata prestata una maggiore attenzione nella pianificazione del nuovo sprint, introducendo nella board retrospettiva di Miro una bacheca relativa alle task da svolgere, che sono state tradotte fin da subito in ticket di Jira e assegnati ai rispettivi ruoli;
- la durata massima dei meeting di retrospettiva è stata fissata a 90 minuti (_soft limit_);
- sono stati definiti degli standard per la realizzazione dei grafici, adottando quelli proposti da Jira, ma gestendo meglio la pianificazione in modo da ottenere grafici ottimali;
- è stato assegnato all'Amministratore il compito della redazione dei verbali.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [2 (-1)],     [0],     [0],     [0],     [0],     [0],     [2 (-1)],
    [Carraro],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Nardo],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Oseliero],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Todesco],     [0],     [4 (+1)],     [0],     [0],     [0],     [0],     [4 (+1)],
    [Zaccone],     [0],     [4 (+1)],     [0],     [0],     [0],     [0],     [4 (+1)],
    [Totale ore],     [2 (-1)],     [8 (+2)],     [8],     [3],     [0],     [3],     [24 (+1)],
    [Costo ruolo],     [60 (-30)],     [160 (+40)],     [200],     [75],     [0],     [45],     [540 (+10)],
  ),
  caption: "Prospetto del consuntivo, sprint 3"
)
#let data = (
  ("Responsabile", 3, 2),
  ("Amministratore", 6, 8),
  ("Analista", 8, 8),
  ("Progettista", 3, 3),
  ("Programmatore", 0, 0),
  ("Verificatore", 3, 3),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 3",
  kind: "chart",
  supplement: "Grafico"
)

A causa dei problemi incontrati, alcuni ruoli hanno visto un monte ore effettivo diverso a quanto preventivato:
- Responsabile: a causa di mancati standard su come effettuare una pianificazione ottimale il responsabile ha impiegato meno ore di quanto previsto;
- Amministratore: a causa dei mancati standard sulla realizzazione dei grafici gli Amministratori hanno impiegato più ore finalizzate allo studio sui grafici da adottare.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [63], [€ 1890],
    [Amministratore], [66], [€ 1320],
    [Analista], [84], [€ 2100],
    [Progettista], [46], [€ 1150],
    [Programmatore], [196], [€ 2940],
    [Verificatore], [138], [€ 2070],
    [Rimanente], [593], [€ 11470],
  ),
  caption: "Monitoraggio sprint 3"
)


== Sprint 4 dal 27-11-2023 al 04-12-2023

=== Obiettivi raggiunti
- Perfezionamento della stesura degli Use Case individuati finora;
- Redazione di una prima versione del documento Analisi dei Requisiti;
- Scelta di una data per un eventuale primo meeting con il professor Cardin per ottenere un feedback sull'Analisi dei Requisiti;
- Proseguimento della redazione e aggiornamento del documento Norme di Progetto;
- Proseguimento periodo di studio di Three.js,  finalizzato a:
 - creazione di scaffali nell'ambiente tridimensionale;
 - implementazione sistema di _drag and drop_;
 - parametrizzazione degli elementi presenti nell'applicazione.

=== Obiettivi mancati
Tutti gli obiettivi sono stati raggiunti.

=== Problematiche
Il gruppo ha notato in fase di retrospettiva una scarsa reattività in fase di review e verifica, che portano al rallentamento del lavoro. Le review
sono state rallentate anche dalla presenza di numerosi merge conflicts, che il gruppo si è ritrovato a gestire per la prima volta nel progetto.

Inoltre si è presa coscienza della necessità di apportare migliorie al processo di gestione di Jira.

=== Risoluzioni attuate
Il gruppo ha preso in considerazione l'utilizzo di Graphite per velocizzare il processo di review e creare pull request brevi.

Inoltre, il gruppo ha preso l'impegno di formarsi in maniera approfondita sull'utilizzo di Jira, per migliorare l'amministrazione del progetto.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Carraro],     [0],     [0],     [3],     [0],     [2 (+1)],     [0],     [5 (+1)],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [4 (+1)],     [4 (+1)],
    [Nardo],     [0],     [0],     [0],     [1],     [2],     [0],     [3],
    [Oseliero],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Todesco],     [0],     [2 (-1)],     [0],     [0],     [0],     [0],     [2 (-1)],
    [Zaccone],     [0],     [2 (-1)],     [0],     [0],     [0],     [0],     [2 (-1)],
    [Totale ore],     [3],     [4 (-2)],     [7],     [1],     [4 (+1)],     [4 (+1)],     [23],
    [Costo ruolo],     [90],     [80 (-40)],     [175],     [25],     [60 (+15)],     [60 (+15)],     [490 (-10)],
  ),
  caption: "Prospetto del consuntivo, sprint 4"
)
#let data = (
  ("Responsabile", 3, 3),
  ("Amministratore", 6, 4),
  ("Analista", 7, 7),
  ("Progettista", 1, 1),
  ("Programmatore", 3, 4),
  ("Verificatore", 3, 4),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 4",
  kind: "chart",
  supplement: "Grafico"
)

A causa dei rallentamenti incontrati, alcuni ruoli hanno visto un monte ore effettivo diverso a quanto preventivato:

- Amministratore: l'utilizzo di Jira in maniera approssimativa ha portato ad un monte ore inferiore a quanto previsto;
- Verificatore: i numerosi merge conflicts hanno portato a notevoli rallentamenti in fase di review.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [60], [€ 1800],
    [Amministratore], [62], [€ 1240],
    [Analista], [77], [€ 1925],
    [Progettista], [45], [€ 1125],
    [Programmatore], [192], [€ 2880],
    [Verificatore], [134], [€ 2010],
    [Rimanente], [570], [€ 10980],
  ),
  caption: "Monitoraggio sprint 4"
)


== Sprint 5 dal 04-12-2023 al 11-12-2023

=== Obiettivi raggiunti
- Perfezionamento sistema di _drag and drop_ nel PoC;
- Creazione degli scaffali nel PoC;
- Miglioramento e aggiornamento documento Analisi dei Requisiti;
- Realizzazione PoC relativo alla creazione e posizionamento di scaffali dell'ambiente di lavoro;
- Realizzazione PoC relativo alla lettura e utilizzo di file SVG e comunicazione con database;
- Realizzazione PoC che integra l'utilizzo di Docker;
- Incontro con Proponente in data 06-12-23;
- Incontro con professor Cardin in data 07-12-23;
- Redazione del Glossario;
- Aggiornamento documento Norme di Progetto;
- Aggiornamento documento Piano di Progetto;
- Aggiornare vecchi documenti con nuovo template;

=== Obiettivi mancati
- Miglioramento GitHub Actions.

=== Problematiche
Durante il meeting di retrospettiva sono emerse le seguenti problematiche da migliorare:
- mancanza di precise convenzioni da adottare riguardanti il codice;
- lavoro concentrato principalmente nel weekend;
- richiesta di maggiore partecipazione dei membri del gruppo sulle board di Miro.

=== Risoluzioni attuate
Conseguentemente ai problemi rilevati, sono state individuate le relative soluzioni da adottare:
- normare le convenzioni di stesura del codice nelle Norme di Progetto;
- impegnarsi a fissare delle scadenze infrasettimanali così da ridurre il carico di lavoro nel weekend;
- utilizzare le board su Miro con anticipo aggiungendo il proprio feedback.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Carraro],     [3],     [0],     [0],     [0],     [2],     [0],     [5],
    [Gardin],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Nardo],     [0],     [2 (-1)],     [0],     [0],     [2],     [0],     [4 (-1)],
    [Oseliero],     [0],     [0],     [0],     [1 (-1)],     [2],     [0],     [3 (-1)],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Zaccone],     [0],     [0],     [0],     [1 (-1)],     [2],     [0],     [3 (-1)],
    [Totale ore],     [3],     [2 (-1)],     [8],     [2 (-2)],     [8],     [3],     [26 (-3)],
    [Costo ruolo],     [90],     [40 (-20)],     [200],     [50 (-50)],     [120],     [45],     [545 (-70)],
  ),
  caption: "Prospetto del consuntivo, sprint 5"
)
#let data = (
  ("Responsabile", 3, 3),
  ("Amministratore", 3, 2),
  ("Analista", 8, 8),
  ("Progettista", 4, 2),
  ("Programmatore", 8, 8),
  ("Verificatore", 3, 3),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 5",
  kind: "chart",
  supplement: "Grafico"
)

Per produrre una prima versione dei PoC, i Progettisti (e in parte il Responsabile e l'Amministratore) hanno impiegato ore produttive come Programmatori, questo ha in parte significato una riduzione delle ore produttive previste per il ruolo assegnato.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [57], [€ 1710],
    [Amministratore], [60], [€ 1200],
    [Analista], [69], [€ 1725],
    [Progettista], [43], [€ 1075],
    [Programmatore], [184], [€ 2760],
    [Verificatore], [131], [€ 1965],
    [Rimanente], [544], [€ 10435],
  ),
  caption: "Monitoraggio sprint 5"
)


== Sprint 6 dal 11-12-2023 al 18-12-2023

=== Obiettivi raggiunti
- Avanzamento del PoC A con:
  - miglioramento grafico degli scaffali;
  - posizionamento automatico dei bin nello scaffale al momento della sua creazione;
  - implementazione visualizzazione prodotti dei bin tramite alert JavaScript.
- Aggiornamento documento Norme di Progetto;
- Aggiornamento documento Analisi dei Requisiti con:
  - refactoring degli Use Case secondo le indicazioni del Professor Cardin;
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
- Implementazione PoC esplorativo per il front-end.

=== Problematiche
Durante il meeting di retrospettiva sono emerse le seguenti problematiche da migliorare:
- mancata comunicazione di situazioni di difficoltà o problemi che hanno portato a rallentamenti nella produzione di un PoC per il front-end;
- la stesura del documento Norme di Progetto ha una velocità di avanzamento troppo bassa.

=== Risoluzioni attuate
Conseguentemente ai problemi rilevati, sono state individuate le relative soluzioni da adottare:
- si richiede ai componenti del gruppo una comunicazione rapida delle difficoltà e problemi, non appena questi si presentano;
- il numero di persone assegnate alla redazione delle Norme di Progetto verrà incrementato da due a tre, in modo da garantire la produzione di un maggior numero di sezioni durante lo sprint.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Carraro],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Gardin],     [0],     [0],     [4],     [0],     [0],     [0],     [4],
    [Nardo],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Oseliero],     [0],     [0],     [0],     [1],     [2 (-1)],     [0],     [3 (-1)],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Zaccone],     [0],     [0],     [0],     [1],     [3],     [0],     [4],
    [Totale ore],     [3],     [3],     [8],     [2],     [5 (-1)],     [3],     [24 (-1)],
    [Costo ruolo],     [90],     [60],     [200],     [50],     [75 (-15)],     [45],     [520 (-15)],
  ),
  caption: "Prospetto del consuntivo, sprint 6"
)
#let data = (
  ("Responsabile", 3, 3),
  ("Amministratore", 3, 3),
  ("Analista", 8, 8),
  ("Progettista", 2, 2),
  ("Programmatore", 6, 5),
  ("Verificatore", 3, 3),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 6",
  kind: "chart",
  supplement: "Grafico"
)

Il ruolo di Programmatore presenta un monte ore effettivo minore rispetto a quello preventivato a causa di problemi tecnici che hanno interrotto la lavorazione del PoC.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [54], [€ 1620],
    [Amministratore], [57], [€ 1140],
    [Analista], [61], [€ 1525],
    [Progettista], [41], [€ 1025],
    [Programmatore], [179], [€ 2685],
    [Verificatore], [128], [€ 1920],
    [Rimanente], [520], [€ 9915],
  ),
  caption: "Monitoraggio sprint 6"
)


== Sprint 7 dal 18-12-2023 al 25-12-2023

=== Obiettivi raggiunti
- Integrazione dei PoC realizzati in un unico PoC;
- Individuazione di metriche di base per il Piano di Qualifica;
- Aggiornamento del documento Norme di Progetto;
- Automatizzata l'individuazione dei termini del glossario nei documenti.

=== Obiettivi mancati
- Implementazione del tracciamento requisito-fonte nel documento Analisi dei Requisiti;
- revisione generale del documento per verifcare la presenza e la correttezza di tutti gli Use Case e requisiti necessari;
- Correzione di bug presenti nelle GitHub Actions.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:

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
  - nel caso di più occorrenze dello stesso errore, segnalarle tutte. Per evitare ripetizioni, fornire una valutazione della prima occorrenza ed inserire un riferimento a tale conversazione nelle occorrenze successive.
- Per accelerare il lavoro sulle Norme di Progetto, chi ha redatto le Norme di Progetto nel corso degli sprint precedenti continuerà l'aﬃancamento nel corso dello sprint successivo;
- La natura esplorativa del PoC richiede ﬂessibilità nella pianiﬁcazione, ma si sottolinea la necessità di continuare a tracciare le attività per riferimento futuro.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [3 (-1)],     [0],     [0],     [0],     [0],     [3 (-1)],
    [Carraro],     [0],     [0],     [0],     [0],     [3],     [0],     [3],
    [Gardin],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Nardo],     [2 (-1)],     [0],     [0],     [0],     [0],     [0],     [2 (-1)],
    [Oseliero],     [0],     [0],     [0],     [0],     [2],     [2],     [4],
    [Todesco],     [0],     [0],     [0],     [2 (-1)],     [0],     [0],     [2 (-1)],
    [Zaccone],     [0],     [0],     [1 (-2)],     [0],     [0],     [0],     [1 (-2)],
    [Totale ore],     [2 (-1)],     [3 (-1)],     [1 (-2)],     [5 (-1)],     [5],     [2],     [18 (-5)],
    [Costo ruolo],     [60 (-30)],     [60 (-20)],     [25 (-50)],     [125 (-25)],     [75],     [30],     [375 (-125)],
  ),
  caption: "Prospetto del consuntivo, sprint 7"
)
#let data = (
  ("Responsabile", 3, 2),
  ("Amministratore", 4, 3),
  ("Analista", 3, 1),
  ("Progettista", 6, 5),
  ("Programmatore", 5, 5),
  ("Verificatore", 2, 2),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 7",
  kind: "chart",
  supplement: "Grafico"
)

Diversi ruoli risultano avere un monte ore minore rispetto a quello preventivato, a causa di rallentamenti nella stesura delle Norme di Progetto e, per quanto riguarda l'Analista, un rallentamento dovuto alla mancanza di materiale su cui lavorare: il materiale necessario era infatti presente in un branch di cui non era ancora stata fatta una pull request.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [52], [€ 1560],
    [Amministratore], [54], [€ 1080],
    [Analista], [60], [€ 1500],
    [Progettista], [36], [€ 900],
    [Programmatore], [174], [€ 2610],
    [Verificatore], [126], [€ 1890],
    [Rimanente], [502], [€ 9540],
  ),
  caption: "Monitoraggio sprint 7"
)


== Sprint 8 dal 26-12-2023 al 31-12-2023

=== Obiettivi raggiunti
- Miglioramento del Glossario con gestione di plurali e acronimi dei termini ed evidenziazione _case insensitive_;
- Implementato il tracciamento requisito-fonte nell'Analisi dei Requisiti;
- Aggiornamento del documento Norme di Progetto;
- Realizzato sito web per la documentazione;
- Automatizzata l'individuazione dei termini del Glossario nei documenti.
- Realizzazione di una dashboard preliminare Grafana;
- Perfezionamento PoC finale.

=== Obiettivi mancati
- La dashboard di monitoraggio non implementa tutte le metriche individuate nel Piano di Qualifica;
- Rimane da comprendere a fondo le implicazioni della scelta tra Next.js ed Express.js;
- Permangono bug nelle GitHub Action.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:

- i lavori hanno subito rallentamenti dovuti al periodo di festività.

=== Risoluzioni attuate
Nessuna.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [4 (+1)],     [0],     [0],     [0],     [0],     [4 (+1)],
    [Carraro],     [0],     [0],     [0],     [0],     [5 (+2)],     [0],     [5 (+2)],
    [Gardin],     [0],     [2 (+2)],     [0],     [2 (-1)],     [0],     [0],     [4 (+1)],
    [Nardo],     [4],     [0],     [0],     [0],     [0],     [0],     [4],
    [Oseliero],     [0],     [0],     [0],     [0],     [0],     [4],     [4],
    [Todesco],     [0],     [0],     [0],     [3],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [3],     [0],     [0],     [0],     [3],
    [Totale ore],     [4],     [6 (+3)],     [3],     [5 (-1)],     [5 (+2)],     [4],     [27 (+4)],
    [Costo ruolo],     [120],     [120 (+60)],     [75],     [125 (-25)],     [75 (+30)],     [60],     [575 (+65)],
  ),
  caption: "Prospetto del consuntivo, sprint 8"
)
#let data = (
  ("Responsabile", 4, 4),
  ("Amministratore", 3, 6),
  ("Analista", 3, 3),
  ("Progettista", 6, 5),
  ("Programmatore", 3, 5),
  ("Verificatore", 4, 4),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 8",
  kind: "chart",
  supplement: "Grafico"
)

La ricerca di una valida soluzione per implementare la dashboard di monitoraggio ha richiesto un impegno maggiore rispetto a quanto preventivato. La scelta di adottare Grafana comporterà costi di adozione più alti rispetto a soluzioni standard. La contemporanea implementazione del sito web per la documentazione ha accentuato la necessità di avvalersi della figura dell'Amministratore.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [48], [€ 1440],
    [Amministratore], [48], [€ 960],
    [Analista], [57], [€ 1425],
    [Progettista], [31], [€ 775],
    [Programmatore], [169], [€ 2535],
    [Verificatore], [122], [€ 1830],
    [Rimanente], [475], [€ 8965],
  ),
  caption: "Monitoraggio sprint 8"
)


== Sprint 9 dal 01-01-2024 al 08-01-2024

=== Obiettivi raggiunti
Tutti gli obiettivi dello sprint sono stati raggiunti.

=== Obiettivi mancati
Nessuno.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:
- le norme di formattazione del testo non sono state rispettate in alcune sezioni dei documenti, specialmente nelle sezioni redatte meno di recente;
- le norme per l'inclusione di riferimenti a documenti esterni sono imprecise;
- alcuni ticket non urgenti vengono erroneamente creati ed inseriti nel backlog dello sprint in corso, falsando la reportistica di Jira.

=== Risoluzioni attuate
- Durante la verifica dei documenti in ottica RTB, il Verificatore controllerà anche l'uso conforme della formattazione del testo;
- Qualora il Redattore desideri includere un riferimento ad un documento esterno, dovrà sincerarsi che:
  + i riferimenti ai documenti riportino il numero di versione più recente;
  + i link ai documenti siano riportati nella sezione Riferimenti;
  + i link ai documenti siano riportati per esteso;
  + i link puntino al documento PDF contenuto nel branch `main`.
- I ticket non urgenti saranno aggiunti al backlog generale e non a quello dello sprint in corso.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [3 (-2)],     [0],     [0],     [0],     [0],     [3 (-2)],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [3 (-1)],     [3 (-1)],
    [Gardin],     [0],     [1 (-4)],     [0],     [1 (+1)],     [0],     [0],     [2 (-3)],
    [Nardo],     [0],     [0],     [0],     [0],     [0],     [3 (-1)],     [3 (-1)],
    [Oseliero],     [0],     [0],     [4 (-1)],     [0],     [0],     [0],     [4 (-1)],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [3 (-1)],     [3 (-1)],
    [Zaccone],     [3 (-1)],     [0],     [0],     [0],     [0],     [0],     [3 (-1)],
    [Totale ore],     [3 (-1)],     [4 (-6)],     [4 (-1)],     [1 (+1)],     [0],     [9 (-3)],     [21 (-10)],
    [Costo ruolo],     [90 (-30)],     [80 (-120)],     [100 (-25)],     [25 (+25)],     [0],     [135 (-45)],     [430 (-195)],
  ),
  caption: "Prospetto del consuntivo, sprint 9"
)
#let data = (
  ("Responsabile", 4, 3),
  ("Amministratore", 10, 4),
  ("Analista", 5, 4),
  ("Progettista", 0, 1),
  ("Programmatore", 0, 0),
  ("Verificatore", 12, 9),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 9",
  kind: "chart",
  supplement: "Grafico"
)

La pianificazione delle attività per lo sprint 9 è stata conservativa. L'entità di alcune attività, specialmente quelle relative alle automazioni e alla dashboard, si sono rivelate sensibilmente minori del previsto. Il Progettista, inizialmente non previsto, è stato interpellato per la realizzazione della presentazione per il colloquio RTB con il Professor Cardin.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile], [45], [€ 1350],
    [Amministratore], [44], [€ 880],
    [Analista], [53], [€ 1325],
    [Progettista], [30], [€ 750],
    [Programmatore], [169], [€ 2535],
    [Verificatore], [113], [€ 1695],
    [Rimanente], [454], [€ 8535],
  ),
  caption: "Monitoraggio sprint 9"
)


== Sprint 10 dal 08-01-2024 al 14-01-2024

=== Obiettivi raggiunti
- I problemi prestazionali del PoC sono stati risolti con successo;
- Le automazioni hanno subito un refactoring al fine di migliorarne l'affidabilità, la flessibilità e il riuso;
- I documenti Piano di Qualifica, Piano di Progetto sono stati verificati in vista della valutazione RTB;
- Preparazione presentazione revisione RTB.

=== Obiettivi mancati
- La dashboard di monitoraggio non è stata ampliata.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:
- la comunicazione tra i ruoli è risultata non allineata (_siloed_), e ha causato confusione e rallentamenti del processo di revisione;
- riscontrato uno sbilanciamento dell'impegno dei singoli membri del gruppo.

=== Risoluzioni attuate
I membri del gruppo si impegneranno a comunicare in maniera più tempestiva e precisa modifiche apportate e/o aggiornamenti alla configurazione degli strumenti di supporto.
L'impegno individuale dei membri risulta sbilanciato a causa dell'imminenete sessione d'esame invernale. Pertanto, la pianificazione dei prossimi sprint terrà conto della ridotta disponibilità di tempo. È previsto che la situazione migliorerà entro il termine dello sprint 13.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Carraro],     [0],     [0],     [0],     [1 (+1)],     [0],     [2],     [3 (+1)],
    [Gardin],     [0],     [2],     [0],     [0],     [0],     [0],     [2],
    [Nardo],     [0],     [0],     [0],     [0],     [2],     [0],     [2],
    [Oseliero],     [0],     [0],     [2],     [0],     [0],     [0],     [2],
    [Todesco],     [1 (+1)],     [0],     [0],     [0],     [2],     [0],     [3 (+1)],
    [Zaccone],     [1 (-1)],     [0],     [0],     [0],     [0],     [3],     [4 (-1)],
    [Totale ore],     [2],     [2],     [2],     [1 (+1)],     [4],     [8],     [19 (+1)],
    [Costo ruolo],     [60],     [40],     [50],     [25 (+25)],     [60],     [120],     [355 (+25)],
  ),
  caption: "Prospetto del consuntivo, sprint 10"
)
#let data = (
  ("Responsabile", 2, 2),
  ("Amministratore", 2, 2),
  ("Analista", 2, 2),
  ("Progettista", 0, 1),
  ("Programmatore", 4, 4),
  ("Verificatore", 8, 8),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 10",
  kind: "chart",
  supplement: "Grafico"
)

La presenza del Progettista, non pianificata, deriva dalla necessità di decidere quale software adottare (tra Next.js ed Express.js) per l'implementazione di un componente del PoC. Entrambe le tecnologie sono state approfondite ed implementate durante lo sviluppo dei PoC, ma non era ancora stata presa una scelta definitiva. Inoltre, la redazione della presentazione per il colloquio RTB ha nuovamente richiesto l'intervento del Progettista.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [43],     [€ 1290],
    [Amministratore],     [42],     [€ 840],
    [Analista],     [51],     [€ 1275],
    [Progettista],     [29],     [€ 725],
    [Programmatore],     [165],     [€ 2475],
    [Verificatore],     [105],     [€ 1575],
    [Rimanente],     [435],     [€ 8180],
  ),
  caption: "Monitoraggio sprint 10"
)

== Sprint 11 dal 14-01-2024 al 21-01-2024

=== Obiettivi raggiunti
- Inviata la candidatura al Prof. Cardin per il colloquio RTB;
- Al Piano di Progetto sono state apportate modifiche minori per migliorare la leggibilità dei dati;
- Il sito web è accessibile in ogni sua parte e comprende i riferimenti di ogni documento prodotto dal gruppo;
- I contenuti della presentazione per il colloquio RTB sono stati definiti e il documento è stato completato.

=== Obiettivi mancati
Nessuno.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:
- carico di lavoro asimmetrico tra i membri del gruppo a causa dei differenti esami da sostenere.

=== Risoluzioni attuate
Nessuna. La situazione di carico di lavoro asimmetrico è destinata a migliorare con l'approcciarsi della fine della sessione d'esami invernale.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [1 (-1)],     [0],     [0],     [0],     [1 (-1)],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [1 (-1)],     [1 (-1)],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [1 (-1)],     [1 (-1)],
    [Nardo],     [2 (-1)],     [0],     [0],     [0],     [0],     [0],     [2 (-1)],
    [Oseliero],     [0],     [0],     [1],     [0],     [0],     [0],     [1],
    [Todesco],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [2],     [2],
    [Totale ore],     [2 (-1)],     [3],     [2 (-1)],     [0],     [0],     [4 (-2)],     [11 (-4)],
    [Costo ruolo],     [60 (-30)],     [60],     [50 (-25)],     [0],     [0],     [60 (-30)],     [230 (-85)],
  ),
  caption: "Prospetto del consuntivo, sprint 11"
)
#let data = (
  ("Responsabile", 3, 2),
  ("Amministratore", 3, 3),
  ("Analista", 3, 2),
  ("Progettista", 0, 0),
  ("Programmatore", 0, 0),
  ("Verificatore", 6, 4),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 11",
  kind: "chart",
  supplement: "Grafico"
)

La necessità dei ruoli di Responsabile e di Analista è stata minore rispetto alle attese. Anche il Verificatore ha lavorato meno del previsto, visto l'entità minima delle modifiche ai documenti. Tale figura rimane comunque la più impegnata, a causa della necessità di verificare la presentazione per il colloquio RTB.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [41],     [1230],
    [Amministratore],     [39],     [780],
    [Analista],     [49],     [1225],
    [Progettista],     [29],     [725],
    [Programmatore],     [165],     [2475],
    [Verificatore],     [101],     [1515],
    [Rimanente],     [424],     [7950],
  ),
  caption: "Monitoraggio sprint 11"
)


== Sprint 12 dal 21-01-2024 al 28-01-2024

=== Obiettivi raggiunti
- Colloquio con il Professor Cardin superato con luce "ampiamente verde";
- Aggiunta di grafici al Piano di Progetto:
  - suddivisione oraria per ruolo per preventivi e consuntivi.

=== Obiettivi mancati
- Estensione dei termini di Glossario.

=== Problematiche
Nessuna.

=== Risoluzioni attuate
Nessuna.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [1],     [0],     [0],     [1],
    [Carraro],     [0],     [0],     [1 (+1)],     [1],     [0],     [0],     [2 (+1)],
    [Gardin],     [0],     [0],     [0],     [1],     [0],     [0],     [1],
    [Nardo],     [1],     [0],     [0],     [0],     [0],     [0],     [1],
    [Oseliero],     [0],     [0],     [0],     [0],     [0],     [1],     [1],
    [Todesco],     [0],     [1],     [0],     [0],     [0],     [0],     [1],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [1],     [1],
    [Totale ore],     [1],     [1],     [1 (+1)],     [3],     [0],     [2],     [8 (+1)],
    [Costo ruolo],     [30],     [20],     [25 (+25)],     [75],     [0],     [30],     [180 (+25)],
  ),
  caption: "Prospetto del consuntivo, sprint 12"
)
#let data = (
  ("Responsabile", 1, 1),
  ("Amministratore", 1, 1),
  ("Analista", 0, 1),
  ("Progettista", 3, 3),
  ("Programmatore", 0, 0),
  ("Verificatore", 2, 2),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 12",
  kind: "chart",
  supplement: "Grafico"
)

Il totale delle ore lavorate, seppur basso, è stato in gran parte rispettato. Tuttavia, il ruolo di Analista è stato attivato per correggere un errore di forma riscontrato nel calcolo dei codici identificativi dei requisiti.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [40],     [1200],
    [Amministratore],     [38],     [760],
    [Analista],     [48],     [1200],
    [Progettista],     [26],     [650],
    [Programmatore],     [165],     [2475],
    [Verificatore],     [99],     [1485],
    [Rimanente],     [416],     [7770],
  ),
  caption: "Monitoraggio sprint 12"
)

== Sprint 13 dal 28-01-2024 al 04-02-2024

=== Obiettivi raggiunti
- Preparazione della pianificazione dello sprint 14 a seguito del risultato del colloquio RTB sostenuto con il Professor Cardin, ricevuto il 31/01/2024.

=== Obiettivi mancati
Nessuno.

=== Problematiche
Il feedback ricevuto dal Professor Cardin evidenzia diverse lacune nel documento Analisi dei Requisiti. Sarà dunque necessario investire risorse per correggere e migliorare il documento. Ciò potrebbe influire negativamente sull'avanzamento del progetto.

=== Risoluzioni attuate
Nessuna.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Gardin],     [3 (+1)],     [0],     [0],     [0],     [0],     [0],     [3 (+1)],
    [Nardo],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Oseliero],     [0],     [1],     [0],     [0],     [0],     [0],     [1],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Totale ore],     [3 (+1)],     [1],     [0],     [0],     [0],     [0],     [4 (+1)],
    [Costo ruolo],     [90 (+30)],     [20],     [0],     [0],     [0],     [0],     [110 (+30)],
  ),
  caption: "Prospetto del consuntivo, sprint 13"
)
#let data = (
  ("Responsabile", 2, 3),
  ("Amministratore", 1, 1),
  ("Analista", 0, 0),
  ("Progettista", 0, 0),
  ("Programmatore", 0, 0),
  ("Verificatore", 0, 0),
)
#let x-coordinates = compute-labels-x-coordinate(data, role-chart-size)
#let y-coordinates = compute-labels-y-coordinate(data, role-chart-size)

#figure({
  import draw: *
  canvas({
    chart.barchart(..barchart-config, data)
    let i = 0
    while(i < data.len()) {
      content(
        (x-coordinates.at(i).at(0), y-coordinates.at(i).at(0)),
        [#data.at(i).at(1)],
        ..barchart-label-config
      )
      content(
        (x-coordinates.at(i).at(1), y-coordinates.at(i).at(1)),
        [#data.at(i).at(2)],
        ..barchart-label-config
      )
      i += 1
    }
  })},
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 13",
  kind: "chart",
  supplement: "Grafico"
)

Lo sprint 13 è stato caratterizzato da un momento di pausa, dovuto alla concomitanza degli esami, conclusosi mercoledì 31/01/2024 con la ricezione del feedback da parte del Professor Cardin. Nel corso dei giorni rimanenti, il Responsabile ha aggiornato la pianificazione per adeguarla al diverso contesto di lavoro.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [37],     [1110],
    [Amministratore],     [37],     [740],
    [Analista],     [48],     [1200],
    [Progettista],     [26],     [650],
    [Programmatore],     [165],     [2475],
    [Verificatore],     [99],     [1485],
    [Rimanente],     [412],     [7660],
  ),
  caption: "Monitoraggio sprint 13"
)

// == Sprint n dal D1-M1-2024 al D2-M2-2024

// === Obiettivi raggiunti

// === Obiettivi mancati

// === Problematiche
// Durante il meeting di retrospettiva sono sorte le seguenti problematiche:

// === Risoluzioni attuate

// === Panoramica dei costi effettivi

// TABLE

// TODO

// === Monitoraggio costi e ore

// TABLE