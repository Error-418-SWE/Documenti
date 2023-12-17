#import "/template.typ": *

#show: project.with(
  title:"Piano di Qualifica",
  subTitle: "",
  authors: (
    "Todesco Mattia",
  ),
  reviewers:(
    "Nardo Silvio",
  ),

  showIndex: true,
  showLog: true,
  isExternalUse: true,
);

= Introduzione

== Scopo del documento
Il presente documento viene redatto con lo scopo di definire gli standard di qualità e di valutazione del prodotto. Essi saranno definiti conformemente ai requisiti e alle richieste del Proponente.
Definire la qualità di un prodotto consiste nell'attuazione di un insieme di processi che vadano a definire una base con cui misurare efficienza ed efficacia del lavoro svolto.

== Approccio al documento
Il presente documento viene redatto in modo incrementale per assicurare la coerenza delle informazioni al suo interno con gli sviluppi in corso e le esigenze evolutive del progetto.

== Glossario
Il presente documento include una serie di termini tecnici specifici del progetto. Al fine di agevolarne la comprensione, si fornisce un Glossario che espliciti il significato di tali termini. I termini tecnici sono chiaramente evidenziati nel testo mediante l'aggiunta di una "G" a pedice degli stessi.

== Riferimenti
In questo documento si fa riferimento allo standard: 

= Qualità di processo

== Processi primari

=== Fornitura
In questa fase di avanzamento, si tracciano tutte le decisioni intraprese nel corso dello sviluppo delle singole risorse.
Nel contesto in esame, l'acronimo cruciale è MPC, ovvero Minimum Predictive Capability (Capacità Predittiva Minima). Si tratta di una metrica fondamentale per valutare l'accuratezza di un modello di previsione o di apprendimento automatico. In termini più chiari, l'MPC rappresenta la soglia minima di precisione delle previsioni che il modello deve raggiungere per ottenere il giudizio di accettabilità.
Per una comprensione più approfondita, vengono definiti i singoli termini più rilevanti:
- Budget At Completion(BAC): Il costo totale preventivato del progetto al raggiungimento del completamento;
- Estimated At Completion (EAC): Il valore stimato per le attività ancora da completare;
- Estimated To Completion (ETC): La stima del costo finale alla data odierna;
- Earned Value (EV): Il valore raggiunto fino al momento attuale. Calcolato moltiplicando il lavoro svolto in percentuale per EAC;
- Planned Value (PV): Il valore pianificato fino al momento attuale. Calcolato moltiplicando il lavoro pianificato espresso in percentuale per BAC;
- Actual Cost (AC): Il costo effettivo sostenuto fino al momento attuale;
- Cost Variance (CV): La differenza tra il budget disponibile e quello effettivamente utilizzato. Calcolato sottraendo AC da EV;
- Schedule Variance (SV): La varianzione temporale rispetto alla pianificazione in termini di anticipo o ritardo. Calcolato sottraendo PV da EV. Un valore negativo indica un ritardo rispetto alle previsioni iniziali;
- Budget Variance (BV): La variazione rispetto al budget preventivato al completamento del progetto. Calcolato sottraendo CV da AC.

//tabella con valori accettabili? ho visto gli altri gruppi l'hanno messa ma finchè non scegliamo uno standard non so dove trovarla.
=== Sviluppo