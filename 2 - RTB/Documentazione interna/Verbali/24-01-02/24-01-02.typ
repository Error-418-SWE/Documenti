#show: project.with(
  date: "02/01/24",
  subTitle: "Analisi paragrafi norme di progetto e context switch",
  docType: "verbale",
  authors: (
    "Carraro Riccardo",
  ),
  timeStart: "15:00",
  timeEnd: "16:30",
);

= Ordine del giorno
- Analisi paragrafi Norme di Progetto da redigere rispetto allo standard ISO/IEC 12207:2017;
- Context switch dei programmatori in merito al PoC.

== Analisi paragrafi Norme di Progetto da redigere rispetto allo standard ISO/IEC 12207:2017
Nell'espansione e aggiornamento del documento Norme di Progetto, il gruppo fa riferimento allo standard ISO/IEC 12207:2017.
Dato l'avvinarsi della prima revisione esterna (RTB), il gruppo ha ritenuto opportuno identificare i paragrafi facenti riferimento ad aspetti del progetto che non trovano riscontro e applicazione nel periodo attuale.

Si è pertanto stabilito che i seguenti paragrafi saranno redatti in seguito alla revisione esterna, perché più pertinenti al periodo di PB:
- _Architecture Definition Process_;
- _Design Definition Process_;
- _System Analysis Process_;
- _Implementation Process_;
- _Integration Process_;
- _Verification Process_;
- _Transition Process_;
- _Validation Process_;
- _Operation Process_;
- _Maintenance Process_;

Questa decisione non impone vincoli sulla redazione della totalità dei paragrafi sopra elencati, ma pospone al secondo periodo di progetto la loro analisi approfondita e il loro adeguamento al contesto del progetto didattico.

== Context switch dei programmatori in merito al PoC
Al fine di rendere più efficace ed efficiente l'approccio al codice sorgente del PoC prodotto, si è ritenuto necessario effettuare un meeting dedicato tra i programmatori dello sprint precedente e quelli dello sprint corrente.
Durante lo svolgimento del meeting si è analizzata la struttura principale del prodotto software, evidenziando le sezioni richiedenti maggiore attenzione e cercando di pareggiare le competenze tra i programmatori.

Si nota che il PoC presenta al momento un bug di performance la cui probabile causa è dovuta all'uso non ottimale dei `Renderer` in Three.js. Sarà compito dei programmatori dello sprint corrente risolvere il problema.

Non si ritiene necessaria l'aggiunta di nuove feature al PoC prodotto.