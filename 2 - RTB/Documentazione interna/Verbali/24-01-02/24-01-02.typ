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
- Analisi paragrafi norme di progetto da redigere rispetto allo standard ISO/IEC 12207:2017;
- Context switch dei programmatori in merito al PoC prodotto.

== Analisi paragrafi norme di progetto da redigere rispetto allo standard ISO/IEC 12207:2017
Nell'espansione e aggiornamento del documento Norme di Progetto, il gruppo ha sempre fatto riferimento allo standard ISO/IEC 12207:2017. 
Dato l'avvinarsi della prima revisione esterna (RTB), il gruppo ha ritenuto opportuno identificare i pragrafi facenti riferimento ad aspetti del progetto che non trovano riscontro e applicazione nel periodo attuale. 
Si è pertanto stabilito che i seguenti paragrafi saranno redatti in seguito alla revisione esterna, perchè più pertinenti al periodo di PB:
- Architecture Definition Process;
- Design Definition Process;
- System Analysis Process;
- Implementation Process;
- Integration Process;
- Verification Process;
- Transition Process;
- Validation Process;
- Operation Process;
- Maintenance Process;

Questa decisione non impone vincoli sulla redazione della totalità dei paragrafi sopra elencati, ma demanda al secondo periodo di progetto la loro analisi approfondita e il loro adeguamento al contesto del progetto didattico.

== Context switch dei programmatori in merito al PoC prodotto
Al fine di rendere più efficace e efficiente l'approccio al codice sorgente del PoC prodotto, si è ritenuto necessario effettuare un meeting dedicato tra i programmatori dello sprint precedente e quelli dello sprint corrente.
Durante lo svolgimento del meeting si è analizzata la struttura principale del prodotto software, evidenziando le sezioni richiedente maggiore attenzione e cercando di fare levelling delle competenze tra i programmatori.

Si nota che il PoC presenta al momento un bug di performance la cui probabile causa è dovuta all'uso non ottimale di renderers in Threejs. Sarà compito dei programmatori dello sprint corrente risolvere il problema.

Non viene ritenuta necessaria l'aggiunta di nuove feature al PoC prodotto.