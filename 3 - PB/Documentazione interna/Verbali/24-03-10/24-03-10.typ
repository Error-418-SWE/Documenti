#import "/template.typ": *

#show: project.with(
  date: "10/03/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  reviewers: (
    "Todesco Mattia",
  ),
  timeStart: "15:10",
  timeEnd: "16:15",
);


= Ordine del giorno

- Valutazione del progresso generale;
- Analisi retrospettiva;
- Data di consegna;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>

Lo Sprint 18 ha visto buona parte delle task assegnate completate nei tempi previsti. Le task non concluse risultano comunque in corso d'opera e verranno portate in verifica nel prossimo Sprint.

Il giorno giovedì 07/03/2024 si è svolto il meeting esterno con il Proponente, come pianificato, per aggiornare riguardo lo stato dei lavori.

== #adr

È proseguita la completa revisione del documento.

== #ndp

Le #ndp hanno visto completata la redazione del capitolo Technical processes/Validation process.

== #pdp

Il #pdp ha visto completati i lavori:
  - redazione preventivo Sprint 17;
  - redazione consuntivo Sprint 17;
  - redazione preventivo Sprint 18.

== #st

La #st ha visto le completati i lavori:
  - individuazione struttura del documento;
  - redazione sezione Database.

== Progettazione

Il gruppo ha chiarito i dubbi riguardanti l'architettura del prodotto grazie a un colloquio effettuato con il #cardin.

== Codifica

L'attività di codifica ha visto completati i lavori:
  - miglioramento e popolamento del database di supporto;
  - importazione dei dati da database;
  - aggiornamento Docker compose;
  - implementazione classi:
    - `Product`;
    - `Bin`;
    - `Zone`.
  - implementazione pannelli;
  - rimozione elementi superflui.


= Analisi retrospettiva

Lo Sprint 18 è terminato con il raggiungimento di buona parte degli obiettivi prefissati. Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq\:
- CPI di progetto rimane costante a 1.01, rappresentando ancora un valore ottimale in quanto $>=1$;
- EAC diminuisce passando da € 12.987,48 a € 12.933,25;
- $"SEV" >= "SPV"$.


Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>

I chiarimenti ottenuti dal #cardin si sono rivelati un punto di svolta importante per la progettazione del prodotto software.

Il gruppo si ritiene soddisfatto dell'andamento dei lavori e della comunicazione con il Proponente.

== Improvements <improvements>

=== Criticità evidenziate

*P01*: Mancata comunicazione degli avanzamenti riguardo lo sviluppo del MVP hanno creato incomprensioni tra chi scriveva codice e chi si occupava della redazione della #st.

*P02*: Difficoltà nell'utilizzare le tecnologie adottate.

=== Soluzioni predisposte

#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Criticità affrontate],
      [R1], [Aggiornamento continuo sugli sviluppi], [P01],
      [OT-1.1.2\ (#pdp_v)], [Accettazione del rischio], [P02]
    )
)

= Data di consegna

Il gruppo ha discusso l'avvicinarsi della data di consegna del progetto, prevista per mercoledì 20/03/2024, e ritiene importante il mantenimento dello stesso livello di intensità degli Sprint precedenti. Durante il prossimo Sprint verrà deciso se mantenere la data di consegna citata in precedenza o richiedere un posticipo.

= Pianificazione <pianificazione>

#show figure: set block(breakable: true)

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
#figure(caption: [Task pianificate per lo Sprint 19.],
  table-json(json("tasks.json"))
)

