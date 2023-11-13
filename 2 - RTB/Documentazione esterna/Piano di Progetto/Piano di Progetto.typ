#import "template.typ": *

#show: project.with(
  title:"Piano di progetto",
  subTitle: "Pianificazione, analisi e retrospettive", 
  docType: "doc",
  partecipants: (
  (name: "Banzato Alessio", role: "Verificatore"),
  (name: "Carraro Riccardo", role: "Redattore"),
  (name: "Gardin Giovanni",  role: "Redattore"),
  (name: "Nardo Silvio",   role: "Verificatore"),
  (name: "Oseliero Antonio",   role: "Responsabile"),
  (name: "Todesco Mattia",  role: "Verificatore"),
  (name: "Zaccone Rosario",  role: "Amministratore"),
  ),
  showIndex: true,
);
#set text(font:"New Computer Modern")
#set align(left)
#show "link": word => text[#text(fill:blue, word)]

= Introduzione
Il documento _Piano di progetto_ ha il delicato compito di governare la pianificazione dell'avanzamento del progetto, determinando task e obiettivi da raggiungere, presentando un'analisi critica del lavoro fino a quel momento svolto. L'intento è rendicontare l'intero sviluppo, valutando criticamente l'operato compiuto per eventualmente miglirarlo, e gestire in modo efficace ed efficiente le risorse.

Il documento si articola in 5 sezioni, quali:
- *Rischi e loro mitigazione*: dedicata all'analisi dei rischi che possono insorgere con relativi sistemi di mitigazioni;
- *Divisione temporale di sviluppo*: dedicata all'analisi della suddivisione temporale dello sviluppo del progetto;
- *Preventivo dei costi di realizzazione*: dedicata all'analisi preventiva dei costi di realizzazione di progetto;
- *Pianificazione del lavoro*: dedicata alla pianificazione delle attività da svolgere nei periodi di sprint;
- *Consuntivo del progetto*: dedicata all'analisi retrospettiva del lavoro svolto, indicando criticità ed eventuali azioni intraprese a fini migliorativi.
\
== Glossario
Al fine di rendere quanto più chiaro possibile il contenuto dei documenti, e per evitare qualsiasi forma di ambiguità in merito ai termini utilizzati, il gruppo _Error\_418_ fornirà come risorse web consultabile, un _*Glossario*_. La prima ricorrenza di termini tecnici appartenenti al dominio del progetto, saranno caratterizzati dalla presenza della lettera _g_ al pedice.
\
\
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
Definiti i rischi (e le relative contromisure) e il calendario di progetto, si è definito, mediante una pianificazione retrospettiva, un preventivo iniziale dei costi di realizzazione del progetto. \
È altresì corretto evidenziare come i membri del gruppo non siano dotati di esperienza sufficiente per fornire un preventivo corretto e preciso sin dagli inizi dello sviluppo: per tale motivo, il prezzo indicato sarà soggetto a modifiche con l'avanzamento del progetto.
=== Analisi dei ruoli
=== Suddivisione delle ore dei ruoli
=== Preventivo calcolato

= Pianificazione del lavoro
== Introduzione
La pianificazione ricopre un ruolo fondamentale nello sviluppo dell'intero progetto, svolgendo il compito di stabilire obiettivi da raggiungere in periodi di tempo determinati, organizzando le risorse in modo da rendere lo sviluppo efficace ed efficiente. Lo scopo principale deve essere governare la realtà, pianificando dettagliatamente le azioni da intraprendere nel periodo successivo.
\
== Metodologia di lavoro AGILE
Il team si è imposto una metodologia di lavoro _agile_, determinando periodi di lavoro di durata fissa terminanti con un'analisi retrospettiva degli stessi. \
Tale approccio è definibile _adattivo_, in grado dunque di adattarsi ad eventuali modifiche in corso d'opera, in merito soprattutto a cambiamenti di specifiche e requisiti.\
L'intero sviluppo è dunque organizzato in iterazioni di lunghezza fissa, denominati in SCRUM come _sprint_. \
L'analisi retrospettiva e il frequente contatto con il proponente, permettono di indirizzare lo sviluppo verso la produzione di un prodotto finale che si attenga quanto più possibile ai requisiti desiderati dall'azienda e alle sue aspettative, e una documentazione dettagliata e precisa che evolve e migliora insieme al prodotto.
=== Organizzazione per sprint
Gli sprint sono periodi di sviluppo di durata fissa entro i quali si cerca di raggiungere obiettivi prefissati, che vengono stabiliti da un'attenta fase di pianificazione iniziale precedente all'avvio dello sprint stesso.\
L'intento è fissare obiettivi concretamente raggiungibili nell'arco di tempo stabilito, che nel nostro caso, si tratta di una settimana.\
Al termine di ogni sprint si svolgerà un'analisi retrospettiva con lo scopo di valutare il lavoro svolto e proporre eventuali miglioramenti in caso di criticità riscontrate.\ 

La pianficazione di uno sprint sarà così composta:
- *Obiettivi prefissati*: gli obiettivi che si intende raggiungere entro la terminazione dello sprint;

- *Preventivo dei costi*: preventivo dei costi in base alle figure che opereranno nel periodo e il relativo tempo;

- *Diagramma di Gantt*: grafico rappresentante l'organizzazione delle attività e le dipendenze tra esse. 

Essenziale in questa organizzazione è l'analisi retrospettiva a fine sprint, che permette di valutare in modo critico eventuali mancanze, criticità o errori che possono in questo modo venir affrontati per trovare soluzioni che ne mitighino gli effetti in futuro.

La retrospettiva di uno sprint si articolerà in:
- *Obiettivi raggiunti*: obiettivi fissati e concretamente raggiunti al termine dello sprint;

- *Obiettivi mancati*: obiettivi non raggiunti al termine dello sprint;

- *Analisi delle problematiche insorte*: analisi delle criticità riscontrate durante lo sprint, in modo da aver chiari le motivazioni che le hanno causate;

- *Risoluzioni attuate*: azioni compiute in risposta alle problematiche riscontrate durante lo sprint, in modo che in futuro si possa o prevenire del tutto il ripetersi di tali problemi, o in caso insorgessero nuovamente, sapere come mitigarli.

- *Analisi dei costi dello sprint effettivi*: a seguito dello svolgimento dello sprint sarà possibile verificare se i costi preventivati rispecchiano i costi effettivi, in base alle ore svolte per ogni ruolo;

- *Burndown-chart*: uno strumento metrico come il burndown-chart permette di avere una chiara visione del corretto (o meno) andamento dello sprint.

== Primo Sprint dal 06-11-2023 al 13-11-2023
=== Obiettivi prefissati
Gli obiettivi del primo sprint si concentrano sulla correzione e sul miglioramento dei documenti e della repository in seguito alla valutazione esposta dal professore.\
Gli obiettivi dello sprint 1 sono:
- Reset della repository;
- Revisione preventivo costi con aggiornamento della suddivisione delle ore;
- Implementazione di automazioni per la compilazione dei documenti;
- Implementazione di automazioni per il versionamento dei documenti;
- Stesura delle domande in merito al dominio tecnologico del capitolato;
- Contatto con l'azienda proponente per comunicare l'esito della candidatura;
- Contatto con l'azienda proponente per fissare un primo meeting di analisi.
=== Preventivo costi
Il primo sprint, avendo compiti essenzialmente correttivi e incentrati sul miglioramento dei documenti vede l'impiego principale delle figure:
- *Responsabile*: al fine di coordinare le attività e contattare l'azienda proponente;

- *Amministratore*: al fine di gestire gli strumenti come GitHub e Jira per la gestione degli automazioni per la compilazione e versionamento dei documenti;

- *Verificatore*: al fine di garantire che le modifiche effettuate rispecchino gli standard qualitativi desiderati e implementino effettivamente le mancanze individuate dalla valutazione;

- *Analista*: al fine di redigere le principali domande da porre in merito al dominio tecnologico da utilizzare.

In questo primo periodo, le figure di progettista e programmatore non sono anora assegnate perchè ritenuto ancora troppo precoce lo stato del progetto.

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
[Totale ore ruolo], [3],  [8],    [6],    [6],    [27],
[Costo orario],     [30,00], [20,00], [25,00], [15,00], [],
[Costo ruolo],      [90,00], [160,00], [150,00], [90,00], [490,00]
)
#align(center, text("Tabella 1: preventivo primo sprint"))
=== Digramma Gantt
[da inserire]

= Consuntivo del progetto
== Introduzione
Il consuntivo di ogni sprint permette di avere una valutazione critica dell'avanzamento dello sviluppo, valutando in modo oggettivo i punti positivi e negativi dello sprint terminato. \
Questa fase di retrospettiva è essenziale al fine di individuare possibili miglioramenti e di analizzare se la pianificazione ideata all'inizio dello sprint ha trovato concretezza. \
== Primo Sprint dal 06-11-2023 al 13-11-2023
=== Obiettivi raggiunti
- Revisione preventivo costi con aggiornamento della suddivisione delle ore;
- Implementazione di automazioni per la compilazione dei documenti;
- Stesura delle domande in merito al dominio tecnologico del capitolato;
=== Obiettivi mancati
- Reset della repository;
- Implementazione di automazioni per il versionamento dei documenti;
- Contatto con l'azienda proponente per comunicare l'esito della candidatura;
- Contatto con l'azienda proponente per fissare un primo meeting di analisi.
=== Analisi problematiche insorte
A causa di una sottostima del carico di lavoro per l'implementazione delle automazioni tramite github action, alcuni obiettivi riguardanti la repository sono stati mancati, creando un inesorabile effetto a catena che ha temporaneamente bloccato il caricamento di documenti nella repository.\
Un altro problema riguarda la comunicazione con l'azienda proponente: la mail inviata sfortunatamente non ha ricevuto riscontro, impedendo di procedere ulteriormente con l'analisi dei requisiti e/o l'impostazione di un meeting con l'azienda stessa.\
=== Risoluzioni attuate
Le automazioni rigurdante il versionamento, essendo comunque in uno stadio terminale di implementazione, verranno concluse nello sprint successivo, senza arrecare ulteriori rallentamenti.\
La problematica in merito al contatto con l'azienda vedrà l'intraprendersi di un'azione di sollecitamento con una seconda mail e successivamente la richiesta di stabilire un nuovo canale di comunicazione.
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
- Amministratore: il blocco temporaneo della repository e la mancata risposta dell'azienda non hanno visto evolvere il progetto, limitando così il lavoro del responsabile;

- Analista: la mancata risposta da parte dell'azienda ha impedito agli analisti di iniziare con la vera analisi dei requisiti, limitando dunque il lavoro alla stesura di domande in merito al dominio tecnologico;

- Verificatore: il mancato avanzamento ha prodotto documentazione ridotta rispetto a quanto preventivato, per tanto il verificatore ha svolto un numero inferiore di ore.

Il ruolo dell'amministratore invece, incaricato di gestire il reparto tecnologico implementando gli automatismi necessari, a causa di difficoltà incontrate nell'implementazione (errori, testing, verifica), ha visto un aumento delle ore rispetto a quanto preventivato.
=== Burndown-chart
[da inserire]