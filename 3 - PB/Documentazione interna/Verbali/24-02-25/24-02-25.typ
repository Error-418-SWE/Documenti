#import "/template.typ": *

#show: project.with(
  date: "25/02/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Oseliero Antonio",
  ),
  reviewers: (
    "Gardin Giovanni",
  ),
  timeStart: "15:10",
  timeEnd: "16:10",
);


= Ordine del giorno
- Valutazione del progresso generale;
- Analisi retrospettiva;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>

Lo Sprint 16 ha visto le task assegnate completate nei tempi previsti, non sono stati riscontrati rallentamenti o problematiche significative.

Il giorno giovedì 22/02/2024 si è svolto il meeting esterno con il Proponente, come pianificato, per aggiornare riguardo lo stato dei lavori.

== Modifiche di carattere generale
Predisposta la repository per contenere materiali inerenti la PB.

Aggiornati riferimenti di vari documenti, espanso il glossario e aggiornate le automazioni.

== #ndp
Le #ndp hanno visto completati i lavori:
- redazione capitolo Technical processes/Design Definition process;
- redazione capitolo Technical processes/Architecture Definition process;
- aggiornamento capitolo 4.6.3 per quanto riguarda il contenuto dei verbali interni;
- aggiornamento capitolo 4.6.4 per quanto riguarda l'introduzione di variabili Typst per l'uso di termini ricorrenti;
- redazione paragrafo inerente l'utilizzo di Figma tra gli strumenti utilizzati;
- descrizione versionamento del codice;
- definizione metriche di prodotto.

== #pdp
Il #pdp ha visto completati i lavori:
- inclusione nel documento del contenuto presente in #ris;
- estensione #ris;
- codificazione dei rischi;
- codificazione metodi di risoluzione dei rischi;
- estensione sezione di monitoraggio;
- redazione consuntivo sprint 15.

== #pdq
Il #pdq ha visto completati i lavori:
- aggiornamento grafici delle metriche per lo sprint 15;
- definizione metriche di prodotto.


= Analisi retrospettiva
Lo Sprint 16 è terminato con il raggiungimento di tutti gli obiettivi prefissati, il cui rendimento positivo è sostenuto dalle principali metriche esposte dal #pdq\:
- CPI di progetto cresce passando da 0.98 a 1.02;
- EAC diminuisce passando da € 13.292,70 a € 12.777,29;
- $"SEV" >= "SPV"$.

Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>
Come nello sprint precedente viene riconosciuto il ruolo del Verificatore che ha saputo offrire review precise e tempestive.
Come nello Sprint precedente il gruppo ha saputo mantenere una modalità di lavoro e di comunicazione asincrona.

== Improvements <improvements>
Non sono state riscontrate criticità.


= Pianificazione <pianificazione>

Viene pianificata una riunione interna in data 26/02 alle ore 15:00 per discutere del design che il sistema software dovrà implementare.

#let table-json(data) = {
  let keys = data.at(0).keys()
  table(
    align: left,
    columns: keys.len(),
    ..keys,
    ..data.map(
      row => keys.map(
        key => row.at(key, default: [n/a])
      )
    ).flatten()
  )
}
#figure(caption: [Task pianificate per lo Sprint 17.],
  table-json(json("tasks.json"))
)