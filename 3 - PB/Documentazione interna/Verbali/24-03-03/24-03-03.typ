#import "/template.typ": *

#show: project.with(
  date: "03/03/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  timeStart: "15:10",
  timeEnd: "16:20",
);


= Ordine del giorno

- Valutazione del progresso generale;
- Analisi retrospettiva;
- Schema ER;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>

Lo Sprint 17 ha visto le task assegnate completate nei tempi previsti, ad eccezione di una, il cui svolgimento continuerà nello Sprint 18.

Il giorno giovedì 29/02/2024 si è svolto il meeting esterno con il Proponente, come pianificato, per aggiornare riguardo lo stato dei lavori ed esporre dubbi riguardo il design del prodotto.

== #adr

L'#adr ha visto l'inizio della sua revisione completa, che verrà proseguita nel prossimo Sprint.

== #glo

Il #glo ha visto l'aggiunta delle seguenti definizioni:

- Jest;
- Virtual Private Server;
- Testing;
- Unit test;
- Test di integrazione;
- Test di sistema.

== #man

Il #man ha visto completati i lavori:
- creazione del documento;
- redazione della sezione Introduzione.

== #ndp

Le #ndp hanno visto completati i lavori:
- redazione capitolo Organizational Project-Enabling processes/Quality Management process;
- redazione capitolo Technical processes/Implementation process;
- redazione capitolo Technical processes/Integration process;
- redazione capitolo Technical processes/Verification process;
- aggiunta norma riguardo il sistema di tracciamento rischi-risoluzioni.

== #pdp

Il #pdp ha visto completati i lavori:
  - redazione preventivo Sprint 16;
  - redazione consuntivo Sprint 16.

== #pdq

Il #pdq ah visto completati i lavori:
  - aggiornamento i grafici delle metriche per lo Sprint 16;
  - aggiornamento della dashboard con i dati sullo Sprint 16.

== #st

La #st ha visto le completati i lavori:
  - creazione documento;
  - redazione sezione Introduzione.

== Automazioni

Le automazioni hanno visto completato il lavoro:
  - correzione errore di registrazione versione.

== Progettazione

L'attività di progettazione ha visto completati i lavori:
  - aggiornamento schema ER del database;
  - aggiornamento mock-up.

== Codifica

L'attività di codifica ha visto completati i lavori:
  - implementazione modulo di sanificazione SVG;
  - implementazione pagina di selezione della modalità di creazione dell'ambiente.


= Analisi retrospettiva

Lo Sprint 17 è terminato con il raggiungimento della quasi totalità degli obiettivi prefissati. Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq\:
- CPI di progetto cala leggermente passando da 1.01 a 0.99, rappresentando ancora un valore accettabile ($>=0.95$) e rimanendo molto vicino all'ottimalità, rappresentata da valori $>=1$;
- EAC aumenta passando da € 12.911,54 a € 13.155,40. Il gruppo non lo considera un aumento problematico in quanto risulta abbastanza contenuto;
- $"SEV" <= "SPV"$ ma comunque accettabile in quanto $>=80% "del" "SPV"$.

Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>

Come nello Sprint precedente il gruppo ha saputo mantenere una modalità di lavoro e di comunicazione asincrona.

Il gruppo riconosce di aver stabilito una buona comunicazione con il Proponente durante i meeting.

== Improvements <improvements>

=== Criticità evidenziate

*P01*: Sono presenti dei dubbi riguardo il design del prodotto, nonostante i chiarimenti forniti dal #cardin via mail.

=== Soluzioni predisposte

#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Criticità affrontate],
      [R1],[Richiesta di colloquio via Zoom al #cardin], [P01]
    )
)

= Schema ER

Il gruppo ha discusso lo schema ER realizzato, individuando ridondanze da risolvere riguardo gli attributi `height` e `width` dell'entità `Bin`. Questi risultano uguali rispettivamente per tutti i bin sullo stesso ripiano e sulla stessa colonna, di conseguenza il gruppo decide di creare due ulteriori entità, `Ripiano` e `Colonna`, che conterranno queste informazioni.

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
#figure(caption: [Task pianificate per lo Sprint 17.],
  table-json(json("tasks.json"))
)

