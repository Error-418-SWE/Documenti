#import "/template.typ": *

#show: project.with(
  date: "21/04/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Carraro Riccardo",
  ),
  timeStart: "15:00",
  timeEnd: "16:00",
);

= Ordine del giorno
- Valutazione del progresso generale;
- Analisi retrospettiva;
- Candidatura per sostenere il secondo colloquio della Product Baseline;
- Pianificazione.

= Valutazione del progresso generale
Lo Sprint 24 si conclude con il completamento dei task pianificati, rispecchiando quanto impostato all'interno dello Sprint Backlog. Il progetto didattico si sta avvicinando alla sua conclusione, come testimoniato dalla riduzione sostanziale del lavoro da svolgere.

== Verbali
Durante il processo di revisione documentale, sono stati corretti errori ortografici nei seguenti verbali:
- Verbale 24/02/18;
- Verbale 24/02/22;
- Verbale 24/03/06;
- Verbale 24/03/17.

== #st
Il #cardin ha espresso giudizio positivo nei confronti del documento #st_v, ritenendolo "in linea con quanto atteso". Tale risultato permette al gruppo di procedere con la candidatura per il secondo colloquio della Product Baseline.

== #ndp
Il documento #ndp_v ha subito un aggiornamento in merito alla sezione _Processo di Misurazione_, relativo al sistema di tracciamento delle metriche. 

Infatti, al fine di rendere chiaro il sistema di metriche utilizzate, è stato necessario definire un sistema di tracciamento che assegni ad ogni metrica un codice identificativo univoco. 

La revisione del documento è stata completata.

== #pdq
Il documento #pdq ha visto una ristrutturazione del suo contenuto, organizzando le metriche e i relativi valori all'interno di file JSON separati. In questo modo, la rappresentazione delle singole metriche avviene in maniera automatica mediante delle funzioni implementate in Typst all'interno del documento. 

Tale approccio, permette di rendere uniforme la rappresentazione delle metriche all'interno del documento, garantendo una maggiore coerenza stilistica e semplcità di manutenzione.

Terminata, inoltre, la redazione della sezione dedicata ai test di accettazione.

== #glo
Il documento #glo_v ha visto l'aggiornamento dei termini:
- "Test di integrazione", ora in grado di essere rilevato anche fosse scritto "integration test";
- "Test di sistema", ora in grado di essere rilevato anche fosse scritto "system test".

== #man
Data la natura diversa e i destinatari a cui è rivolto il documento #man, il gruppo ha redatto un glossario dedicato. 

= Analisi retrospettiva
Lo Sprint 24 è terminato con il raggiungimento della totalità degli obiettivi prefissati. Il rendimento positivo dello Sprint è sostenuto dalle principali metriche esposte dal #pdq_v:
- CPI di progetto a 1.01, che rappresenta un avanzamento positivo del progetto, con valore superiore alla soglia di accettabilità;
- EAC aumenta passando da € 12.968,71 a € 12.969,18. L'aumento è irrisorio e non incide sul budget previsto. Il valore di tale metrica è oramai consolidato, e dato il limitato lavoro rimanente, non si prevedono variazioni significative;
- $"SEV" = "SPV"$, come testimoniato anche dalla metrica CPI, che indica un avanzamento positivo del progetto, che si avvicina alla sua conclusione.

== Keep doing 
Il gruppo, ormai prossimo alla conclusione del progetto, ha raggiunto, come anche espresso dalle retrospettive precedenti, una soddisfacente capacità di lavoro in modalità asincrona. Il _way of working_ è consolidato e non necessita di ulteriori modifiche.

== Improvements
Nessuna criticità incontrata durante il corso dello Sprint 24.

= Candidatura per sostenere il secondo colloquio della Product Baseline 
In data 17/04/2024 il gruppo ha ottenuto l'esito positivo del primo colloquio della Product Baseline sostenuto con il #cardin. Il gruppo pertanto, intende candidarsi per il secondo colloquio con il #vardanega entro mercoledì 24/04/2024.

= Pianificazione
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
#figure(caption: [Task pianificate per lo Sprint 25.],
  table-json(json("tasks.json"))
)