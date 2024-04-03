#import "/template.typ": *

#show: project.with(
  date: "30/03/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Oseliero Antonio",
  ),
  reviewers: (
    "Banzato Alessio",
  ),
  missingMembers: (
    "Todesco Mattia",
  ),
  timeStart: "10:30",
  timeEnd: "11:15",
);

= Ordine del giorno
- Valutazione del progresso generale;
- Pianificazione.
- Invio candidatura PB;

= Valutazione del progresso generale <avanzamento>

Lo Sprint 21 è servito al gruppo per pianificare e continuare gli ultimi lavori in previsione del colloquio PB.

== #ndp

Sono state aggiornate e revisionate le seguenti sezioni:
- Processo di gestione della qualità;
- Processo di validazione;
- Processo di integrazione;
- Processo di verifica;
- Processo di implementazione;
- Processo di transizione.

== #pdq

- redatto tracciamento test;
- aggiornate metriche dalla dashboard.

== #st

- completata e ampliata la specifica tecnica.

== #man

- definite le ultime task;
- redatta sezione Modifica Zona;
- redatta sezione Ordine Movimentazione Ordine;
- in corso la sezione Ispezione Zona;
- in corso la sezione Visualizzazione Lista Zone.

= Analisi retrospettiva

Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq\:

- CPI di progetto a #TODO, rappresenta un valore accettabile ($>=0.95$) e rimane molto vicino all'ottimalità, rappresentata da valori $>=1$;

- EAC aumenta passando da #TODO a #TODO. Nonostante l'aumento, rientra nelle condizioni di accettabilità;

- $"SEV" <= "SPV"$, rientra nelle condizioni di accettabilità poiché $"SEV" >= 80%$ del $"SVP"$.

\
Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>

Il gruppo ed il Proponente si ritengono soddisfatti dell'andamento dei lavori e dei progressi ottenuti.

Le review delle pull request sono avvenute con precisione e in tempi brevi.

= Invio candidatura PB

Il gruppo attende la valutazione della nuova versione del documento #adr da parte del #cardin, bloccante l'invio della candidatura PB.

Vista la concomitanza con le vacanze pasquali il gruppo spera di poter sostenere almeno il primo colloquio con il #cardin entro lo Sprint 22.

Il gruppo prosegue con la correzione e il miglioramento dei documenti, continua inoltre la ricerca di bug all'interno del MVP.

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
#figure(caption: [Task pianificate per lo Sprint 22.],
  table-json(json("tasks.json"))
)


