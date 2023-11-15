#import "template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Preventivo Costi",
  subTitle: "Organizzazione temporale e assunzione di impegno",
  docType: "doc",
  writers: "Antonio Oseliero, Alessio Banzato",
  //  Nome        //Ruolo           Durata Presenza
  authors: (
    (name: "Banzato Alessio", role: "Redattore",    duration:  ""),
    (name: "Carraro Riccardo",  role: "Verificatore", duration:  ""),
    (name: "Gardin Giovanni",  role: "Verificatore", duration:  ""),
    (name: "Nardo Silvio",   role: "Amministratore", duration:  ""),
    (name: "Oseliero Antonio", role: "Redattore",    duration: ""),
    (name: "Todesco Mattia",   role: "Amministratore", duration:  ""),
    (name: "Zaccone Rosario",  role: "Verificatore", duration:  ""),
  ),
  showLog: false,
)

#set text(font:"New Computer Modern", size: 1.3em)
#set align(left)

= Analisi preliminare
A seguito di una quanto più accurata analisi relativa al carico di lavoro e al monte ore necessario al suo svolgimento, il gruppo Error_418 ha individuato tre periodi di sviluppo fondamentali, quali:
- Periodo raccolta e analisi dei requisiti;

- Periodo di sviluppo della Requirements and Technologies Baseline;

- Periodo di sviluppo del Minimun Viable Product (MVP).

== Periodo raccolta e analisi dei requisiti
In questo periodo, il ruolo centrale è svolto dagli analisti, che mediante un costante e produttivo rapporto con l’azienda delineeranno i requisiti che il prodotto finale dovrà possedere, soffermandosi nel carpirne dettagli, delimitazioni e standard di accetazione.

==  Periodo di sviluppo della Requirements and Technologies Baseline
A seguito del risultato prodotto nella fase precedente di analisi dei requisiti, ampio
spazio sarà dedicato alla progettazione e all’utilizzo pratico delle tecnologie necessarie
allo sviluppo, dimostrando la loro validità e funzionalità.
Il prodotto finale di questa fase sarà il Proof of Concept dimostrante la concreta possibilità di poter utilizzare le tecnologie in modo cooperante tra loro.

== Periodo di sviluppo del Minimun Viable Product (MVP)
Dimostrata la concreta possibilità implementativa mediante il Proof of Concept, il gruppo
impiegherà le risorse nella realizzazione materiale di un prodotto software atto al soddisfacimento almeno dei requisiti minimi di accettazione, fornendo tutte le funzionalità
richieste per essere considerato valido, ponendo attenzione non solo al lato funzionale
ma anche, e soprattutto, al lato implementativo.

= Analisi dei ruoli

== Responsabile
Il responsabile è un ruolo presente durante l'intero progetto. Il suo compito è quello di gestire il team di assicurarsi che lo sviluppo proceda secondo le tempistiche predefinite e le aspettative del committente. Deve inoltre redigere e far rispettare le norme di progetto, nonché le linee guida di sviluppo che l'intero team deve rispettare. Essendo il ruolo più costoso, il numero di ore è stato scelto per favorire l'efficienza e non pesare eccessivamente sul costo finale.

== Amministratore
L'amministratore è un ruolo presente durante l'intero progetto, in quanto si occupa di predisporre e controllare il corretto utilizzo delle procedure e degli strumenti definiti nel _way of working_, andando anche a gestire e implementare automatismi, migliorando così l'efficienza del team. Il monte ore scelto è tale, poiché essendo questo un ruolo di controllo, non sono richieste un numero elevato di ore.

== Analista
L'analista è presente esclusivamente nelle fasi iniziali del progetto, poiché si occupa della raccolta e dell'elaborazione dei requisiti. Ciò comporta un numero di ore ridotto e una distribuzione delle stesse unicamente nelle prime settimane del progetto.

== Progettista
Il progettista ha il compito di delineare e documentare l'architettura del prodotto in modo da:

- soddisfare i requisiti raccolti nelle fasi pregresse;

- aiutare il team di sviluppo con una documentazione chiara ed esaustiva.

Nello stabilire l'architettura deve quindi indicare anche quali saranno le tecnologie da utilizzare per la sua implementazione.
Ritenendolo un ruolo impegnativo dal punto di vista temporale, il numero di ore risulta maggiore rispetto ai ruoli precedenti.

== Programmatore
Il programmatore ha il compito di sviluppare concretamente l'architettura prodotta dal progettista, traducendola in codice sorgente. Il ruolo prevede un numero di ore molto elevato poiché riteniamo il lavoro più dispendioso rispetto a quello delle altre figure professionali.

== Verificatore
Il verificatore è un ruolo presente durante l'intero progetto, che si occupa di mantenere degli standard qualitativi sul lavoro del team: egli deve verificare la correttezza, esaustività e coerenza di tutti i documenti, e nella fase di codifica sarà colui che si occuperà di controllare la qualità del software prodotto. Proprio per questo il totale delle ore risulta essere il secondo più elevato dopo il programmatore.

= Preventivo dei Costi
#table(align: center,
  columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  [*Membro*],[*Resp.*],[*Amm.*],[*Analis.*],[*Prog.*],[*Program*],[*Verifi.*],[*Totale*],
  [Alessio], [13], [10], [10], [14], [30], [18], [95],
  [Antonio], [13], [10], [10], [14], [30], [18], [95],
  [Giovanni], [13], [10], [10], [14], [30], [18], [95],
  [Mattia], [13], [10], [10], [14], [30], [18], [95],
  [Riccardo], [13], [10], [10], [14], [30], [18], [95],
  [Rosario], [13], [10], [10], [14], [30], [18], [95],
  [Silvio], [13], [10], [10], [14], [30], [18], [95],
  [Totale Ore], [91], [70], [70], [98], [210], [126], [665],
  [Costo Orario (€)], [30,00], [20,00], [25,00], [25,00], [15,00], [15,00], [],
  [Costo Ruolo (€)], [2.730], [1.400], [1.750], [2.450], [3.150], [1.890], [],  
)

#align(center, "Costo Totale Preventivato: € 13.370,00")