#import "/template.typ": *

#show: project.with(
  date: "07/04/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Carraro Riccardo",
  ),
  timeStart: "15:10",
  timeEnd: "16:00",
);

= Ordine del giorno
- Valutazione del progresso generale;
- Analisi retrospettiva;
- Candidatura per sostenere il primo colloquio della Product Baseline;
- Predisposizione della presentazione per primo colloquio della Product Baseline;
- Pianificazione.

= Valutazione del progresso generale
Lo Sprint 22 si conclude con il completamento dei task pianificati, rispecchiando quanto impostato all'interno dello Sprint Backlog.

== #adr
In data 03/04/24 il #cardin ha espresso giudizio positivo in merito all'espansione apportata al documento #adr_v, ritenendo comprese le mancanze individuate nella versione del documento consegnato in RTB, e la sua espansione soddisfacente. Tale risultato ha permesso al gruppo di procedere alla candidatura per il colloquio della Product Baseline.

Il documento, pertanto, è ritenuto concluso nella sua interezza e non sarà oggetto di ulteriori modifiche di carattere contenutistico.

== #st
Il documento #st_v è stato redatto nella sua interezza. In particolare:
- riorganizzata la struttura della sezione _Tecnologie_;
- correzione titolo sezione _DataRepository Pattern_.

Il documento, a seguito delle modifiche apportate, è ritenuto concluso e non sarà oggetto di ulteriori modifiche di carattere contenutistico.

== #pdq
A seguito dell'aggiornamento della versione di Typst, è stata ridefinita la struttura delle tabelle presenti all'interno del documento #pdq, le quali presentavano errori di formattazione.

Le metriche di qualità sono state aggiornate, in particolare:
- aggiornamento dei grafici delle metriche per lo Sprint 22;
- aggiornamento della dashboard con i dati sullo Sprint 22.

== #pdp
Il documento #pdp è stato aggiornato con le informazioni relative allo Sprint 22, in particolare:
- redazione preventivo Sprint 22;
- redazione consuntivo Sprint 22.

== #ndp
La revisione del documento di #ndp è stata completata, in particolare i paragrafi:
- Transition process;
- Integration process;
- Implementation process;
- Quality management process;
- Verification process;
- Validation process.

Il documento, per quanto ritenuto concluso con la redazione dei paragrafi derivanti dallo standard ISO/IEC 12207:2017 e la loro revisione, sarà oggetto di un ulteriore controllo di conformità prima della consegna.


= Analisi retrospettiva
Lo Sprint 22 è terminato con il raggiungimento della totalità degli obiettivi prefissati. Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq_v:
- CPI di progetto a 1.02, che rapppresenta un avanzamento positivo del progetto, con valore superiore alla soglia di accettabilità;
- EAC diminuisce passando da € 12.762,13 a € 12.754,67 rientrando ampiamente nel budget previsto;
- $"SEV" >= "SPV"$, come testimoniato anche dalla metrica CPI, che indica un avanzamento positivo del progetto.;

== Keep doing
Il gruppo, ormai prossimo alla conclusione del progetto, ha raggiunto, come anche espresso dalle retrospettive precedenti, una soddisfacente capacità di lavoro in modalità asincrona.

Il gruppo è altresì soddisfatto del feedback ricevuto dal #cardin in merito al documento #adr_v, che ha permesso di procedere con la candidatura per il colloquio della Product Baseline.

== Improvements
=== Criticità evidenziate
*P01*: A seguito delle festività pasquali (Pasqua e Pasquetta), si è rilevato un leggero calo del rendimento produttivo del gruppo. Tale rallentamento però, non ha compromesso il raggiungimento degli obiettivi prefissati, pertanto non è ritenuto necessario intervenire con azioni correttive.

== Candidatura per sostenere il primo colloquio della Product Baseline
A seguito di:
- valutazione positiva del #cardin in merito al documento #adr_v;
- approvazione da parte del Proponente del MVP prodotto in data 26/03/24;
- redazione completata del documento #st_v.
Il gruppo si è candidato in data 04/04/24 per sostenere il primo colloquio della Product Baseline, fissato per mercoledì 10/04/24 alle ore 8:40.

== Predisposizione della presentazione per primo colloquio della Product Baseline
Durante il meeting è stata oggetto di discussione la predisposizione della presentazione per il primo colloquio della Product Baseline. La presentazione sarà strutturata in modo da esporre i principali punti del documento #st_v, in particolare:
- introduzione;
- tecnologie utilizzate;
- architettura implementativa (e design pattern);
- architettura di deployment.

Individuati gli argomenti principali, il gruppo si è suddiviso i compiti per la redazione della presentazione, valutando i tempi necessari per trattare i diversi argomenti in relazione alla durata limitata del colloquio.

Nelle date 08/04/2024 e 09/04/2024 verranno eseguite le prove generali della presentazione.

== Pianificazione
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
#figure(caption: [Task pianificate per lo Sprint #TODO .],
  table-json(json("tasks.json"))
)