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
- Invio candidatura PB;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>

Durante lo Sprint 21 sono stati pianificati e continuati gli ultimi lavori in previsione del colloquio PB, inoltre si è svolta una riunione di convalida del MVP con il Proponente in cui tutte le funzionalità del sistema sono state mostrate e approvate.
== #ndp

Sono state aggiornate e revisionate le seguenti sezioni:
- Processo di gestione della qualità;
- Processo di validazione;
- Processo di integrazione;
- Processo di verifica;
- Processo di implementazione;

== #pdq

- Redatto tracciamento test;
- Aggiornate metriche dalla dashboard.

== #st

- Completato e ampliato il documento.

== #man

- Definite le ultime task;
- Redatta sezione Modifica Zona;
- Redatta sezione Richiesta spostamento prodotto;
- In corso la sezione Ispezione Zona;
- In corso la sezione Visualizzazione Lista Zone;
- Definito template documento;
- Redatta sezione Eliminazione zona
= Analisi retrospettiva

Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq\:

- CPI di progetto a 1.00, rappresenta un valore accettabile ($>=0.95$) e ottimo ($>=1$);

- EAC si riconferma con un valore di 13.055€, come nello sprint precedente;

- $"SEV" <= "SPV"$, rientra nelle condizioni di accettabilità poiché $"SEV" >= 80%$ del $"SVP"$.

\
Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>

Il gruppo ed il Proponente si ritengono soddisfatti dell'andamento dei lavori e dei progressi ottenuti.

Le review delle Pull Request sono avvenute con precisione e in tempi brevi.

= Invio candidatura PB

Il gruppo attende la valutazione della nuova versione del documento #adr da parte del #cardin, bloccante l'invio della candidatura PB.

Vista la concomitanza con le vacanze pasquali, il gruppo conta di poter sostenere il primo colloquio con il #cardin entro lo Sprint 22.

Il gruppo prosegue con la correzione e il miglioramento dei documenti; continua inoltre la ricerca di bug all'interno del MVP.

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


