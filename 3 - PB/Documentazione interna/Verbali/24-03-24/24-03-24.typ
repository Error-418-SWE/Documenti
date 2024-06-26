#import "/template.typ": *

#show: project.with(
  date: "24/03/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  reviewers: (
    "Todesco Mattia",
  ),
  timeStart: "15:10",
  timeEnd: "16:05",
);

= Ordine del giorno

- Valutazione del progresso generale;
- Analisi retrospettiva;
- Prossimo meeting;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>

Durante lo Sprint 20 è stata completata buona parte delle task previste, ed è stato quasi concluso lo sviluppo del MVP.

Il giorno venerdì 22/03/2024 si è svolto il meeting esterno con il Proponente per un aggiornamento riguardo lo stato dei lavori e l'illustrazione degli ultimi avanzamenti del MVP.

== #adr

Sono stati conclusi l'aggiornamento e l'estensione del documento, il quale è stato mandato in revisione al #cardin dopo un ultimo controllo da parte dei membri del gruppo.

== #man

Il #man ha visto completati i seguenti lavori:

- rimozione sezione requisiti di sistema e hardware, poiché ritenuti di scarso interesse per l'utilizzatore finale, lasciando solo i requisiti riguardanti i browser;
- redazione delle seguenti sezioni delle istruzioni d'uso:
  - Avvio e configurazione dell'ambiente;
  - Movimento nell'ambiente tridimensionale;
  - Creazione zona;
  - Impostazioni.

== #ndp

Le #ndp hanno visto completati i seguenti lavori:
- revisione Processo di transizione;
- aggiornamento descrizione della repository WMS3;
- aggiornamento SVG workflow automazioni dei documenti.

== #pdp

Il #pdp ha visto completati i seguenti lavori:
- redazione preventivo Sprint 19;
- redazione consuntivo Sprint 19;
- redazione preventivo Sprint 20.

== #st

È stata aggiunta la sezione sui requisiti di sistema e hardware precedentemente inserita nel #man, ed è stata redatta la sezione riguardante i requisiti soddisfatti.

== Codifica

L'attività di codifica ha visto completati i lavori:
- implementazione componente 3D zona;
- implementazione posizionamento zona nell'ambiente 3D;
- implementazione controllo su caricamento dati da database;
- implementazione spostamento prodotto da un bin a un altro tramite _drag and drop_;
- creazione piano a partire da SVG;
- implementazione ricerca prodotti;
- implementazione ricerca zone;
- implementazione caricamento elementi nella lista dei prodotti non collocati;
- adeguamento coordinate delle zone all'ambiente creato tramite SVG;
- correzione bug dimensionali sui bin;
- implementazione pattern Factory per la ricerca;
- risoluzione performance issues;
- implementazione spostamento camera tramite tastiera;
- implementazione spostamento camera tramite tastiera durante il _dragging_ di un prodotto;
- limitazione di panning e trucking;
- miglioramento grafico UI.


= Analisi retrospettiva

Il rendimento dello Sprint 20 è sostenuto dalle principali metriche esposte dal #pdq\:

- CPI di progetto rimane costante a 1.00, rappresentando un valore ottimale;
- EAC passa da € 12.990,31 a € 12.990,86, rimanendo quindi pressoché costante. Continua a rappresentare un valore ottimale;
- $"SEV" >= "SPV"$, indica un andamento positivo del progetto.

Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>

Il gruppo si ritiene soddisfatto di come sta lavorando, in particolare riguardo lo sviluppo del MVP, che è quasi giunto al termine.

== Improvements <improvements>

Non sono state riscontrate criticità.

= Prossimo meeting

Il prossimo meeting di retrospettiva, previsto per domenica 31/03/2024 alle ore 15:00, viene anticipato alla mattina di sabato 30/03/2024 a causa delle festività pasquali. L'orario del meeting sarà definito nei prossimi giorni tramite sondaggio interno su Discord.

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
#figure(caption: [Task pianificate per lo Sprint 21.],
  table-json(json("tasks.json"))
)