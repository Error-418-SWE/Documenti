#import "@preview/cetz:0.2.0": *
#import chart

#import "/template.typ": *

#show: project.with(
 title: "Piano di Progetto",
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
Il documento #pdp ha il compito di governare la pianificazione dell'avanzamento del progetto, determinando task e obiettivi da raggiungere e presentando un'analisi critica del lavoro fino a quel momento svolto. L'intento è rendicontare e valutare criticamente l'operato compiuto per  migliorarlo, ove necessario, e gestire in modo efficace ed efficiente le risorse.

Il documento si articola in 6 sezioni principali:
- *Analisi dei Rischi* (@analisi-rischi): dedicata all'analisi preventiva dei rischi e delle relative contromisure;
- *Panoramica generale* (@panoramica-generale): dedicata all'analisi preventiva dei costi complessivi di realizzazione;
- *Periodi di sviluppo* (@periodi-di-sviluppo): dedicata all'analisi della suddivisione temporale dello sviluppo del progetto;
- *Pianificazione del lavoro* (@pianificazione-lavoro): dedicata alla descrizione della metodologia di lavoro adottata;
- *Preventivi di periodo* (@preventivi): dedicata alla pianificazione delle attività da svolgere per ciascuno sprint;
- *Consuntivi di periodo* (@consuntivi): dedicata all'analisi retrospettiva del lavoro svolto in ciascuno sprint. Riporta eventuali criticità ed azioni intraprese a fini migliorativi.

== Glossario
#glo_paragrafo

== Riferimenti <riferimenti>

=== Riferimenti a documentazione interna <riferimenti-interni>

- Documento #glo_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(13,02,2024)

=== Riferimenti normativi <riferimenti-normativi>

- Regolamento di progetto: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_
  #lastVisitedOn(13,02,2024)

- Gestione di progetto: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T4.pdf")_
  #lastVisitedOn(13,02,2024)

- I processi di ciclo di vita del software: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T2.pdf")_
  #lastVisitedOn(13,02,2024)

- _A guide to the project management body of knowledge (PMBOK guide)_ di Project Management Institute: \
  _#link("https://openlibrary.org/works/OL16506273W/A_guide_to_the_project_management_body_of_knowledge_%28PMBOK_guide%29")_
  #lastVisitedOn(26,02,2024)

=== Riferimenti informativi <riferimenti-informativi>

- Capitolato "Warehouse Management 3D" (C5) di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)


#pagebreak()

= Analisi dei Rischi <analisi-rischi>

Questa sezione elenca e categorizza i rischi, li analizza e fornisce strumenti di monitoraggio e mitigazione.

== Profili di rischio

A ciascun rischio individuato si associano:
  - informazioni descrittive sul suo contesto;
  - impatto: può essere lieve, medio o grave. Esprime l'ordine di grandezza dell'effetto generato dall'evento;
  - probabilità: da 1 a 5. Esprime la probabilità di verificarsi del rischio;
  - soglie di accettazione del rischio;
  - azioni previste in funzione delle soglie, possono includere:
    - l'eliminazione del rischio;
    - la riduzione della sua probabilità o gravità;
    - l'accettazione del rischio.
  - conseguenze relative a ciascuna delle azioni possibili, esse descrivono gli effetti collaterali a breve o medio termine che il rischio può comportare.

I rischi sono suddivisi nelle categorie:
+ rischi tecnici;
+ rischi esterni;
+ rischi di project management.


== Rischi

=== Rischi tecnici

*RIS-1.1 Utilizzo problematico delle tecnologie* <RIS-1.1>

Le tecnologie individuate o suggerite durante i processi di analisi e progettazione potrebbero risultare complesse da comprendere e/o integrare.

- *Impatto*: medio;
- *Probabilità*: 4;
- *Soglie*:
  - se, compreso un ragionevole rallentamento dovuto all'apprendimento di nuove competenze, la complessità delle tecnologie risulta gestibile con le competenze attuali del gruppo e non compromette significativamente la tempistica del progetto, si adotta "OT-1.1.2 Accettazione del rischio";
  - se la complessità delle tecnologie supera significativamente le competenze attuali del gruppo e potrebbe quindi causare gravi ritardi nell'avanzamento dei lavori, si adotta "OT-1.1.1 Riduzione della sua probabilità o gravità".

*Opzioni di trattamento del rischio*

*OT-1.1.1 Riduzione della sua probabilità o gravità*

*Strategia di trattamento*

Viene considerata in sede di meeting la necessità di individuare tecnologie sostitutive che rimpiazzeranno quelle coinvolte, esse dovranno essere studiate ed implementate al fine di soddisfare i requisiti rimasti irrisolti a causa dell'occorrenza del rischio.

Se si ritiene necessario, si richiede una maggiore partecipazione da parte degli altri membri del gruppo, con conseguente riassegnazione di attività e/o ruoli, per integrare le nuove tecnologie nel minor tempo possibile.

*Conseguenze*

Le analisi tecnologiche precedentemente svolte devono essere riviste in luce delle nuove opzioni individuate. Quest'ultime possono essere a loro volta totalmente o parzialmente sconosciute al gruppo, il quale dovrà dedicare tempo, non preventivato precedentemente, alla loro comprensione ed integrazione.
Le nuove tecnologie individuate possono potenzialmente generare nuovamente questo rischio portando ad un rallentamento grave nell'avanzamento dei lavori.

\ *OT-1.1.2 Accettazione del rischio*

*Strategia di trattamento*

Il gruppo accetta la complessità delle tecnologie e si impegna a risolvere eventuali problemi nell'implementazione e utilizzo delle stesse.
Se si ritiene necessario, si richiede una maggiore partecipazione da parte degli altri membri del gruppo, con conseguente riassegnazione di attività e/o ruoli, alla risoluzione degli eventuali problemi riscontrati.
È importante tenere monitorata nel tempo la situazione per accertarsi che le circostanze non richiedano una modifica nell'approccio di risoluzione.

*Conseguenze*

Rallentamenti non preventivati che possono avere conseguenze a cascata sulle attività dipendenti e che possono coinvolgere più membri del gruppo per un periodo di tempo difficilmente prevedibile.



\ *RIS-1.2 Insufficiente preparazione teorica* <RIS-1.2>

Il progetto richiede conoscenze teoriche legate al perscorso di studi sulle quali sono basate molteplici attività fondamentali. Per esempio, lo studio dei requisiti e la produzione degli Use Case con i relativi diagrammi, oppure il processo di design architetturale ed i relativi pattern da considerare.
Qualora uno o più membri del gruppo dovessero essere insufficientemente preparati sulla teoria necessaria, non potrebbero dare un valido contributo nell'avanzamento dei lavori.

- *Impatto*: grave;
- *Probabilità*: 2;
- *Soglie*:
  - se le lacune teoriche sono sufficientemente contenute da permetterne un recupero abbastanza rapido da non inficiare sulla pianificazione dei lavori, si adotta "OT-1.2.1 Eliminazione del rischio";
  - se il tempo necessario ad effettuare lo studio richiesto risulta significativamente esteso rispetto ai tempi dettati dalla pianificazione dei lavori, al punto da provocare rallentamenti che impedirebbero il corretto completamento dei task previsti, si adotta "OT-1.2.2 Riduzione della sua probabilità o gravità".

*Opzioni di trattamento del rischio*

*OT-1.2.1 Eliminazione del rischio*

*Strategia di trattamento*

I membri coinvolti devono colmare le lacune teoriche con lo studio individuale, ed eventualmente, anche con l'aiuto di altri membri del gruppo disponibili.
Nel caso in cui la preparazione dovesse risultare più lunga del previsto, rallentando così i lavori, è necessario segnalarlo tempestivamente al gruppo.

*Conseguenze*

Il periodo di studio individuale potrebbe comportare rallentamenti non prevedibili con precisione. I membri coinvolti, successivamente al recupero degli argomenti teorici mancanti, possono fornire completamente il loro contributo nell'avanzamento dei lavori e nelle decisioni progettuali.

\ *OT-1.2.2 Riduzione della sua probabilità o gravità*

*Strategia di trattamento*

Deve avvenire una pianificazione o ripianificazione dei lavori al fine di permettere ai membri coinvolti di svolgere solo attività non dipendenti dalle conoscenze teoriche mancanti.
Il recupero delle lacune deve avvenire in tempi brevi.

*Conseguenze*

I membri coinvolti non forniranno il loro contributo per i lavori relativi alle conoscenze teoriche mancanti, questo potrebbe comportare ritardi e ripianificazioni non preventivate.
Tali ripianificazioni permetterebbero ai membri coinvolti di proseguire con l'avanzamento dei lavori nonostante le mancanze teoriche.
Le decisioni prese dal gruppo relative a scelte che necessitano delle conoscenze teoriche mancanti, non potranno beneficiare del contributo dei membri impreparati.



=== Rischi esterni

\ *RIS-2.1 Rallentamento delle attività dovuto a cause esterne* <RIS-2.1>

Rallentamento nel completamento di attività e task assegnate derivato dalla congiunzione tra gli impegni individuali e progettuali.
Esso comporta un generale ritardo nello sviluppo.

- *Impatto*: grave;
- *Probabilità*: 4 _Probabilità aumentata nel periodo della sessione invernale_;
- *Soglie*:
  - se i rallentamenti previsti possono ridurre l'efficienza lavorativa del gruppo, si attua il trattamento: "OT-2.1.1 Riduzione della sua probabilità o gravità".

*Opzioni di trattamento del rischio*

*OT-2.1.1 Riduzione della sua probabilità o gravità*

*Strategia di trattamento*

Implementazione di una pianificazione più flessibile decisa in sede di meeting, per adattarsi agli impegni individuali e progettuali.
Questo prevede una priorizzazione nell'uso di strumenti di lavoro asincroni, al fine di permettere a tutti i membri un'equa divisione del lavoro da svolgere nei momenti a loro più comodi, a patto di rispettare le linee guida delle Norme di Progetto.
Assegnazione chiara delle responsabilità in luce dei rallentamenti previsti e monitoraggio costante dello stato di avanzamento.
Inoltre è richiesta comunicazione costante con i membri del gruppo al fine di rendere note eventuali indisponibilità o impegni.


*Conseguenze*

Miglioramento dell'efficienza nel completamento dei compiti nonostante i rallentamenti inevitabili.
Le attività non svolte o completate parzialmente possono determinare uno slittamento della data di consegna e delle scadenze intermedie prefissate.


=== Rischi di project management

*RIS-4.1 Comunicazione con il Proponente* <RIS-4.1>

I contatti con il Proponente subiscono variazioni nella qualità e nella frequenza a causa di problematiche fuori dal controllo del gruppo. Questa situazione potrebbe causare un rallentamento significativo del lavoro, soprattutto durante l'analisi dei requisiti.

- *Impatto*: grave;
- *Probabilità*: 1;
- *Soglie*:
  - se il periodo critico previsto è sufficientemente breve da permettere al gruppo di continuare con un corretto avanzamento dei lavori nonostante la variazione nella comunicazione con il Proponente, si adotta "OT-4.1.2 Accettazione del rischio" mantenendo monitorata la situazione;
  - se il periodo critico previsto può mettere a rischio il corretto avanzamento dei lavori o la qualità degli stessi, si adotta "OT-4.1.1 Riduzione della sua probabilità o gravità".

*Opzioni di trattamento del rischio*

*OT-4.1.1 Riduzione della sua probabilità o gravità*

*Strategia di trattamento*

Si possono adottare, in accordo con il Proponente, una o più tra le seguenti strategie comunicative:
  - uso di strumenti asincroni per facilitare lo scambio di informazioni tra gruppo e Proponente;
  - pianificazione anticipata degli incontri di revisione dell'avanzamento;
  - programmazione di incontri periodici di aggiornamento, anche brevi.

*Conseguenze*

È prevista una modifica sostanziale, più o meno temporanea, nella comunicazione con il Proponente. Questo potrebbe portare a ritardi nei lavori dovuti ad un maggior impegno da parte del gruppo nel garantire l'adozione delle nuove pratiche.

\ *OT-4.1.2 Accettazione del rischio*

*Strategia di trattamento*

Si attende il termine del periodo nel quale la comunicazione con il Proponente risulta problematica.
Per evitare perdite di tempo il gruppo continua a lavorare priorizzando task che non dipendono direttamente dall'intervento del Proponente.
In caso di Accettazione del rischio è importante tenere monitorata nel tempo la situazione per accertarsi che le circostanze non richiedano una modifica nell'approccio di risoluzione.

*Conseguenze*

Lo sviluppo potrebbe allontanarsi dalle linee guida o dalle aspettative del Proponente, non rispettando quanto preventivato o pianificato. Tale rischio, comporterebbe dunque la produzione di un software non in linea con le richieste, conducendo a rallentamenti per analisi, progettazione e implementazione aggiuntive.


\ *RIS-4.2 Irreperibilità di un membro del gruppo* <RIS-4.2>

Uno o più membri cessano temporaneamente la partecipazione attiva alle attività del gruppo. È necessario evitare che la durata di queste assenze impedisca il regolare svolgimento delle attività di progetto.
È da considerare ulteriormente grave la situazione in cui è mancata totalmente una segnalazione responsabile e preventiva di difficoltà o impedimenti da parte dei singoli membri coinvolti.

- *Impatto*: medio;
- *Probabilità*: 3;
- *Soglie*:
  - se la cessazione della partecipazione da parte di uno o più membri del gruppo può causare un rallentamento nell'avanzamento dei lavori è necessario discutere con i diretti interessati al fine di inquadrare al meglio la situazione. Nel caso in cui tale dialogo rivelasse un'impossibilità nella ripresa delle attività in breve termine oppure nel caso in cui non sia possibile contattare i diretti interessati, è necessario attuare "OT-4.2.1 Riduzione della sua probabilità o gravità";
  - in caso contrario, se contattando i membri coinvolti emerge la previsione certa di una corretta ripresa delle attività in breve tempo, si attua "OT-4.2.2 Accettazione del rischio".

*Opzioni di trattamento del rischio*

*OT-4.2.1 Riduzione della sua probabilità o gravità*

*Strategia di trattamento*

Le attività di lavoro assegnate ai membri coinvolti che non hanno una corretta conclusione nei tempi e nelle modalità previste possono essere riassegnate ad altri membri del gruppo.
Viene sollecitato il dialogo con i membri coinvolti per capire la situazione e programmare al meglio le attività da svolgere.

*Conseguenze*

Vengono ridotti, seppur non eliminati, i ritardi nell'avanzamento dei lavori.
Le task svolte senza una chiara condivisione di informazioni da parte dei membri coinvolti possono portare a risultati non conformi con le decisioni prese dal gruppo di lavoro quindi possono risultare in parte o totalmente inutilizzabili.

\ *OT-4.2.2 Accettazione del rischio*

*Strategia di trattamento*

Si attende il termine del periodo nel quale la partecipazione dei membri interessati risulti insufficiente.
In caso di Accettazione del rischio è importante tenere monitorata nel tempo la situazione per accertarsi che le circostanze non richiedano una modifica nell'approccio di risoluzione.

*Conseguenze*

I membri che si dovessero trovare in questa situazione rischierebbero di accentuare eventuali incomprensioni nel proprio lavoro senza la possibilità di confrontarsi con gli altri accorgendosi degli errori troppo tardi.
Lo stato di avanzamento dei lavori potrebbe subire ulteriori rallentamenti.



\ *RIS-4.3 Mancanza di task assegnati* <RIS-4.3>

Uno o più membri del gruppo completano tutti i task a loro assegnati prima della fine dello Sprint.
Il periodo rimanente senza task assegnati è sufficientemente ampio da permettere ai membri coinvolti di proseguire i lavori.
L'impatto è tanto maggiore quanto l'aumentare dei giorni rimanenti al termine dello Sprint.

- *Impatto*: medio;
- *Probabilità*: 3;
- *Soglie*:
  - se il periodo di tempo da trascorrere senza task assegnati entro il successivo Sprint è sufficientemente ampio da poter permettere al membro del gruppo coinvolto di proseguire con altri lavori, si adotta "OT-4.3.1 Eliminazione del rischio".

*Opzioni di trattamento del rischio*
L'accettazione e la parziale riduzione del rischio non sono contemplate in quanto comporterebbero ritardi gravi.

*OT-4.3.1 Eliminazione del rischio*

*Strategia di trattamento*

Al termine dei task assegnati al singolo individuo, si evidenziano due possibili scenari:

- nel caso in cui lo Sprint backlog non sia stato completato, il membro del gruppo che ha terminato i task a lui assegnati deve procedere all'individuazione e alla selezione di un task non ancora assegnato;

- nel caso in cui lo Sprint backlog risulti terminato o tutti i task in esso contenuti risultino già in corso o in verifica, sarà compito del membro del gruppo evidenziare la sua disponibilità agli altri membri. Si dovrà dunque procedere con l'assegnazione di un task proveniente dal project backlog o con la creazione e assegnazione di un nuovo task.


*Conseguenze*

Minimizzare gli sprechi del tempo a disposizione è una priorità per il gruppo al fine di garantire il raggiungimento nei tempi attesi delle milestone prefissate.
Se il rischio dovesse verificarsi più volte consecutivamente è necessario rivedere l'effettiva efficacia della pianificazione dei task in sede di retrospettiva.


\ *RIS-4.4 Lenta ripresa dei lavori* <RIS-4.4>

Durante la durata del progetto è eccezionalmente possibile che si verifichino dei periodi in cui uno o più membri non godano di sufficiente disponibilità per partecipare alle attività di progetto.
Questo può avvenire, ad esempio, a seguito di particolari impegni personali o universitari.
La ripresa dei lavori a pieno regime, seguendo correttamente le norme prefissate ed utilizzando correttamente tutte le tecnologie, potrebbe non essere immediata.
Si ritiene fondamentale minimizzare l'impatto in termini di tempo e qualità sul lavoro svolto.

- *Impatto*: medio;
- *Probabilità*: 1;
- *Soglie*:
  - se le circostanze consentono ai membri coinvolti di mantenere, nonostante i rallentamenti, un certo grado di familiarità con le norme, gli automatismi e le tecnologie adottate, si adotta "OT-4.4.1 Eliminazione del rischio";
  - se l'allontanamento dai lavori avviene senza il mantenimento di un certo grado di familiarità con le dinamiche interne al gruppo, si adotta "OT-4.4.2 Riduzione della sua probabilità o gravità".

*Opzioni di trattamento del rischio*

*OT-4.4.1 Eliminazione del rischio*

*Strategia di trattamento*

I membri coinvolti devono mantenere familiarità con le norme, gli automatismi e le tecnologie adottate. Per farlo devono tenersi aggiornati sullo stato di avanzamento dei lavori e relativi possibili cambiamenti e decisioni prese dal gruppo, soprattutto relativamente alle #ndp.

*Conseguenze*

Viene minimizzato il tempo necessario al recupero completo degli automatismi necessari a produrre progressi soddisfacienti nei lavori.

\ *OT-4.4.2 Riduzione della sua probabilità o gravità*

*Strategia di trattamento*

Al termine dell'allontanamento, i membri coinvolti devono assicurarsi di essere aggiornati riguardo lo stato di avanzamento dei lavori ed eventuali cambiamenti e decisioni avvenute nel corso del periodo di assenza.
Inoltre, prima di produrre avanzamenti nei lavori, è necessario che le norme relative ai task da svolgere e le tecnologie da adottare, vengano recuperate.

*Conseguenze*

L'inevitabile rallentamento nella ripresa dei lavori viene mitigato e minimizzato così da poter produrre risultati soddisfacienti ed in linea con la qualità attesa dal gruppo.


#pagebreak()

= Panoramica generale <panoramica-generale>
Identificati i rischi, le relative contromisure e il calendario di progetto, è stato definito, mediante una pianificazione a ritroso, un preventivo iniziale dei costi di realizzazione del progetto.

È corretto evidenziare come i membri del gruppo non siano dotati di esperienza sufficiente per fornire un preventivo corretto e preciso sin dagli inizi dello sviluppo: per tale motivo, il prezzo indicato sarà soggetto a modifiche con l'avanzamento del progetto (seppur mai superando il prezzo preventivato in candidatura).

== Prospetto orario complessivo <prospetto-orario-complessivo>
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
    [Costo\ orario], [€ 30], [€ 20], [€ 25], [€ 25], [€ 15], [€ 15], [/],
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

== Preventivo calcolato
Il costo totale preventivato è di € 13055.

== Analisi dei ruoli
=== Responsabile
Il Responsabile è un ruolo presente durante l'intero progetto. Il suo compito è quello di gestire il gruppo e di assicurarsi che lo sviluppo proceda secondo le tempistiche predefinite e le aspettative del Committente. Deve inoltre redigere e far rispettare le #ndp, nonché le linee guida di sviluppo che l'intero gruppo deve rispettare. Essendo il ruolo più costoso, il numero di ore è stato scelto per favorire l'efficienza e non pesare eccessivamente sul costo finale.

=== Amministratore
L'Amministratore è un ruolo presente durante l'intero progetto, in quanto si occupa di predisporre e controllare il corretto utilizzo delle procedure e degli strumenti definiti nelle #ndp, andando anche a gestire e implementare automatismi, migliorando così l'efficienza del gruppo. Il monte ore scelto è tale, poiché essendo questo un ruolo di controllo, non sono richieste un numero elevato di ore.

=== Analista
L'Analista è il ruolo preposto all'individuazione, redazione, aggiornamento e tracciamento dei requisiti del progetto. Il modello Agile adottato dal gruppo prevede che l'attività di analisi si svolga in modo incrementale, seppur preminente inizialmente, che permetterà la redazione del documento #adr ai fini della _Requirements and Technology Baseline_. Pertanto, per il ruolo di Analista il gruppo riserva un numero di ore durante il periodo PB qualora si necessitasse di rivedere o aggiornare i requisiti individuati.

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


#pagebreak()

= Periodi di sviluppo <periodi-di-sviluppo>
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
  - #adr;
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

= Pianificazione del lavoro <pianificazione-lavoro>
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

=== Rotazione dei ruoli

Il gruppo _Error\_418_ adotta una rotazione dei ruoli, in modo da garantire che ciascun membro del gruppo abbia la possibilità di svolgere ciascun ruolo almeno una volta durante lo sviluppo del progetto. Questo permette di:
- aderire alle linee guida del regolamento del progetto didattico;
- offrire una visione d'insieme del progetto a tutti i membri del gruppo;
- garantire che ciascun membro del gruppo possa sviluppare competenze trasversali.

I ruoli assegnati a ciascun membro del gruppo sono riportati in @preventivi e @consuntivi. La ripartizione delle ore per ciascun ruolo è riportata in @prospetto-orario-complessivo.

#pagebreak()

= Preventivi di periodo <preventivi>
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
    [Costo\ ruolo],     [€ 90],     [€ 160],     [€ 150],     [€ 0],     [€ 0],     [€ 90],     [€ 490],
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
Gli obiettivi del secondo sprint si concentrano sull'individuazione degli Use Case del progetto, sul perfezionamento delle automazioni e sulla stesura iniziale delle #ndp.

Gli obiettivi dello sprint 2 sono:
- riconfigurazione della repository;
- stesura della sezione _Introduzione_ del documento #ndp;
- stesura della sezione _Processi di supporto_ del documento #ndp;
- perfezionamento delle automazioni per la compilazione dei documenti;
- implementazione delle automazioni per il versionamento dei documenti;
- contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- meeting con l'azienda Proponente per riflettere sull'#adr e sulle tecnologie da usare;
- inizio dell'individuazione e della stesura degli Use Case.

=== Preventivo costi
Nel secondo sprint il gruppo svolge compiti correttivi incentrati sul miglioramento dei documenti e compiti orientati all'individuazione e alla stesura degli Use Case. In quest'ottica, vede l'impiego principale delle figure:
- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;

- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira per la definizione e il miglioramento delle automazioni per la compilazione e il versionamento dei documenti;

- *Verificatore*: al fine di garantire che le modifiche effettuate rispecchino gli standard qualitativi desiderati e implementino effettivamente le mancanze individuate dalla valutazione;

- *Analista*: al fine di individuare e sviluppare testualmente i principali Use Case in ottica del documento #adr.

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
    [Costo\ ruolo],     [€ 90],     [€ 160],     [€ 225],     [€ 0],     [€ 0],     [€ 45],     [€ 520],
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
Gli obiettivi del terzo sprint si concentrano sull'aggiornamento del documento #ndp, sul periodo di #adr (principalmente concentrata sui requisiti funzionali) e su un primo momento di esplorazione delle nuove tecnologie.

Gli obiettivi dello sprint 3 sono:
- proseguimento del processo di individuazione e stesura degli Use Case;
- perfezionamento delle automazioni di versionamento documenti;
- perfezionamento del template usato per i documenti;
- aggiornamento del documento #ndp;
- studio iniziale della libreria Three.js;
- meeting con l'azienda Proponente per esporre ipotesi e Use Case individuati, richiedere chiarimenti ed avanzare opportune richieste;
- contatto con l'azienda Proponente per fissare il prossimo meeting.

=== Preventivo costi
Nel terzo sprint, il gruppo svolge delle attività principalmente focalizzate sull'#adr e sull'aggiornamento e perfezionamento dei documenti e delle automazioni. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di:
  - gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti;
  - aggiornare il documento #pdp.
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
    [Costo\ ruolo],     [€ 90],     [€ 120],     [€ 200],     [€ 75],     [€ 0],     [€ 45],     [€ 530],
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
del documento #adr e sull'esplorazione delle nuove tecnologie.

Gli obiettivi dello sprint 4 sono:
- perfezionamento della stesura degli Use Case individuati finora;
- redazione di una prima versione dell'#adr;
- scelta di una data per un eventuale primo meeting con il #cardin per ottenere un feedback sull'#adr;
- proseguimento della redazione e aggiornamento del documento #ndp;
- proseguimento periodo di studio di Three.js, finalizzato a:
 - creazione di alcuni scaffali nell'ambiente tridimensionale;
 - implementazione sistema di _drag and drop_;
 - parametrizzazione degli elementi presenti nell'applicazione.

=== Preventivo costi
Nel quarto sprint il gruppo svolge compiti correttivi incentrati sul miglioramento dei documenti, #adr e studio delle nuove tecnologie. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di:
  - gestire gli strumenti GitHub e Jira per la definizione delle automazioni per la compilazione e il versionamento dei documenti;
  - aggiornare il documento #pdp.
- *Analista*: al fine di perfezionare la stesura degli Use Case individuati e redigere una prima versione del documento #adr;
- *Progettista*: al fine di condurre uno studio esplorativo sulla libreria Three.js;
- *Programmatore*: al fine di esplorare in modo pratico le tecnologie relative ai PoC;
- *Verificatore*: al fine di verificare la correttezza delle modifiche ai documenti e di effettuare un controllo sulla validità degli Use Case individuati nel documento #adr.

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
    [Costo\ ruolo],     [€ 90],     [€ 120],     [€ 175],     [€ 25],     [€ 45],     [€ 45],     [€ 500],
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
del documento #adr e sullo sviluppo dei primi PoC.

Gli obiettivi dello sprint 5 sono:
- perfezionamento del sistema di _drag and drop_ nel PoC;
- creazione degli scaffali nel PoC;
- creazione ambiente Docker;
- svolgere meeting con il #cardin in merito all'#adr;
- perfezionare e aggiornare il documento #ndp;
- aggiornamento del documento #adr, introducendo i requisiti non funzionali;
- informarsi sul documento #pdq;
- aggiornare vecchi documenti con il nuovo template;
- migliorare affidabilità GitHub Actions;
- redigere il Glossario.

=== Preventivo costi
Nel quinto sprint il gruppo svolge compiti correttivi incentrati sul miglioramento dei documenti, #adr e studio delle nuove tecnologie. In quest'ottica, vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira;
- *Analista*: al fine di redigere il documento #adr;
- *Progettista*: al fine di continuare lo studio sulla libreria Three.js;
- *Programmatore*: al fine di sviluppare i PoC relativi allo studio della libreria;
- *Verificatore*: al fine di:
  - verificare la correttezza delle modifiche ai documenti;
  - effettuare un controllo sulla validità e formulazione degli Use Case individuati e del documento #adr.

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
    [Costo\ ruolo],     [€ 90],     [€ 60],     [€ 200],     [€ 100],     [€ 120],     [€ 45],     [€ 615],
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
- proseguire con il lavoro sul documento #ndp;
- redigere introduzione del documento #pdq;
- adeguare l'#adr in funzione di quanto emerso durante lo scorso meeting con il #cardin;
- aggiungere al documento #adr la tabella che correli gli Use Case ai requisiti.

=== Preventivo costi
Nel sesto sprint il gruppo svolge compiti correttivi incentrati sul miglioramento dei documenti #adr e #ndp.
Il gruppo continua a produrre e migliorare PoC e inizia a scrivere il documento #pdq.
In quest'ottica vede l'impiego principale delle figure:

- *Responsabile*: al fine di coordinare le attività e contattare l'azienda Proponente;
- *Amministratore*: al fine di gestire gli strumenti GitHub e Jira, redigere i verbali e aggiornare il documento #pdp;
- *Analista*: al fine di redigere il documento #adr con relativi diagrammi UML;
- *Progettista*: al fine di progettare i PoC;
- *Programmatore*: al fine di sviluppare i PoC;
- *Verificatore*: al fine di verificare la correttezza delle modifiche ai documenti assicurandosi che siano coerenti con le #ndp.

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
    [Costo\ ruolo],     [€ 90],     [€ 60],     [€ 200],     [€ 50],     [€ 90],     [€ 45],     [€ 535],
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
Gli obiettivi del settimo sprint si focalizzano sul completamento del PoC A, terminare l'#adr e in generale sull'avanzamento dei documenti e miglioramento delle automazioni. Nel dettaglio gli obiettivi posti sono:
- creazione di un PoC per il front-end e realizzazione di un PoC definitivo comprendente tutto il lavoro svolto finora;
- espansione del #pdq con l'individuazione delle metriche da utilizzare;
- aggiornamento delle #ndp;
- completamento del documento #adr con:
  - implementazione del tracciamento requisito-fonte;
  - revisione generale del documento per verificare la presenza e correttezza di tutti gli Use Case e requisiti necessari.
- miglioramento delle GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- implementazione dell'automazione che evidenzia i termini presenti nel glossario all'interno dei documenti.

=== Preventivo costi
Nel settimo sprint i compiti del gruppo sono incentrati sulla realizzazione del PoC finale e sul proseguimento e miglioramento di tutti i documenti necessari alla Requirements and Technology Baseline. Di conseguenza saranno essenziali le figure di:
- *Responsabile*: al fine di coordinare le attività e proseguire la redazione delle #ndp;
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp;
  - gestire GitHub e Jira;
  - migliorare le GitHub Actions risolvendo gli errori legati al versionamento dei file e all'aggiornamento dei changelog.
- *Analista*: al fine di migliorare il documento #adr e aggiungere il tracciamento requisito-fonte;
- *Progettista*: al fine di studiare e confrontare le tecnologie per il front-end individuate;
- *Programmatore*: al fine di realizzare un PoC per il front-end e un PoC finale;
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp;
  - individuare le metriche da inserire nel #pdq.

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
    [Costo\ ruolo],     [€ 90],     [€ 80],     [€ 75],     [€ 150],     [€ 75],     [€ 30],     [€ 500],
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
Gli obiettivi dell'ottavo sprint si incentrano sul completamento delle attività rimaste sospese nel settimo sprint e sull'avanzamento del documento #ndp, oltre che sul miglioramento di alcuni aspetti di attività già concluse. Gli obiettivi prefissati per questo sprint sono:

- miglioramento del Glossario:
  - rendere _case insensitive_ l'individuazione dei termini;
  - implementare la gestione di plurali e acronimi.
- proseguimento del documento #adr con:
  - implementazione tracciamento requisito-fonte;
  - miglioramento della resa grafica dei diagrammi UML tramite la loro conversione in SVG.
- proseguimento del documento #ndp, recuperando i capitoli non scritti nello sprint precedente e espandendone altri;
- perfezionamento del PoC finale;
- miglioramento delle GitHub Actions risolvendo eventuali problemi o aggiungendo funzionalità;
- studio e confronto delle tecnologie riguardanti le API (Next.js e Express.js);
- realizzazione di un sito web per la documentazione;
- realizzazione di una dashboard per monitorare le metriche definite nel #pdq.

=== Preventivo costi
Gli obiettivi dell'ottavo sprint riguardano tutti gli aspetti del progetto, di conseguenza saranno necessari tutti i ruoli presenti nel gruppo:
- *Responsabile*: al fine di coordinare le attività e proseguire la redazione delle #ndp;
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp;
  - gestire GitHub e Jira;
  - migliorare le GitHub Actions individuando e rimuovendo bug;
  - migliorare il Glossario secondo quanto descritto nel paragrafo di pianificazione di questo sprint.
- *Analista*: al fine di:
  - aggiungere il tracciamento requisito-fonte nel documento #adr;
  - convertire i diagrammi UML in SVG.
- *Progettista*: al fine di studiare e confrontare le tecnologie per l'implementazione delle API;
- *Programmatore*: al fine di proseguire con l'implementazione del PoC finale;
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp;
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
    [Costo\ ruolo],     [€ 120],     [€ 60],     [€ 75],     [€ 150],     [€ 45],     [€ 60],     [€ 510],
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
Gli obiettivi dell'ottavo sprint si incentrano sul completamento delle attività rimaste sospese nell'ottavo sprint, sulla revisione dei documenti e del PoC in vista della valutazione RTB. Gli obiettivi prefissati per questo sprint sono:

- estensione e revisione del documento #ndp;
- correzione degli errori riscontrati in alcuni UC nel documento #adr, compreso l'aggiornamento dei diagrammi UML associati;
- realizzazione di una dashboard per monitorare le metriche definite nel #pdq;
- revisione dei documenti prodotti finora;
- risoluzione dei problemi legati all'automazione per il versionamento dei documenti;
- ripresa dei contatti con il Proponente tramite l'invio di una comunicazione di aggiornamento corredata da un video demo del PoC.

=== Preventivo costi
Gli obiettivi del nono sprint riguardano i seguenti ruoli:
- *Responsabile*: al fine di:
  - coordinare le attività e proseguire la redazione delle #ndp;
  - contattare il Proponente fornendo aggiornamenti sull'avanzamento dei lavori.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp;
  - gestire GitHub e Jira;
  - migliorare le GitHub Actions individuando e rimuovendo bug;
  - realizzare una dashboard per il monitoraggio delle metriche.
- *Analista*: al fine di correggere gli errori riscontrati in alcuni UC nel documento #adr;
- *Verificatore*: al fine di:
  - revisionare i documenti prodotti nel corso degli sprint precedenti;
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp.

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
    [Costo\ ruolo],     [€ 120],     [€ 200],     [€ 125],     [€ 0],     [€ 0],     [€ 180],     [€ 625],
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

Gli obiettivi del decimo sprint vertono sulla revisione dei documenti in preparazione per il colloquio RTB. Gli obiettivi prefissati per questo sprint sono:

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
  - redigere la presentazione a supporto della valutazione RTB.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp;
  - aggiornare le visualizzazioni della dashboard di monitoraggio;
  - gestire GitHub e Jira.
- *Analista*: al fine di:
  - ultimare la revisione del documento #adr.
- *Programmatore*: al fine di:
  - identificare e correggere le cause del problema prestazionale del PoC.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp;
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
    [Costo\ ruolo],     [€ 60],     [€ 40],     [€ 50],     [€ 0],     [€ 60],     [€ 120],     [€ 330],
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

- aggiornare il #pdq con nuove metriche individuate riguardanti:
  - budget utilizzato;
  - ore rimanenti.
- rimuovere Express dal PoC a seguito del feedback del #cardin;
- registrazione di un video dimostrazione del PoC destinato al proponente;
- creazione di un collegamento tra Jira e Grafana per il cruscotto di controllo della qualità;
- ultimare il documento #adr con alcune modifiche minori agli Use Cases;
- verificare la correttezza dei documenti redatti finora;
- preparare la candidatura per il colloquio RTB:
  - Redigere nuova lettera di presentazione con aggiornamento di preventivo;
  - Continuare la revisione dei documenti.

=== Preventivo costi

Sono state assegnate ore al ruolo di Verificatore e Analista a scapito di quello di Programmatore in quanto il PoC risulta ormai ultimato:

- *Responsabile*: al fine di coordinare le attività.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp;
  - gestire GitHub e Jira.
- *Analista*: al fine di:
  - ultimare alcune modifiche al documento #adr;
  - ricontrollare interamente il documento di #adr.
- *Progettista*: al fine di mettere per iscritto le motivazioni che hanno portato alla scelta delle tecnologie utilizzate nel PoC.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp;
  - ricontrollare i documenti prodotti e correggere eventuali errori riscontrati;
  - inserire nel #pdq alcune metriche nuove.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [2],     [0],     [0],     [0],     [2],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [2],     [2],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [2],     [2],
    [Nardo],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Oseliero],     [0],     [0],     [1],     [0],     [0],     [0],     [1],
    [Todesco],     [0],     [3],     [0],     [0],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [2],     [2],
    [Totale ore],     [3],     [3],     [3],     [0],     [0],     [6],     [15],
    [Costo ruolo],     [€ 90],     [€ 60],     [€ 75],     [€ 0],     [€ 0],     [€ 90],     [€ 315],
  ),
  caption: "Prospetto del preventivo, sprint 11"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 3),
  ("Analista", 3),
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
  caption: "Suddivisione oraria per ruolo, preventivo sprint 11",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 12 dal 21-01-2024 al 28-01-2024

=== Obiettivi prefissati

Gli obiettivi del dodicesimo sprint riguardano la partecipazione al colloquio RTB con il #cardin, in data 25/01/2024 alle ore 8:40.

In questo sprint inizia la sessione d'esame invernale. Gli obiettivi prefissati per questo sprint sono:
- estensione dei termini di Glossario;
- aggiunta di grafici significativi al #pdp, come ad esempio la suddivisione oraria per ruolo, mediante il pacchetto `plotst` di Typst;
- correzione minore della tabella che riporta il computo dei requisiti totali nel documento di #adr;
- ripasso generale individuale e collettivo prima del colloquio RTB.

=== Preventivo costi

Dato lo scope ridotto del lavoro, questo sprint impiega un numero di ore inferiore rispetto agli sprint precedenti. I ruoli attivi durante questo sprint sono:
- *Responsabile*: al fine di coordinare le attività.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp.
- *Progettista*: al fine di estendere i termini del Glossario.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp;
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
    [Costo\ ruolo],     [€ 30],     [€ 20],     [€ 0],     [€ 75],     [€ 0],     [€ 30],     [€ 155],
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
  - aggiornare il documento #pdp.

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
    [Costo\ ruolo],     [€ 60],     [€ 20],     [€ 0],     [€ 0],     [€ 0],     [€ 0],     [€ 80],
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
Il feedback ricevuto dopo il colloquio RTB con il #cardin ha evidenziato la necessità di una profonda revisione del documento di #adr, che pertanto è il focus principale di questo sprint. Gli obiettivi prefissati per questo sprint sono:
- revisione, correzione ed estensione del documento #adr secondo il feedback ricevuto;
- preparazione in vista del colloquio RTB con il #vardanega (data da definire);
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
  - aggiornare il documento #pdp;
  - aggiornare la dashboard di monitoraggio.
- *Analista*: al fine di implementare le correzioni e le estensioni al documento #adr;
- *Progettista*: al fine di estendere i termini del Glossario.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp;
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
    [Costo\ ruolo],     [€ 90],     [€ 60],     [€ 200],     [€ 50],     [€ 0],     [€ 195],     [€ 595],
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

== Sprint 15 dal 11-02-2024 al 18-02-2024

=== Obiettivi prefissati
Questo sprint si occupa della preparazione per il colloquio RTB con il #vardanega e avvia le attività di progettazione del prodotto software. Gli obiettivi prefissati per questo sprint sono:
- definizione del diagramma ER del database da implementare;
- studio preliminare degli elementi architetturali del prodotto;
- identificazione degli strumenti di appoggio per l'implementazione di una pipeline di CI/CD;
- configurazione della repository e dei suddetti strumenti;
- miglioramento della struttura informativa del documento #adr, in particolare per quanto riguarda il tracciamento tra casi d'uso e requisiti;
- aggiornamento delle GitHub Actions recentemente deprecate (`actions/upload-artifact`, `actions/download-artifact`, `actions/setup-python`);
- prenotazione del colloquio RTB con il #vardanega, nella seconda metà della settimana.

=== Preventivo costi
Questo sprint impiega:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - candidare il gruppo al colloquio RTB;
  - contattare il Proponente fornendo aggiornamenti sull'avanzamento dei lavori.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp;
  - identificare gli strumenti di appoggio per l'implementazione di una pipeline di CI/CD;
  - configurare la repository e i suddetti strumenti.
- *Analista*: al fine di:
  - migliorare il tracciamento tra casi d'uso e requisiti nel documento #adr.
- *Progettista*: al fine di:
  - definire il diagramma ER del database;
  - studiare gli elementi architetturali del prodotto.
- *Programmatore*: al fine di:
  - implementare uno scheletro dell'applicazione, simile al PoC per struttura ma privo dell'ambiente fornito da Three.js, con Docker Compose;
  - realizzare un primo prototipo del database;
  - aggiornare le GitHub Actions che fanno uso di dipendenze recentemente deprecate (`actions/upload-artifact`, `actions/download-artifact`, `actions/setup-python`).
- *Verificatore*: al fine di verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [2],     [3],     [0],     [5],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Gardin],     [0],     [0],     [0],     [0],     [3],     [0],     [3],
    [Nardo],     [0],     [2],     [3],     [0],     [0],     [0],     [5],
    [Oseliero],     [0],     [2],     [0],     [2],     [0],     [0],     [4],
    [Todesco],     [3],     [0],     [0],     [0],     [0],     [0],     [3],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [4],     [4],
    [Totale ore],     [3],     [4],     [3],     [4],     [6],     [7],     [27],
    [Costo ruolo],     [90],     [80],     [75],     [100],     [90],     [105],     [540],
  ),
  caption: "Prospetto del preventivo, sprint 15"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 4),
  ("Analista", 3),
  ("Progettista", 4),
  ("Programmatore", 6),
  ("Verificatore", 7),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 15",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 16 dal 18-02-2024 al 25-02-2024

=== Obiettivi prefissati
In questo sprint prosegue il lavoro di kick-off del design del MVP. Gli obiettivi prefissati sono:
- ripresa dei colloqui con il Proponente, in modalità sincrona, il giorno 22/02/2024 alle ore 15:00;
- accorpamento del documento #ris nel #pdp;
- aggiornamento ed estensione del documento #pdp;
- definizione nel #pdq delle prime metriche di qualità del prodotto;
- estensione delle #ndp basata su _Architecture Definition process_ (6.4.4 del documento di riferimento) e _Design Definition process_ (6.4.5 del documento di riferimento);
- preparazione di un mock-up dell'interfaccia utente del prodotto con Figma;
- definizione del diagramma delle classi del MVP;
- esplorazione degli strumenti di testing (Jest, Jasmine, Mocha per lo unit testing, Playwright per l'end-to-end testing);
- generale adeguamento della documentazione al feedback ricevuto dal #vardanega a seguito del colloquio RTB.

=== Preventivo costi
Questo sprint impiega:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - organizzare il lavoro in reazione al feedback;
  - organizzare il meeting con il Proponente, anche tramite la redazione di una board Miro di supporto;
  - contattare il Proponente fornendo aggiornamenti sull'avanzamento dei lavori;
  - estendere le #ndp\;
  - estendere l'#ris\.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp\;
  - accorpare il documento #ris nel #pdp\.
- *Analista*: al fine di:
  - aggiornare il documento #adr a seguito dell'incontro con il Proponente.
- *Progettista*: al fine di:
  - definire le prime metriche di qualità del prodotto nel #pdq\;
  - definire il diagramma delle classi del MVP.
- *Programmatore*: al fine di:
  - definire la UX;
  - esplorare gli strumenti di testing individuati e selezionare quelli più in linea con le esigenze del progetto, anche tramite la realizzazione di dimostratori tecnologici;
  - preparare un mock-up dell'interfaccia utente del prodotto con Figma.
- *Verificatore*: al fine di verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [2],     [0],     [0],     [0],     [4],     [1],     [7],
    [Carraro],     [0],     [0],     [2],     [3],     [0],     [2],     [7],
    [Gardin],     [2],     [0],     [0],     [0],     [4],     [0],     [6],
    [Nardo],     [0],     [0],     [2],     [3],     [3],     [0],     [8],
    [Oseliero],     [2],     [0],     [0],     [0],     [0],     [2],     [4],
    [Todesco],     [0],     [3],     [2],     [0],     [0],     [2],     [7],
    [Zaccone],     [2],     [0],     [0],     [2],     [0],     [2],     [6],
    [Totale ore],     [8],     [3],     [6],     [8],     [11],     [9],     [45],
    [Costo ruolo],     [240],     [60],     [150],     [200],     [165],     [135],     [950],
  ),
  caption: "Prospetto del preventivo, sprint 16"
)
#let data = (
  ("Responsabile", 8),
  ("Amministratore", 3),
  ("Analista", 6),
  ("Progettista", 8),
  ("Programmatore", 11),
  ("Verificatore", 9),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 16",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 17 dal 26-02-2024 al 03-03-2024

=== Obiettivi prefissati
Questo sprint si occupa di cominciare il lavoro di definizione del design e di proseguire il lavoro sulla documentazione. Gli obiettivi prefissati sono:
- meeting interno di design thinking, in modalità sincrona, il giorno 26/02/2024 ore 15:00;
- colloquio con il Proponente, in modalità sincrona, il giorno 29/02/2024 alle ore 16:00;
- estendere le #ndp con il paragrafo di Technical processes/Implementation process;
- estendere le #ndp con il paragrafo di Technical processes/Integration process;
- estendere le #ndp con il paragrafo di Technical processes/Verification process;
- estendere le #ndp con il paragrafo di Organizational Project-Enabling processes/Quality Management process;
- aggiornare #ndp normando il sistema di tracciamento rischi - risoluzione;
- #adr: revisione del documento;
- redigere introduzione del documento Manuale Utente;
- redigere introduzione del documento Specifica Tecnica;
- #pdp: redigere preventivo e consuntivo dello sprint 16;
- #pdp: redigere preventivo sprint 17;
- aggiornare le metriche del #pdq con i dati aggiornati da Grafana;
- preparare il mock-up dell'UI da presentare al Proponente;
- aggiornare lo schema ER in seguito al feedback ricevuto dal Proponente.


=== Preventivo costi
Questo sprint impiega:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - organizzare il lavoro in reazione al feedback;
  - organizzare il meeting con il Proponente, anche tramite la redazione di una board Miro di supporto;
  - estendere le #ndp\.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp\.
- *Analista*: al fine di:
  - revisionare il documento #adr a seguito dell'incontro con il Proponente.
- *Progettista*: al fine di:
  - aggiornare lo schema ER in seguito al meeting con il Proponente;
  - definire una bozza dello schema delle classi.
- *Programmatore*: al fine di:
  - aggiornare il mock-up prodotto per il meeting con il Proponente;
  - modificare il database secondo il nuovo schema ER;
  - iniziare i lavori sul database.
- *Verificatore*: al fine di verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [4],     [3],     [7],
    [Carraro],     [1],     [0],     [3],     [2],     [0],     [0],     [6],
    [Gardin],     [0],     [0],     [3],     [0],     [4],     [0],     [7],
    [Nardo],     [0],     [2],     [3],     [0],     [0],     [2],     [7],
    [Oseliero],     [0],     [2],     [0],     [1],     [4],     [0],     [7],
    [Todesco],     [3],     [0],     [0],     [0],     [0],     [3],     [6],
    [Zaccone],     [2],     [0],     [0],     [2],     [0],     [0],     [4],
    [Totale ore],     [6],     [4],     [9],     [5],     [12],     [8],     [44],
    [Costo ruolo],     [180],     [80],     [225],     [125],     [180],     [120],     [910],
  ),
  caption: "Prospetto del preventivo, sprint 17"
)
#let data = (
  ("Responsabile", 6),
  ("Amministratore", 4),
  ("Analista", 9),
  ("Progettista", 5),
  ("Programmatore", 12),
  ("Verificatore", 8),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 17",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 18 dal 03/03/2024 al 10/03/2024
=== Obiettivi prefissati

In questo sprint proseguono le attività di design e di implementazione. Gli obiettivi prefissati sono:
- colloquio con il Proponente in data 07/03/2024;
- aggiornamento ed estensione del documento #pdp\;
- aggiornamento grafici delle metriche nel #pdq allo Sprint 17;
- aggiornamento della dashboard Grafana allo Sprint 17;
- estensione delle #ndp basata su _Transition process_ (6.4.10 dello standard di riferimento) e _Validation process_ (6.4.11 dello standard di riferimento);
- continuazione della revisione dell'#adr\;
- richiedere colloquio in modalità sincrona con il #cardin per discutere dei dubbi riguardanti la progettazione;
- individuazione della struttura del documento #st\;
- redazione sezioni riguardanti il database e l'architettura nella #st\;
- implementazione e popolazione database PostgreSQL;
- implementazione pattern middleware;
- realizzazione creazione ambiente Three.js;
- aggiornamento e aggiunta di funzionalità riguardanti le Zone dell'ambiente nel mock-up.

=== Preventivo costi
Questo sprint impiega:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - organizzare il lavoro in reazione al feedback;
  - organizzare il meeting con il Proponente, anche tramite la redazione di una board Miro di supporto;
  - contattare il #cardin per richiedere un colloquio in modalità sincrona;
  - estendere le #ndp\.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp\.
- *Analista*: al fine di:
  - proseguire con la revisione del documento #adr\.
- *Progettista*: al fine di:
  - proseguire con la definizione dell'architettura del prodotto.
- *Programmatore*: al fine di:
  - implementare e popolare il database;
  - iniziare l'implementazione delle prime funzionalità del prodotto.
- *Verificatore*: al fine di verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp\.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [2],     [0],     [1],     [0],     [2],     [0],     [5],
    [Carraro],     [2],     [0],     [0],     [0],     [2],     [5],     [9],
    [Gardin],     [0],     [0],     [1],     [0],     [2],     [3],     [6],
    [Nardo],     [0],     [2],     [0],     [2],     [2],     [0],     [6],
    [Oseliero],     [2],     [0],     [2],     [0],     [2],     [1],     [7],
    [Todesco],     [0],     [0],     [2],     [2],     [5],     [0],     [9],
    [Zaccone],     [0],     [0],     [2],     [0],     [5],     [0],     [7],
    [Totale ore],     [6],     [2],     [8],     [4],     [20],     [9],     [49],
    [Costo ruolo],     [180],     [40],     [200],     [100],     [300],     [135],     [955],
  ),
  caption: "Prospetto del preventivo, sprint 18"
)
#let data = (
  ("Responsabile", 6),
  ("Amministratore", 2),
  ("Analista", 8),
  ("Progettista", 4),
  ("Programmatore", 20),
  ("Verificatore", 9),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 18",
  kind: "chart",
  supplement: "Grafico"
)


== Sprint 19 dal 10/03/2024 al 17/03/2024
=== Obiettivi prefissati

In questo Sprint il lavoro si concentra principalmente sulla stesura di #st, #man e sull'implementazione del MVP. Gli obiettivi prefissati sono:
- colloquio con il Proponente in data 15/03/2024;
- aggiornamento ed estensione del documento #pdp\;
- aggiornamento grafici delle metriche nel #pdq allo Sprint 18;
- aggiornamento della dashboard Grafana allo Sprint 18;
- continuazione e conclusione della revisione e aggiornamento dell'#adr\;
- redazione sezioni riguardanti diagrammi delle classi e design pattern nella #st\;
- redazione sezioni requisiti e supporto tecnico nel #man\;
- implementazione completa della UI del MVP;
- iniziare l'implementazione degli elementi 3D.

=== Preventivo costi
Questo Sprint impiega:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - organizzare il lavoro in reazione al feedback;
  - organizzare il meeting con il Proponente.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp\.
- *Analista*: al fine di:
  - proseguire con la revisione del documento #adr\.
- *Progettista*: al fine di:
  - redigere le sezioni della #st\.
- *Programmatore*: al fine di:
  - collaborare con il Progettista nella stesura della #st\;
  - implementare la UI;
  - implementare gli elementi 3D.
- *Verificatore*: al fine di verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp\.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [1],     [0],     [2],     [4],     [3],     [10],
    [Carraro],     [0],     [1],     [0],     [2],     [5],     [0],     [8],
    [Gardin],     [0],     [0],     [0],     [0],     [5],     [0],     [5],
    [Nardo],     [0],     [0],     [3],     [0],     [3],     [5],     [11],
    [Oseliero],     [0],     [0],     [0],     [0],     [0],     [5],     [5],
    [Todesco],     [2],     [0],     [2],     [0],     [3],     [0],     [7],
    [Zaccone],     [0],     [0],     [0],     [0],     [5],     [2],     [7],
    [Totale ore],     [2],     [2],     [5],     [4],     [25],     [15],     [53],
    [Costo ruolo],     [60],     [40],     [125],     [100],     [375],     [225],     [925],
  ),
  caption: "Prospetto del preventivo, sprint 19"
)
#let data = (
  ("Responsabile", 2),
  ("Amministratore", 2),
  ("Analista", 5),
  ("Progettista", 4),
  ("Programmatore", 25),
  ("Verificatore", 15),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 19",
  kind: "chart",
  supplement: "Grafico"
)


== Sprint 20 dal 17/03/2024 al 24/03/2024
=== Obiettivi prefissati

Questo Sprint ha come obiettivi principali l'implementazione del MVP e la stesura del #man\. Sarà inoltre iniziata l'attività di revisione degli ultimi capitoli redatti delle #ndp\. Gli obiettivi prefissati sono:
- fissare un colloquio con il Proponente;
- aggiornamento ed estensione del documento #pdp\;
- aggiornamento grafici delle metriche nel #pdq allo Sprint 19;
- aggiornamento della dashboard Grafana allo Sprint 19;
- revisione dei seguenti capitoli delle #ndp\:
  - Processo di gestione della qualità;
  - Processo di implementazione;
  - Processo di integrazione;
  - Processo di verifica;
  - Processo di transizione;
  - Processo di validazione.
- conclusione della revisione dell'#adr e conseguente invio del documento al #cardin\;
- redazione della sezione della #st riguardante i requisiti soddisfatti dal prodotto;
- redazione delle seguenti sezioni del #man\:
  - Configurazione ambiente;
  - Creazione zona;
  - Modifica zona;
  - Impostazioni.
- spostare la sezione di requisiti di sistema e hardware dal #man alla #st\;
- concludere lo sviluppo del MVP.


=== Preventivo costi
Questo Sprint impiega:
- *Responsabile*: al fine di:
  - coordinare le attività;
  - organizzare il lavoro in reazione al feedback;
  - organizzare il meeting con il Proponente, anche tramite la redazione di una board Miro di supporto;
  - revisionare i capitoli delle #ndp\.
- *Amministratore*: al fine di:
  - redigere i verbali;
  - aggiornare il documento #pdp\.
- *Analista*: al fine di:
  - concludere la revisione e l'aggiornamento dell'#adr\.
- *Programmatore*: al fine di:
  - proseguire e concludere lo sviluppo del MVP;
  - redigere le sezioni del #man\.
- *Verificatore*: al fine di:
  - verificare la correttezza del lavoro prodotto e la sua coerenza con le #ndp\;
  - affiancare il Responsabile nella revisione delle #ndp\.

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [7],     [2],     [9],
    [Carraro],     [0],     [0],     [0],     [0],     [7],     [0],     [7],
    [Gardin],     [1],     [0],     [0],     [0],     [3],     [4],     [8],
    [Nardo],     [0],     [0],     [2],     [0],     [5],     [2],     [9],
    [Oseliero],     [0],     [0],     [0],     [0],     [5],     [4],     [9],
    [Todesco],     [0],     [0],     [1],     [0],     [5],     [2],     [8],
    [Zaccone],     [2],     [1],     [0],     [0],     [3],     [4],     [10],
    [Totale ore],     [3],     [1],     [3],     [0],     [35],     [18],     [60],
    [Costo ruolo],     [90],     [20],     [75],     [0],     [525],     [270],     [980],
  ),
  caption: "Prospetto del preventivo, sprint 20"
)
#let data = (
  ("Responsabile", 3),
  ("Amministratore", 1),
  ("Analista", 3),
  ("Progettista", 0),
  ("Programmatore", 35),
  ("Verificatore", 18),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 20",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 21 dal 24 /03/2024 al 30/03/2024
=== Obiettivi prefissati
=== Preventivo costi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [2],     [0],     [0],     [0],     [0],     [3],     [5],
    [Carraro],     [0],     [0],     [0],     [1],     [4],     [2],     [7],
    [Gardin],     [2],     [0],     [0],     [0],     [0],     [3],     [5],
    [Nardo],     [0],     [0],     [0],     [1],     [4],     [0],     [5],
    [Oseliero],     [0],     [2],     [0],     [0],     [0],     [0],     [2],
    [Todesco],     [0],     [0],     [0],     [0],     [5],     [0],     [5],
    [Zaccone],     [0],     [0],     [0],     [0],     [5],     [0],     [5],
    [Totale ore],     [4],     [2],     [0],     [2],     [18],     [8],     [34],
    [Costo ruolo],     [120],     [40],     [0],     [50],     [270],     [120],     [600],
  ),
  caption: "Prospetto del preventivo, sprint 21"
)
#let data = (
  ("Responsabile", 4),
  ("Amministratore", 2),
  ("Analista", 0),
  ("Progettista", 2),
  ("Programmatore", 18),
  ("Verificatore", 8),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 21",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 22 dal 30/03/2024 al 07/04/2024
=== Obiettivi prefissati
=== Preventivo costi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [2],     [0],     [0],     [2],
    [Carraro],     [2],     [0],     [0],     [0],     [0],     [2],     [4],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Nardo],     [0],     [3],     [0],     [0],     [0],     [3],     [6],
    [Oseliero],     [0],     [0],     [0],     [2],     [0],     [0],     [2],
    [Todesco],     [2],     [0],     [0],     [0],     [0],     [3],     [5],
    [Zaccone],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Totale ore],     [4],     [3],     [0],     [4],     [0],     [14],     [25],
    [Costo ruolo],     [120],     [60],     [0],     [100],     [0],     [210],     [490],
  ),
  caption: "Prospetto del preventivo, sprint 22"
)
#let data = (
  ("Responsabile", 4),
  ("Amministratore", 3),
  ("Analista", 0),
  ("Progettista", 4),
  ("Programmatore", 0),
  ("Verificatore", 14),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 22",
  kind: "chart",
  supplement: "Grafico"
)

== Sprint 23 dal 07/04/2024 al 14/04/2024
=== Obiettivi prefissati
=== Preventivo costi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [2],     [2],
    [Carraro],     [0],     [2],     [0],     [0],     [0],     [0],     [2],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [2],     [2],
    [Nardo],     [0],     [0],     [0],     [1],     [0],     [0],     [1],
    [Oseliero],     [1],     [0],     [0],     [0],     [0],     [2],     [3],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [2],     [2],
    [Zaccone],     [0],     [0],     [0],     [1],     [0],     [0],     [1],
    [Totale ore],     [1],     [2],     [0],     [2],     [0],     [8],     [13],
    [Costo ruolo],     [30],     [40],     [0],     [50],     [0],     [120],     [240],
  ),
  caption: "Prospetto del preventivo, sprint 23"
)
#let data = (
  ("Responsabile", 1),
  ("Amministratore", 2),
  ("Analista", 0),
  ("Progettista", 2),
  ("Programmatore", 0),
  ("Verificatore", 8),
)
#figure({
  roles-legend
  canvas({
    import draw: *
    chart.piechart(..piechart-config, data)}
  )},
  caption: "Suddivisione oraria per ruolo, preventivo sprint 23",
  kind: "chart",
  supplement: "Grafico"
)


== Sprint 24 dal 14/04/2024 al 21/04/2024
=== Obiettivi prefissati
=== Preventivo costi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Gardin],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Nardo],     [1],     [0],     [0],     [0],     [0],     [0],     [1],
    [Oseliero],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Todesco],     [0],     [0],     [0],     [0],     [0],     [0],     [0],
    [Zaccone],     [0],     [2],     [0],     [0],     [0],     [0],     [2],
    [Totale ore],     [1],     [2],     [0],     [0],     [0],     [0],     [3],
    [Costo ruolo],     [30],     [40],     [0],     [0],     [0],     [0],     [70],
  ),
  caption: "Prospetto del preventivo, sprint 24"
)
#let data = (
  ("Responsabile", 1),
  ("Amministratore", 2),
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
  caption: "Suddivisione oraria per ruolo, preventivo sprint 24",
  kind: "chart",
  supplement: "Grafico"
)


#pagebreak()

= Consuntivi di periodo <consuntivi>

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

Un altro problema riguarda la comunicazione con l'azienda Proponente: sfortunatamente, la mail inviata non ha ricevuto riscontro in tempo, impedendo di procedere ulteriormente con l'#adr e la programmazione di un meeting con l'azienda.

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
    [Costo\ ruolo],     [€ 60 (-30)],     [€ 240 (+80)],     [€ 100 (-50)],     [€ 0],     [€ 0],     [€ 60 (-30)],     [€ 460 (-30)],
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

- Analista: la mancata risposta da parte dell'azienda ha impedito agli analisti di iniziare l'#adr, limitando dunque il lavoro alla stesura di domande in merito al dominio tecnologico;

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
- Stesura della sezione _Introduzione_ del documento #ndp;
- Stesura della sezione _Processi di supporto_ del documento #ndp;
- Perfezionamento delle automazioni per la compilazione dei documenti;
- Implementazione delle automazioni per il versionamento dei documenti;
- Contatto con l'azienda Proponente per comunicare l'esito della candidatura;
- Meeting con l'azienda Proponente per riflettere sull'#adr e sulle tecnologie da usare;
- Inizio dell'individuazione e della stesura degli Use Case.

=== Obiettivi mancati
Gli obiettivi sono stati tutti raggiunti, considerando anche che molti erano obiettivi mancati dello sprint precedente.

=== Problematiche
- Il gruppo ha notato la mancanza di una struttura comune nei verbali, che porta a documenti senza una precisa convenzione e rallentamenti in fase di redazione;
- Sono emerse difficoltà nelle modalità di utilizzo della repository, nonostante sia stato dedicato del tempo per la formazione;
- Scarsa reattività in fase di review.

=== Risoluzioni attuate
- Per risolvere la problematica di una mancanza di struttura nei verbali, si sono fissate delle convenzioni da seguire nel documento #ndp;
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
    [Costo\ ruolo],     [€ 90],     [€ 240 (+80)],     [€ 225],     [€ 0],     [€ 0],     [€ 30 (-15)],     [€ 585 (+65)],
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
- Aggiornamento parziale del documento #ndp;
- Studio iniziale della libreria Three.js;
- Meeting con l'azienda Proponente per esporre ipotesi e Use Case individuati, richiedere chiarimenti ed avanzare opportune richieste;
- Contatto con l'azienda Proponente per fissare il prossimo meeting.

=== Obiettivi mancati
- Aggiornamento completo del documento #pdp con l'inserimento dei grafici di Gantt e di burndown.

=== Problematiche

Nonostante la realizzazione soddisfacente della maggior parte degli obiettivi concordati, sono emerse alcune criticità durante l'implementazione del progetto:

- si è riscontrata una pianificazione non ottimale e superficiale, attribuibile alla mancanza di un dettagliato processo di pianificazione durante la riunione precedente l'avvio dello sprint;
- sono sorti problemi a causa della mancata definizione di standard per la creazione dei grafici di Gantt e burndown, comportando una stesura parziale dei paragrafi nel documento #pdp;
- la durata dei meeting ha superato le aspettative a causa di alcune inefficienze temporali;
- il gruppo ha rilevato la mancanza di standard per designare le persone responsabili della redazione dei verbali durante lo sprint.

=== Risoluzioni attuate
Le risoluzioni attuate per risolvere i problemi citati in precedenza si concentrano su un'organizzazione e un'attenzione maggiore nel processo di pianificazione, oltre alla definizione di standard relativi ai grafici da inserire nei documenti e relativi allo svolgimento dei meeting e redazione dei rispettivi verbali. In particolare:

- è stata prestata una maggiore attenzione nella pianificazione del nuovo sprint, introducendo nella board retrospettiva di Miro una bacheca relativa alle task da svolgere, che sono state tradotte fin da subito in ticket di Jira e assegnati ai rispettivi ruoli;
- la durata massima dei meeting di retrospettiva è stata fissata a 90 minuti (_soft limit_);
- sono stati definiti degli standard per la realizzazione dei grafici, adottando quelli proposti da Jira;
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
    [Costo\ ruolo],     [€ 60 (-30)],     [€ 160 (+40)],     [€ 200],     [€ 75],     [€ 0],     [€ 45],     [€ 540 (+10)],
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
- Redazione di una prima versione del documento #adr;
- Scelta di una data per un eventuale primo meeting con il #cardin per ottenere un feedback sull'#adr;
- Proseguimento della redazione e aggiornamento del documento #ndp;
- Proseguimento periodo di studio di Three.js,  finalizzato a:
 - creazione di scaffali nell'ambiente tridimensionale;
 - implementazione sistema di _drag and drop_;
 - parametrizzazione degli elementi presenti nell'applicazione.

=== Obiettivi mancati
Tutti gli obiettivi sono stati raggiunti.

=== Problematiche
Il gruppo ha riportato una scarsa reattività durante il processo di review e verifica, con conseguente rallentamento del lavoro. Le review sono state rallentate anche dalla presenza di numerosi merge conflicts, che il gruppo si è ritrovato a gestire per la prima volta nel progetto.

Inoltre si è presa coscienza della necessità di apportare migliorie al processo di gestione di Jira.

=== Risoluzioni attuate
Il gruppo ha preso in considerazione l'utilizzo di Graphite per velocizzare il processo di review e creare pull request brevi. L'adozione di questo strumento, o suoi analoghi, verrà valutata dall'Amministratore.

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
    [Costo\ ruolo],     [€ 90],     [€ 80 (-40)],     [€ 175],     [€ 25],     [€ 60 (+15)],     [€ 60 (+15)],     [€ 490 (-10)],
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
- Miglioramento e aggiornamento documento #adr;
- Realizzazione PoC relativo alla creazione e posizionamento di scaffali dell'ambiente di lavoro;
- Realizzazione PoC relativo alla lettura e utilizzo di file SVG e comunicazione con database;
- Realizzazione PoC che integra l'utilizzo di Docker;
- Incontro con Proponente in data 06-12-23;
- Incontro con #cardin in data 07-12-23;
- Redazione del Glossario;
- Aggiornamento documento #ndp;
- Aggiornamento documento #pdp;
- Aggiornare vecchi documenti con nuovo template.

=== Obiettivi mancati
- Miglioramento GitHub Actions.

=== Problematiche
Durante il meeting di retrospettiva sono emerse le seguenti problematiche da migliorare:
- mancanza di precise convenzioni da adottare riguardanti il codice;
- lavoro concentrato principalmente nel weekend;
- richiesta di maggiore partecipazione dei membri del gruppo sulle board di Miro.

=== Risoluzioni attuate
Conseguentemente ai problemi rilevati, sono state individuate le relative soluzioni da adottare:
- normare le convenzioni di stesura del codice nelle #ndp;
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
    [Costo\ ruolo],     [€ 90],     [€ 40 (-20)],     [€ 200],     [€ 50 (-50)],     [€ 120],     [€ 45],     [€ 545 (-70)],
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
- Aggiornamento documento #ndp;
- Aggiornamento documento #adr con:
  - refactoring degli Use Case secondo le indicazioni del #cardin;
  - redazione requisiti funzionali;
  - redazione requisiti di qualità;
  - redazione requisiti di vincolo.
- Redazione introduzione #pdq;
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
- la stesura del documento #ndp ha una velocità di avanzamento troppo bassa.

=== Risoluzioni attuate
Conseguentemente ai problemi rilevati, sono state individuate le relative soluzioni da adottare:
- si richiede ai componenti del gruppo una comunicazione rapida delle difficoltà e problemi, non appena questi si presentano;
- il numero di persone assegnate alla redazione delle #ndp verrà incrementato da due a tre, in modo da garantire la produzione di un maggior numero di sezioni durante lo sprint.

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
    [Costo\ ruolo],     [€ 90],     [€ 60],     [€ 200],     [€ 50],     [€ 75 (-15)],     [€ 45],     [€ 520 (-15)],
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
- Individuazione di metriche di base per il #pdq;
- Aggiornamento del documento #ndp;
- Automatizzata l'individuazione dei termini del glossario nei documenti.

=== Obiettivi mancati
- Implementazione del tracciamento requisito-fonte nel documento #adr;
- revisione generale del documento per verifcare la presenza e la correttezza di tutti gli Use Case e requisiti necessari;
- Correzione di bug presenti nelle GitHub Actions.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:

- il pool mensile di automatismi inclusi nel piano gratuito relativi ai ticket di Jira è stato esaurito;
- lentezza nell'approvazione delle correzioni richieste nelle review;
- nelle review delle pull request alcuni commenti risultano essere poco chiari e/o sbrigativi;
- il progresso relativo al documento #ndp è risultato scarso in confronto con gli sprint precedenti, e in ritardo rispetto a quanto pianificato;
- il tracciamento delle attività relative al PoC non ha lo stesso livello di precisione di quello delle attività documentali.

=== Risoluzioni attuate
- Richiedere l'upgrade gratuito a Jira Standard per progetti open source;
- Notiﬁcare, tramite i canali dedicati, chi debba apportare correzioni così da velocizzare i tempi di approvazione;
- Impegnarsi a fornire commenti di review più precisi:
  - indicando con precisione la natura dell'errore e, se utile, la sua localizzazione all'interno della riga;
  - fornendo una possibile correzione, quando appropriato;
  - nel caso di più occorrenze dello stesso errore, segnalarle tutte. Per evitare ripetizioni, fornire una valutazione della prima occorrenza ed inserire un riferimento a tale conversazione nelle occorrenze successive.
- Per accelerare il lavoro sulle #ndp, chi ha redatto le #ndp nel corso degli sprint precedenti continuerà l'aﬃancamento nel corso dello sprint successivo;
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
    [Costo\ ruolo],     [€ 60 (-30)],     [€ 60 (-20)],     [€ 25 (-50)],     [€ 125 (-25)],     [€ 75],     [€ 30],     [€ 375 (-125)],
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

Diversi ruoli risultano avere un monte ore minore rispetto a quello preventivato, a causa di rallentamenti nella stesura delle #ndp e, per quanto riguarda l'Analista, un rallentamento dovuto alla mancanza di materiale su cui lavorare: il materiale necessario era infatti presente in un branch di cui non era ancora stata fatta una pull request.

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
- Implementato il tracciamento requisito-fonte nell'#adr;
- Aggiornamento del documento #ndp;
- Realizzato sito web per la documentazione;
- Automatizzata l'individuazione dei termini del Glossario nei documenti.
- Realizzazione di una dashboard preliminare Grafana;
- Perfezionamento PoC finale.

=== Obiettivi mancati
- La dashboard di monitoraggio non implementa tutte le metriche individuate nel #pdq;
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
    [Costo\ ruolo],     [€ 120],     [€ 120 (+60)],     [€ 75],     [€ 125 (-25)],     [€ 75 (+30)],     [€ 60],     [€ 575 (+65)],
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
    [Costo\ ruolo],     [€ 90 (-30)],     [€ 80 (-120)],     [€ 100 (-25)],     [€ 25 (+25)],     [€ 0],     [€ 135 (-45)],     [€ 430 (-195)],
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

La pianificazione delle attività per lo sprint 9 è stata conservativa. L'entità di alcune attività, specialmente quelle relative alle automazioni e alla dashboard, si sono rivelate sensibilmente minori del previsto. Il Progettista, inizialmente non previsto, è stato interpellato per la realizzazione della presentazione per il colloquio RTB con il #cardin.

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
- I documenti #pdq, #pdp sono stati verificati in vista della valutazione RTB;
- Preparazione della presentazione Google Slides a supporto della revisione RTB.

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
    [Costo\ ruolo],     [€ 60],     [€ 40],     [€ 50],     [€ 25 (+25)],     [€ 60],     [€ 120],     [€ 355 (+25)],
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
- Inviata la candidatura al #cardin per il colloquio RTB;
- Al #pdp sono state apportate modifiche minori per migliorare la leggibilità dei dati;
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
    [Costo\ ruolo],     [€ 60 (-30)],     [€ 60],     [€ 50 (-25)],     [€ 0],     [€ 0],     [€ 60 (-30)],     [€ 230 (-85)],
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
    [Responsabile],     [41],     [€ 1230],
    [Amministratore],     [39],     [€ 780],
    [Analista],     [49],     [€ 1225],
    [Progettista],     [29],     [€ 725],
    [Programmatore],     [165],     [€ 2475],
    [Verificatore],     [101],     [€ 1515],
    [Rimanente],     [424],     [€ 7950],
  ),
  caption: "Monitoraggio sprint 11"
)


== Sprint 12 dal 21-01-2024 al 28-01-2024

=== Obiettivi raggiunti
- Colloquio con il #cardin superato con luce "ampiamente verde";
- Aggiunta di grafici al #pdp:
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
    [Costo\ ruolo],     [€ 30],     [€ 20],     [€ 25 (+25)],     [€ 75],     [€ 0],     [€ 30],     [€ 180 (+25)],
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

Il totale delle ore di lavoro preventivate è stato in gran parte rispettato. Tuttavia, il ruolo di Analista è stato attivato per correggere un errore di forma riscontrato nel calcolo dei codici identificativi dei requisiti.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [40],     [€ 1200],
    [Amministratore],     [38],     [€ 760],
    [Analista],     [48],     [€ 1200],
    [Progettista],     [26],     [€ 650],
    [Programmatore],     [165],     [€ 2475],
    [Verificatore],     [99],     [€ 1485],
    [Rimanente],     [416],     [€ 7770],
  ),
  caption: "Monitoraggio sprint 12"
)

== Sprint 13 dal 28-01-2024 al 04-02-2024

=== Obiettivi raggiunti
- Preparazione della pianificazione dello sprint 14 a seguito del risultato del colloquio RTB sostenuto con il #cardin, ricevuto il 31/01/2024.

=== Obiettivi mancati
Nessuno.

=== Problematiche
Il feedback ricevuto dal #cardin evidenzia diverse lacune nel documento #adr. Sarà dunque necessario investire risorse per correggere e migliorare il documento. Ciò potrebbe influire negativamente sull'avanzamento del progetto.

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
    [Costo\ ruolo],     [€ 90 (+30)],     [€ 20],     [€ 0],     [€ 0],     [€ 0],     [€ 0],     [€ 110 (+30)],
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

Lo sprint 13 è stato caratterizzato da un momento di pausa, dovuto alla concomitanza degli esami, conclusosi mercoledì 31/01/2024 con la ricezione del feedback da parte del #cardin. Nel corso dei giorni rimanenti, il Responsabile ha aggiornato la pianificazione per adeguarla al diverso contesto di lavoro.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [37],     [€ 1110],
    [Amministratore],     [37],     [€ 740],
    [Analista],     [48],     [€ 1200],
    [Progettista],     [26],     [€ 650],
    [Programmatore],     [165],     [€ 2475],
    [Verificatore],     [99],     [€ 1485],
    [Rimanente],     [412],     [€ 7660],
  ),
  caption: "Monitoraggio sprint 13"
)

== Sprint 14 dal 04-02-2024 al 11-02-2024

=== Obiettivi raggiunti
- Revisione, correzione ed estensione del documento #adr secondo il feedback ricevuto dal #cardin;
- Estensione delle metriche riportate nella dashboard di monitoraggio;
- Estensione dei termini di Glossario per riflettere i nuovi strumenti adottati;
- Contattato il Proponente per fornire aggiornamenti sullo stato dei lavori e programmare gli incontri successivi al colloquio RTB.

=== Obiettivi mancati
Nessuno.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:
- il carico di lavoro sul Verificatore è stato elevato;
- numerosi conflitti di _merge_ dovuti al lavoro parallelo su ticket associati allo stesso documento;
- la board Miro ha mostrato scarsità di riscontro su _Keep doings_ e _Improvements_ prima dell'incontro di retrospettiva.

=== Risoluzioni attuate
- I conflitti di _merge_ sono inevitabili quando più branch insistono sullo stesso documento. Durante questo sprint la maggior parte del lavoro è avvenuta sul documento #adr. Si cercherà di evitare la sovrapposizione di lavoro sui documenti coordinando il lavoro di redattori e Verificatori;
- Il Responsabile ha sottolineato l'importanza di individuare _Keep doings_ e _Improvements_ prima dell'incontro di retrospettiva. Non si tratta di un'attività facoltativa, ma di un processo chiave nel miglioramento continuo del gruppo.

=== Panoramica dei costi effettivi

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
  caption: "Prospetto del consuntivo, sprint 14"
)
#let data = (
  ("Responsabile", 3, 3),
  ("Amministratore", 3, 3),
  ("Analista", 8, 8),
  ("Progettista", 2, 2),
  ("Programmatore", 0, 0),
  ("Verificatore", 13, 13),
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
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 14",
  kind: "chart",
  supplement: "Grafico"
)

La pianificazione di questo sprint è stata precisa e rispettata. Il lavoro del Verificatore è stato particolarmente intenso a causa delle numerose modifiche apportate al documento #adr.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [34],     [1020],
    [Amministratore],     [34],     [680],
    [Analista],     [40],     [1000],
    [Progettista],     [24],     [600],
    [Programmatore],     [165],     [2475],
    [Verificatore],     [86],     [1290],
    [Rimanente],     [383],     [7065],
  ),
  caption: "Monitoraggio, sprint 14"
)

#box(
  width: 1fr,
  height: 7em,
  fill: rgb(242, 236, 216, 100),
  stroke: 1pt + rgb(217, 212, 194, 100),
  align(
    center + horizon,
    [
      Accesso alla PB\
      A seguito del feedback ottenuto nel colloquio RTB, il documento cambia al fine di adeguarsi alle criticità riscontrate.

      Le modifiche apportate sono raccolte e descritte nel verbale interno del 18/02/2024.
    ]
  )
)

== Sprint 15 dal 11-02-2024 al 18-02-2024
=== Obiettivi raggiunti
Lo Sprint 15 si è concluso raggiungendo tutti gli obiettivi pianificati.

In data 16/02/2024 il gruppo ha sostenuto il colloquio con il #vardanega per il secondo sportello di valutazione RTB, di cui ha ottenuto l'esito, risultato positivo, in data 17/02/2024.

In particolare durante lo sprint sono stati raggiunti i seguenti obiettivi:
- #adr\:
  - rimosso il termine "_richiesta_" nella nomeclatura dell'UC-7;
  - specificate le API utilizzate dall'UC7;
  - inserito tracciamento casi d'uso - requisiti;
  - espressa la distinzione tra obiettivi obbligatori, desiderabili e opzionali;
  - il gruppo considera completato l'aggiornamento e l'adeguamento del documento, ritenendolo pronto per una seconda revisione da parte del #cardin.

- estensione del #glo\:
  - le definizioni contenute all'interno del documento sono state aggiornate.

- #ndp\:
  - rimosso capitolo 3 riguardo stili e convenzioni non derivante dallo standard ISO/IEC 12207:2017, il cui contenuto era già assorbito dal capitolo 4.6.3 delle #ndp_v\.

- #pdp\:
  - redatti il consuntivo dello Sprint 14, terminato in data 4/02/2024, e preventivo dello Sprint 15 iniziato in data 11/02/2024.

- Automazioni:
  - aggiornate alcune componenti delle automazioni implementate nel _repository_ a seguito del rilascio di una loro nuova versione, in particolare:
    - `upload-artifact` si aggiorna dalla versione _v3_ alla versione _v4_;
    - `download-artifact` si aggiorna dalla versione _v3_ alla versione _v4_;
    - `setup-python` si aggiorna dalla versione _v4_ alla versione _v5_.
  - Rimossa la GitHub Action di supporto alla revisione di spellchecking mediante ChatGPT. Tale Action era stata precedentemente disattivata a causa dei risultati non soddisfacenti prodotti e dei numerosi falsi positivi generati.

- Miglioramenti generali:
  - al fine di promuovere una maggior coerenza stilistica, i termini ricorrenti all'interno dei documenti (es. nome di documenti, nome dei professori, ...) sono stati resi variabili riutilizzabili durante la stesura dei documenti;
  - la sezione dei riferimenti dei documenti è stata uniformata in seguito all'introduzione delle variabili sopra citate;
  - aggiunta della data di ultima consultazione dei riferimenti esterni.

=== Obiettivi mancati
Nessuno.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:

*P1*: Seppur durante lo Sprint siano state portate a termine tutte la task previste raggiungendo gli obiettivi prefissati, per alcune task non è stata rispettata la data di scadenza fissata. Ciò, pur non comportando rallentamenti o sovraccarico di lavoro, ha permesso di evidenziare nuovamente l'importanza di una comunicazione attiva.

*P2*: Alcuni membri del gruppo evidenziano gli impegni universitari non ancora conclusi, che comportano una riduzione in termini di disponibilità.

*P3*: Mancato sfruttamento del tempo alla conclusione delle task assegnate al singolo membro: si rinnova l'importanza di essere maggiormente proattivi.

=== Risoluzioni attuate
#figure(caption: [Risoluzioni attuate Sprint 15.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Problematiche affrontate],
      [RO1],[Riassegnazione task], [P1, P2],
      [RO2],[Proattività],[P3]
    )
)

=== Panoramica dei costi effettivi
#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [3 (+1)],     [2 (-1)],     [1 (+1)],     [6 (+1)],
    [Carraro],     [0],     [0],     [0],     [0],     [0],     [3],     [3],
    [Gardin],     [0],     [0],     [0],     [0],     [3],     [0],     [3],
    [Nardo],     [0],     [2],     [3],     [0],     [0],     [0],     [5],
    [Oseliero],     [0],     [1 (-1)],     [0],     [2],     [0],     [0],     [3 (-1)],
    [Todesco],     [2 (-1)],     [0],     [2 (+2)],     [0],     [0],     [0],     [4 (+1)],
    [Zaccone],     [1 (+1)],     [1 (+1)],     [0],     [0],     [0],     [1 (-3)],     [3 (-1)],
    [Totale ore],     [3],     [4],     [5 (+2)],     [5 (+1)],     [5 (-1)],     [5 (-2)],     [27],
    [Costo ruolo],     [90],     [80],     [125 (+50)],     [125 (+25)],     [75 (-15)],     [75 (-30)],     [570 (+30)],
  ),
  caption: "Prospetto del consuntivo, sprint 15"
)
#let data = (
  ("Responsabile", 3, 3),
  ("Amministratore", 4, 4),
  ("Analista", 3, 5),
  ("Progettista", 4, 5),
  ("Programmatore", 6, 5),
  ("Verificatore", 7, 5),
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
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 15",
  kind: "chart",
  supplement: "Grafico"
)

Durante lo Sprint 15 le ore preventivate (27) e le ore effettive (27) sono state rispettate, seppur la distribuzione di queste sia stata differente e maggiormente distribuita tra i membri del gruppo. In particolare:
- le ore preventivate di Responsabile e Amministratore, seppur quantitivamente rispettate, sono state ridistribuite tra i membri del gruppo;
- le ore di Analista sono state maggiori di quanto preventivato: il tracciamento UC - requsiti, per renderlo uniforme, automatico e facilmente estendibile è stato implementato mediante un automazione direttamente nei documenti in Typst e l'estensione dell'UC 7 ha richiesto più tempo del previsto;
- le ore di Progettista sono state maggiori di quanto preventivato: la progettazione dello schema ER del database è stata più complessa del previsto seppur permettendo di generare confronto tra i membri del gruppo.

=== Monitoraggio costi e ore
#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [31],     [930],
    [Amministratore],     [30],     [600],
    [Analista],     [35],     [875],
    [Progettista],     [19],     [475],
    [Programmatore],     [160],     [2400],
    [Verificatore],     [81],     [1215],
    [Rimanente],     [356],     [6495],
  ),
  caption: "Monitoraggio, sprint 15"
)

Lo Sprint 15, pur comportando un costo superiore a quanto preventivato, ha permesso di raggiungere tutti gli obiettivi prefissati. La distribuzione delle ore tra i membri del gruppo è stata differente da quanto preventivato, ma non ha comportato rallentamenti o sovraccarico di lavoro.

Il rendimento positivo dello Sprint 15 è supportato dalle principali metriche esposte dal #pdq, quali:
- CPI: il Cost Performance Index passa dal valore 0.97 (allo Sprint 14) a 0.98, indicando un miglioramento del rendimento del gruppo;
- EAC: l'Estimate At Completion passa dal valore 13.437,22 € (allo Sprint 14) a 13.292,70 € (seppur ancora maggiore al BAC), indicando una riduzione del costo finale del progetto se il rendimento del gruppo rimarrà costante.


== Sprint 16 dal 18-02-2024 al 25-02-2024

=== Obiettivi raggiunti

Lo Sprint 16 si è concluso raggiungendo tutti gli obiettivi pianificati, in particolare:

- ripresi i colloqui in modalità sincrona con il Proponente in data 22/02/2024;

- #adr\:
  - aggiornato il documento in seguito al colloquio con il Proponente.

- #glo\:
  - aggiunto Figma.

- #ndp\:
  - redatti capitoli riguardanti:
    - processo di definizione dell'architettura (6.4.4 nello standard ISO/IEC 12207:2017);
    - processo di definizione del design (6.4.5 nello standard ISO/IEC 12207:2017).
  - aggiornato il paragrafo 4.6.4 con la descrizione delle variabili Typst riguardanti termini ricorrenti, in particolare:
    - nome del gruppo;
    - Committenti;
    - nomi di documenti;
    - nomi di documenti con versione;
    - data di ultima consultazione dei riferimenti.
  - aggiornato il paragrafo 4.6.3 riguardante il contenuto dei verbali;
  - aggiunte le metriche di qualità del prodotto;
  - aggiunto Figma tra gli strumenti utilizzati;
  - descritto il versionamento del software.

- #pdp\:
  - accorpato documento #ris nel #pdp;
  - estesa sezione di Analisi dei Rischi;
  - codificati i rischi e relativi metodi di risoluzione;
  - redatto preventivo dello Sprint 16, iniziato in data 18/02/2024;
  - redatto consuntivo dello Sprint 15, terminato in data 18/02/2024.

- #pdq\:
  - definite metriche di qualità del prodotto;
  - corretti riferimenti assenti;
  - aggiornati i grafici delle metriche allo Sprint 15.

- Automazioni:
  - aggiornato template e file di supporto in modo da specificata l'affiliazione dei partecipanti esterni nei verbali;
  - creato automazione per fornire un link all'artifact prodotto dalla compilazione dei documenti in pull request.

- Miglioramenti generali:
  - aggiornate occorrenze dei nomi di documenti e Committenti nella documentazione utilizzando variabili Typst.

- Progettazione:
  - definita una bozza del diagramma delle classi per il Minimum Viable Product;
  - esplorati gli strumenti di testing (Jest, Jasmine, Mocha per lo unit testing, Playwright per l'end-to-end testing);
  - preparato un mock-up dell'interfaccia utente del prodotto;
  - definito il diagramma ER del database di supporto.

=== Obiettivi mancati

Nessuno.

=== Problematiche

Nessuna.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [1 (-1)],     [0],     [0],     [0],     [4],     [1],     [6 (-1)],
    [Carraro],     [0],     [0],     [2],     [1 (-2)],     [0],     [2],     [5 (-2)],
    [Gardin],     [2],     [1 (+1)],     [0],     [0],     [4],     [1 (+1)],     [8 (+2)],
    [Nardo],     [1 (+1)],     [0],     [1 (-1)],     [ (-3)],     [3],     [1 (+1)],     [6 (-2)],
    [Oseliero],     [2],     [0],     [0],     [2 (+2)],     [1 (+1)],     [1 (-1)],     [6 (+2)],
    [Todesco],     [0],     [2 (-1)],     [3 (+1)],     [0],     [0],     [1 (-1)],     [6 (-1)],
    [Zaccone],     [2],     [0],     [0],     [2],     [0],     [2],     [6],
    [Totale ore],     [8],     [3],     [6],     [5 (-3)],     [12 (+1)],     [9],     [43 (-2)],
    [Costo ruolo],     [240],     [60],     [150],     [125 (-75)],     [180 (+15)],     [135],     [890 (-60)],
  ),
  caption: "Prospetto del consuntivo, sprint 16"
)
#let data = (
  ("Responsabile", 8, 8),
  ("Amministratore", 3, 3),
  ("Analista", 6, 6),
  ("Progettista", 8, 5),
  ("Programmatore", 11, 12),
  ("Verificatore", 9, 9),
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
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 16",
  kind: "chart",
  supplement: "Grafico"
)

Durante lo Sprint 16 le ore effettive (43) sono risultate minori di due unità rispetto alle ore preventivate (45), in particolare:

- le ore di Progettista sono state minori di quanto preventivato: la progettazione dello schema ER del database è stata più semplice del previsto e ha permesso di generare confronto tra i membri del gruppo. Inoltre, la precedente esperienza di alcuni membri del gruppo con Figma ha permesso di realizzare il mock-up della UI in tempi brevi;
- le ore di Programmatore sono state maggiori di quanto preventivato a causa dell'elevato numero di strumenti di testing esplorati;
- a causa di impegni personali di alcuni membri del gruppo tutti i ruoli hanno subito ridistribuzioni delle ore lavorate, senza tuttavia risultare in situazioni eccedenti rispetto a quanto preventivato.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [23],     [690],
    [Amministratore],     [27],     [540],
    [Analista],     [29],     [725],
    [Progettista],     [14],     [350],
    [Programmatore],     [148],     [2220],
    [Verificatore],     [72],     [1080],
    [Rimanente],     [313],     [5605],
  ),
  caption: "Monitoraggio, sprint 16"
)

Lo Sprint 16 ha permesso di raggiungere tutti gli obiettivi prefissati con una spesa inferiore alle attese. Nonostante la necessità di maggiori risorse orarie in alcuni ruoli, non sono stati rilevati rallentamenti nel completamento dei compiti previsti.

Il rendimento positivo dello Sprint 16 è supportato dalle principali metriche esposte dal #pdq, quali:
- CPI: il Cost Performance Index passa dal valore 0,98 (allo Sprint 15) a 1,02 e raggiunge un valore ottimale, denotando un miglioramento significativo del rendimento del gruppo;
- EAC: l'Estimate At Completion passa dal valore € 13.292,70 (allo Sprint 15) a € 12.777,29, considerabile come valore ottimale in quanto minore del BAC.


== Sprint 17 dal 25-02-2024 al 03-03-2024

=== Obiettivi raggiunti

Lo Sprint 17 si è concluso raggiungendo la quasi totalità degli obiettivi pianificati, in particolare:

- colloquio con il Proponente in data 29/02/2024;

- #glo\:
  - aggiunte definizioni di:
    - Jest;
    - Virtual Private Server;
    - Testing;
    - Unit test;
    - Test di integrazione;
    - Test di sistema.

- #man\:
  - creato documento;
  - redatta sezione Introduzione.

- #ndp\:
  - redatti i capitoli:
    - Processo di implementazione;
    - Processo di gestione della qualità;
    - Processo di integrazione;
    - Processo di verifica.
  - normato il sistema di tracciamento rischi-risoluzioni.

- #pdp\:
  - redatto preventivo dello Sprint 16, iniziato in data 18/02/2024;
  - redatto consuntivo dello Sprint 16, terminato in data 25/02/2024.

- #pdq\:
  - aggiornati i grafici di monitoraggio delle metriche allo Sprint 16;
  - aggiornata la dashboard con i dati sullo Sprint 16.

- #st\:
  - creato documento;
  - redatta sezione Introduzione.

- Automazioni:
  - corretto errore di registrazione versione.

- Progettazione:
  - aggiornato schema ER del database;
  - aggiornato mock-up e presentato al Proponente.

- Codifica:
  - implementato modulo di sanificazione SVG;
  - implementata pagina di selezione modalità di creazione ambiente.


=== Obiettivi mancati

- #adr\:
  - è iniziata, ma non terminata, la revisione completa del documento, comprensiva dell'aggiornamento riguardo le scelte fatte con il Proponente in data 29/02/2024.
- Progettazione:
  - non sono ancora definite in modo preciso l'architettura e i design pattern da utilizzare.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:

*P01*: Sono presenti dei dubbi riguardo il design del prodotto, nonostante i chiarimenti forniti dal #cardin via mail.

=== Risoluzioni attuate

#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Criticità affrontate],
      [R1],[Richiesta di colloquio via Zoom al #cardin], [P01]
    )
)

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [1],     [2],     [0],     [0],     [2],     [2],     [7],
    [Carraro],     [2],     [1],     [0],     [2 (-1)],     [0],     [0],     [5 (-1)],
    [Gardin],     [0],     [1],     [2],     [0],     [4],     [0],     [7],
    [Nardo],     [1],     [0],     [3],     [2],     [0],     [0],     [6],
    [Oseliero],     [2 (+1)],     [2],     [0],     [0],     [0],     [3],     [7 (+1)],
    [Todesco],     [0],     [3],     [2],     [0],     [4],     [1 (+1)],     [10 (+1)],
    [Zaccone],     [2],     [0],     [3 (+1)],     [0],     [2],     [3],     [10 (+1)],
    [Totale ore],     [8 (+1)],     [9],     [10 (+1)],     [4 (-1)],     [12],     [9 (+1)],     [52 (+2)],
    [Costo ruolo],     [240 (+30)],     [180],     [250 (+25)],     [100 (-25)],     [180],     [135 (+15)],     [1085 (+45)],
  ),
  caption: "Prospetto del consuntivo, sprint 17"
)
#let data = (
  ("Responsabile", 7, 8),
  ("Amministratore", 9, 9),
  ("Analista", 9, 10),
  ("Progettista", 5, 4),
  ("Programmatore", 12, 12),
  ("Verificatore", 8, 9),
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
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 17",
  kind: "chart",
  supplement: "Grafico"
)

Durante lo Sprint 17 le ore effettive (52) hanno superato di due unità le ore preventivate (50), in particolare:

- Analista e Responsabile hanno avuto un leggero incremento orario, dovuto alla quantità di lavoro effettuata nei documenti #ndp e #adr;
- il Verificatore ha avuto un lieve aumento di ore in risposta al punto precedente.

Il costo dello Sprint è stato influenzato dall'aumento di ore di Responsabile e Verificatore, in quanto il costo dell'ora di Analista in più è stato bilanciato indirettamente da un calo unitario delle ore di Progettista, avvenuta a causa dei dubbi sorti riguardo il design del prodotto.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [14],     [420],
    [Amministratore],     [13],     [260],
    [Analista],     [19],     [475],
    [Progettista],     [6],     [150],
    [Programmatore],     [140],     [2100],
    [Verificatore],     [61],     [915],
    [Rimanente],     [253],     [4320],
  ),
  caption: "Monitoraggio, sprint 17"
)

Lo Sprint 17, pur comportando un costo superiore a quanto preventivato, ha permesso di raggiungere quasi la totalità degli obiettivi prefissati.

Il rendimento positivo dello Sprint 17 è supportato dalle principali metriche esposte dal #pdq, quali:
- CPI: il Cost Performance Index passa dal valore 1.01 (allo Sprint 16) a 0.99. Nonostante il lieve calo continua a rappresentare un valore accettabile (>=0.95), e rimane molto vicino all'ottimalità, rappresentata da valori $>=1$;
- EAC: l'Estimate At Completion passa dal valore 12.911,54 € (allo Sprint 16) a 13.155,40 €. Anche se aumentato, il gruppo non lo considera problematico, in quanto l'incremento risulta contenuto.


== Sprint 18 dal 03-03-2024 al 10-03-2024

=== Obiettivi raggiunti

Lo Sprint 18 si è concluso raggiungendo buona parte degli obiettivi pianificati, in particolare:

- colloquio con Proponente in data 07/03/2024;

- #adr\:
  - proseguite revisione e aggiornamento del documento.

- #ndp\:
  - redatto il capitolo Processo di validazione.

- #pdp\:
  - redatto preventivo dello Sprint 17, iniziato in data 25/02/2024;
  - redatto consuntivo dello Sprint 17, terminato in data 03/03/2024;
  - redatto preventivo dello Sprint 18, iniziato in data 03/03/2024.

- #st\:
  - individuata struttura del documento;
  - redatta sezione Database.

- Progettazione:
  - svolto colloquio con il #cardin.

- Codifica:
  - migliorato e popolato il database di supporto;
  - implementata l'importazione dei dati da database;
  - aggiornato Docker compose;
  - implementate le classi:
    - `Product`;
    - `Bin`;
    - `Zone`.
  - implementati i pannelli;
  - rimossi elementi superflui.


=== Obiettivi mancati

- #adr\:
  - non è ancora terminata la revisione completa del documento, comprensiva anche di aggiornamento dei casi d'uso e requisiti. Verrà completata obbligatoriamente entro la fine del prossimo Sprint.
- #pdq\:
  - non sono state aggiornate le metriche all'interno del documento;
  - mancato aggiornamento della dashboard Grafana allo Sprint 18.

=== Problematiche
Durante il meeting di retrospettiva sono sorte le seguenti problematiche:

*P01*: Mancata comunicazione degli avanzamenti riguardo lo sviluppo del MVP hanno creato incomprensioni tra chi scriveva codice e chi si occupava della redazione della #st.

*P02*: Difficoltà nell'utilizzare le tecnologie adottate.

=== Risoluzioni attuate

#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Criticità affrontate],
      [R1], [Aggiornamento continuo sugli sviluppi], [P01],
      [OT-1.1.2\ (#pdp_v)], [Accettazione del rischio], [P02]
    )
)

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [1],     [1],     [1],     [0],     [4],     [2],     [9],
    [Carraro],     [0],     [1],     [2],     [1],     [4 (+2)],     [1],     [9 (+2)],
    [Gardin],     [2],     [0],     [2],     [0],     [1],     [3],     [8],
    [Nardo],     [0],     [3],     [0],     [1 (+1)],     [4],     [2 (+2)],     [10 (+3)],
    [Oseliero],     [ (-1)],     [0],     [0],     [1],     [4 (+1)],     [3],     [8],
    [Todesco],     [2],     [0],     [2],     [0],     [3],     [0],     [7],
    [Zaccone],     [0],     [2],     [2],     [0],     [3],     [0],     [7],
    [Totale ore],     [5 (-1)],     [7],     [9],     [3 (+1)],     [23 (+3)],     [11 (+2)],     [58 (+5)],
    [Costo ruolo],     [150 (-30)],     [140],     [225],     [75 (+25)],     [345 (+45)],     [165 (+30)],     [1100 (+70)],
  ),
  caption: "Prospetto del consuntivo, sprint 18"
)
#let data = (
  ("Responsabile", 6, 5),
  ("Amministratore", 7, 7),
  ("Analista", 9, 9),
  ("Progettista", 2, 3),
  ("Programmatore", 20, 23),
  ("Verificatore", 9, 11),
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
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 18",
  kind: "chart",
  supplement: "Grafico"
)

Durante lo Sprint 18 le ore effettive (58) hanno superato di cinque unità le ore preventivate (53), in particolare:

- Progettista e Programmatore hanno avuto un aumento di ore causato dalla quantità di lavoro svolto sullo sviluppo del MVP e sulla stesura della #st\;
- il Verificatore ha avuto un lieve aumento di ore in risposta al punto precedente e al lavoro che si sta svolgendo sull'#adr\.

L'aumento del costo dello Sprint è stato influenzato principalmente dalle ore di Progettista e Programmatore, in quanto il costo causato dall'aumento orario del Verificatore è stato bilanciato indirettamente da un calo di ore nel Responsabile.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [9],     [270],
    [Amministratore],     [6],     [120],
    [Analista],     [10],     [250],
    [Progettista],     [3],     [75],
    [Programmatore],     [117],     [1755],
    [Verificatore],     [50],     [750],
    [Rimanente],     [195],     [3220],
  ),
  caption: "Monitoraggio, sprint 18"
)

Nonostante l'aumento del costo preventivato, lo Sprint 18 ha permesso di completare buona parte degli obiettivi previsti.

Il rendimento positivo dello Sprint 18 è supportato dalle principali metriche esposte dal #pdq, quali:
- CPI: il Cost Performance Index rimane costante a 0.99, rappresentando ancora un valore accettabile ($>=0.95$) e rimanendo molto vicino all'ottimalità, rappresentata da valori $>=1$;
- EAC: l'Estimate At Completion passa dal valore di 13.155,40 € (allo Sprint 17) a 13.210,90 €. Nonostante sia aumentato rientra comunque nelle condizioni di accettabilità.


== Sprint 19 dal 10-03-2024 al 17-03-2024

=== Obiettivi raggiunti

Lo Sprint 19 si è concluso raggiungendo buona parte degli obiettivi pianificati, in particolare:

- colloquio con Proponente in data 15/03/2024;

- #adr\:
  - estensione e aggiornamento di Use Case e requisiti.

- #man\:
  - redatte le sezioni Requisiti e Supporto Tecnico.

- #ndp\:
  - individuata la struttura del documento;
  - redatte le sezioni:
    - Requisiti;
    - Installazione;
    - Supporto Tecnico.

- #pdp\:
  - redatto consuntivo dello Sprint 18, terminato in data 10/03/2024.

- Codifica:
  - implementata creazione del piano rettangolare in Three.js;
  - implementata lettura del file SVG;
  - implementato elemento `orderItem`;
  - implementato pulsante "reimposta" nel Settings Panel;
  - implementata creazione zona;
  - implementata modifica zona;
  - implementata eliminazione zona;
  - rimosso pulsante "sincronizzazione" da Order Panel;
  - implementato pulsante "sincronizzazione" in Settings Panel;
  - implementato componente `productItemDetails`;
  - implementato `productItem` per il Product Panel;
  - implementati campi di modifica delle dimensioni della planimetria in Settings Panel;
  - implementata simulazione delle API per lo spostamento dei prodotti;
  - implementati test per le Server Actions prodotte.

=== Obiettivi mancati

- #adr\:
  - non è stata effettuata la verifica completa del lavoro svolto e, di conseguenza, non è stato inviato il documento al #cardin\.
- #pdp\:
  - non è stato redatto il preventivo dello Sprint 19, iniziato in data 10/03/2024.
- #pdq\:
  - non sono state aggiornate le metriche all'interno del documento;
  - mancato aggiornamento della dashboard Grafana.
- Codifica:
  - implementazione della creazione del piano a partire da un file SVG.

=== Problematiche
Durante il meeting di retrospettiva è sorta la seguente problematica:

*P01*: Gli avanzamenti dei documenti #pdp e #pdq sono stati minori delle aspettative.

=== Risoluzioni attuate

#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Criticità affrontate],
      [R1], [Migliore ridistribuzione dei task], [P01]
    )
)

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [2 (+1)],     [0],     [4],     [3],     [9 (+1)],
    [Carraro],     [0],     [1],     [0],     [0],     [4 (+1)],     [2],     [7 (+1)],
    [Gardin],     [1],     [0],     [1],     [0],     [3],     [3],     [8],
    [Nardo],     [0],     [1],     [2],     [0],     [4],     [0],     [7],
    [Oseliero],     [1 (-1)],     [0],     [0],     [1],     [4 (+1)],     [1],     [7],
    [Todesco],     [1],     [0],     [0],     [0],     [4],     [2],     [7],
    [Zaccone],     [0],     [1 (+1)],     [1],     [0],     [4],     [2],     [8 (+1)],
    [Totale ore],     [3 (-1)],     [3 (+1)],     [6 (+1)],     [1],     [27 (+2)],     [13],     [53 (+3)],
    [Costo ruolo],     [90 (-30)],     [60 (+20)],     [150 (+25)],     [25],     [405 (+30)],     [195],     [925 (+45)],
  ),
  caption: "Prospetto del consuntivo, sprint 19"
)
#let data = (
  ("Responsabile", 4, 3),
  ("Amministratore", 2, 3),
  ("Analista", 5, 6),
  ("Progettista", 1, 1),
  ("Programmatore", 25, 27),
  ("Verificatore", 13, 13),
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
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 19",
  kind: "chart",
  supplement: "Grafico"
)

Durante lo Sprint 19 le ore effettive (53) hanno superato di tre unità le ore preventivate (50), in particolare:

- le ore di Programmatore sono aumentate in maniera maggiore rispetto agli altri ruoli a causa di problematiche insorte nell'implementazione della creazione del piano a partire da un file SVG. Questo aumento di ore, però, non è stato sufficiente a permettere il completamento della task, sebbene ci siano comunque stati degli avanzamenti.

L'aumento del costo dello Sprint, però, è stato influenzato principalmente dalle ore di Amministratore e Analista, in quanto il costo causato dall'aumento orario del Programmatore è stato bilanciato indirettamente da un calo di ore nel Responsabile.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [6],     [180],
    [Amministratore],     [3],     [60],
    [Analista],     [4],     [100],
    [Progettista],     [2],     [50],
    [Programmatore],     [90],     [1350],
    [Verificatore],     [37],     [555],
    [Rimanente],     [142],     [2295],
  ),
  caption: "Monitoraggio, sprint 19"
)

Nonostante l'aumento di costo, durante lo Sprint 19 sono stati raggiunti buona parte degli obiettivi.

Vengono di seguito riportate le principali metriche esposte dal #pdq riguardanti l'andamento dello Sprint:
- CPI: il Cost Performance Index diminuisce, passando dal valore 0.99 (allo Sprint 19) a 0.98, ma nonostante ciò rimane nell'intervallo di accettabilità ($>=$0.95);
- EAC: l'Estimate At Completion passa dal valore 13.155,40 € (allo Sprint 19) a 13.321,30 €. Anche se aumentato, è considerato accettabile in quanto rispetta la condizione di $<=$ BAC+5\% espressa dal #pdq\.


== Sprint 20 dal 17-03-2024 al 24-03-2024

=== Obiettivi raggiunti

Lo Sprint 20 si è concluso con il completamento della maggior parte degli obiettivi di periodo. In particolare:

- fissati due colloqui con il Proponente in data 22/03/2024 (per offrire un aggiornamento sul progresso) e 26/03/2024 (al fine di qualificare il lavoro svolto come MVP);
- inviato il documento #adr al #cardin, requisito obbligatorio per proseguire alla candidatura per la Product Baseline;
- #ndp\:
  - revisionati i capitoli:
    - Processo di gestione della qualità;
    - Processo di implementazione;
    - Processo di integrazione;
    - Processo di verifica;
    - Processo di transizione;
    - Processo di validazione.
- #pdq\:
  - aggiornate le metriche all'interno del documento;
  - aggiornata la dashboard Grafana.
- #pdp\:
  - redatto consuntivo dello Sprint 19;
  - redatto preventivo dello Sprint 20.
- #st\:
  - redatta la sezione riguardante i requisiti soddisfatti.
  - aggiunte le sezioni Requisiti di sistema e Requisiti hardware.
- #man\:
  - redatte le sezioni:
    - Modifica zona;
    - Eliminazione zona;
    - Richiesta spostamento prodotto.
  - rimosse le sezioni Requisiti di sistema e Requisiti hardware;
  - aggiornato template del documento.

=== Obiettivi mancati

- #man\:
  - non è stata redatta la sezione Impostazioni.

=== Problematiche

Durante il meeting di retrospettiva è sorta la seguente problematica:

*P01*: Gli avanzamenti del documento #man sono stati minori delle aspettative.

=== Risoluzioni attuate

Nessuna.

=== Panoramica dei costi effettivi

#figure(
  table(
    columns: 8,
    [*Membro*], [*Responsabile*], [*Amministratore*], [*Analista*], [*Progettista*], [*Programmatore*], [*Verificatore*], [*Totale*],
    [Banzato],     [0],     [0],     [0],     [0],     [7],     [2],     [9],
    [Carraro],     [0],     [0],     [0],     [0],     [7],     [0],     [7],
    [Gardin],     [1],     [0],     [0],     [0],     [4 (+1)],     [3 (-1)],     [8],
    [Nardo],     [0],     [0],     [2],     [0],     [6 (+1)],     [2],     [10 (+1)],
    [Oseliero],     [0],     [0],     [0],     [0],     [5],     [4],     [9],
    [Todesco],     [0],     [0],     [1],     [0],     [6 (+1)],     [2],     [9 (+1)],
    [Zaccone],     [1 (-1)],     [2 (+1)],     [0],     [0],     [3],     [4],     [10],
    [Totale ore],     [2 (-1)],     [2 (+1)],     [3],     [0],     [38 (+3)],     [17 (-1)],     [62 (+2)],
    [Costo ruolo],     [60 (-30)],     [40 (+20)],     [75],     [0],     [570 (+45)],     [255 (-15)],     [1000 (+20)],
  ),
  caption: "Prospetto del consuntivo, sprint 20"
)
#let data = (
  ("Responsabile", 3, 2),
  ("Amministratore", 1, 2),
  ("Analista", 3, 3),
  ("Progettista", 0, 0),
  ("Programmatore", 35, 38),
  ("Verificatore", 18, 17),
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
  caption: "Suddivisione oraria per ruolo, consuntivo sprint 20",
  kind: "chart",
  supplement: "Grafico"
)

Durante lo Sprint 20 le ore effettive (62) hanno superato di due unità le ore preventivate (60), in particolare:

- gli impegni del Responsabile sono stati assolti in minor tempo rispetto a quanto preventivato;
- la stesura dei verbali ha impegnato maggiormente l'Amministratore;
- dopo aver concluso tutte le attività di codifica pianificate, la figura del Programmatore è stata impegnata nell'implementazione di alcune funzionalità desiderabili o opzionali. Pertanto, le ore di Programmatore sono aumentate rispetto a quanto preventivato;
- l'impiego della figura del Verificatore è stato leggermente inferiore alle aspettative.

=== Monitoraggio costi e ore

#figure(
  table(
    columns: 3,
    [*Ruolo*], [*Ore rimanenti*], [*Budget rimanente*],
    [Responsabile],     [8],     [240],
    [Amministratore],     [16],     [320],
    [Analista],     [4],     [100],
    [Progettista],     [2],     [50],
    [Programmatore],     [51],     [765],
    [Verificatore],     [24],     [360],
    [Rimanente],     [105],     [1835],
  ),
  caption: "Monitoraggio, sprint 20"
)

Nonostante l'aumento di costo, lo Sprint 20 ha permesso di completare la maggior parte degli obiettivi prefissati.

Vengono di seguito riportate le principali metriche esposte dal #pdq riguardanti l'andamento dello Sprint:
- CPI: il Cost Performance Index rimane stabile sul valore 1.00;
- EAC: l'Estimate At Completion fluttua leggermente, passando dal valore di € 12.990,31 € (allo Sprint 19) a € 12.990,86.

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
