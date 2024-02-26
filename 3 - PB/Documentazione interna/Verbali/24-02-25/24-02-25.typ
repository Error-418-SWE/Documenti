#import "/template.typ": *

#show: project.with(
  date: "25/02/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Oseliero Antonio",
  ),
  reviewers: (
    "boh",
  ),
  timeStart: "15:10",
  timeEnd: "16:10",
);


= Ordine del giorno


sprint buono, buone review

accertarsi che Adr sia pronta

presentazione mockup frontend

rivedere questione bin non assegnati

discussioni riguardo alla modellazzione dei requisiti

dubbi riguardo modifica scaffale

analisi dei rischi

adottare nuovo sistema per etchettare criticità

cambio ruoli

fissato meeting discussione design lunedì 26/2 ore 3

















- Valutazione del progresso generale;
- Analisi retrospettiva;
- Analisi valutazione RTB;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>
Lo Sprint 15 ha raggiunto gli obiettivi prefissati.

In data 16/02/2024 il gruppo ha sostenuto il colloquio con il #vardanega per il secondo sportello di valutazione RTB, di cui ha ottenuto l'esito, risultato positivo, in data 17/02/2024.

== #adr
L'aggiornamento del documento #adr è terminato: il documento ora risponde e corregge le criticità evidenziate dal #cardin al primo sportello di valutazione RTB.

Il gruppo considera completato l'aggiornamento e l'adeguamento del documento, ritenendolo pronto per una seconda revisione.

== #glo
Le definizioni contenute all'interno del documento sono state estese.

== #ndp
Rimosso capitolo 3 inerente alle convenzioni stilistiche non derivante dallo standard ISO/IEC 12207:2017, il cui contenuto era già assorbito dal capitolo 4.6.3 delle #ndp_v.

== #pdp
Redatti il consuntivo dello Sprint 14, terminato in data 4/02/2024, e il preventivo dello Sprint 15 iniziato in data 11/02/2024.

== Automazioni
Alcune componenti delle GitHub Actions implementate dal gruppo all'intero del _repository_ sono state aggiornate a seguito del rilascio della loro nuova versione. In particolare:
- `upload-artifact` si aggiorna dalla versione _v3_ alla versione _v4_;
- `download-artifact` si aggiorna dalla versione _v3_ alla versione _v4_;
- `setup-python` si aggiorna dalla versione _v4_ alla versione _v5_.

Rimossa la GitHub Action di supporto alla revisione di spellchecking mediante ChatGPT. Tale action era stata precedentemente disattivata a causa dei risultati non soddisfacenti prodotti e dei numerosi falsi positivi generati.

== Modifiche di carattere generale
=== Termini ricorrenti
I nomi dei documenti, dei professori e del gruppo, sono stati resi variabili riutilizzabili all'interno dei documenti. La modifica sarà estesa all'intero contenuto di tutti i documenti nello Sprint 16.

=== Sezione dei riferimenti uniformata
La sezione dei riferimenti presente all'interno dei documenti soggetti a ciclo di vita è stata uniformata conseguentemente all'utilizzo delle varibili introdotte.

Aggiunta la data di ultima consultazione ai riferimenti.

= Analisi retrospettiva
Lo Sprint 15 è terminato con il raggiungimento di tutti gli obiettivi prefissati, il cui rendimento positivo è sostenuto dalle principali metriche esposte dal #pdq\:
- CPI di progetto cresce passando da 0.97 a 0.98;
- EAC diminuisce passando da 13.437,22 a € 13.292,70;
- $"SEV" >= "SPV"$

Maggiori dettagli in merito al valore delle metriche alla loro analisi sono reperibili all'interno dei documenti #pdq_v e #pdp_v.

== Keep doing <keep-doing>
Le review di questo Sprint sono state tempestive e precise e hanno permesso di mantenere un numero ridotto di branch contemporaneamente aperti, riducendo frequenza e incidenza di merge conflict. Il risultato è pertanto un progresso costante ed equamente distribuito nel corso della settimana.

== Improvements <improvements>
=== Criticità evidenziate
*PO1*: Seppur durante lo Sprint siano state portate a termine tutte la task previste raggiungendo gli obiettivi prefissati, per alcune task non è stata rispettata la data di scadenza fissata. Ciò, pur non comportando rallentamenti o sovraccarico di lavoro, ha permesso di evidenziare nuovamente l'importanza di una comunicazione attiva.

*PO2*: Alcuni membri del gruppo evidenziano gli impegni universitari non ancora conclusi, che comportano una riduzione in termini di disponibilità.

*PO3*: Mancato sfruttamento del tempo alla conclusione delle task assegnate al singolo membro: si rinnova l'importanza di essere maggiormente proattivi.

=== Soluzioni predisposte
#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Titolo], [Criticità affrontate],
      [RO1],[Riassegnazione task], [PO1, PO2],
      [RO2],[Proattività],[PO3]
    )
)
Le risoluzioni predisposte sono descritte nel documento #pdp_v paragrafo 2.1 e saranno oggetto di verifica e valutazione nel corso dello Sprint 16.

= Analisi valutazione RTB
In data 17/02/2024 il gruppo ha ricevuto l'esito del colloquio sostenuto con il #vardanega in data 16/02/2024 relativo al secondo sportello di valutazione RTB.

#figure(caption: [Esito RTB.],
  table(
    columns: (1fr, 1fr, 1fr),
    [Presentazione (peso 40%)], [Documentazione (peso 60%)], [Media],
    [26,50],[22,50],[24,10]
  )
)

=== Valutazione
Le motivazioni in relazione alla valutazione della milestone RTB sono reperibili al seguente link:
#align(center, link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/RTB/Error_418.pdf"))


=== Analisi interna della valutazione ottenuta
Il gruppo prende visione e comprende le criticità evidenziate, le quali hanno generato task mirate alla loro risoluzione. Nello specifico:
- la struttura dei verbali verrà revisionata, predisponendo una sezione dedicata al tracciamento delle attività e delle decisioni intraprese;
- il documento #adr è stato aggiornato, rispondendo alle criticità evidenziate dal #cardin\;
- il documento #ris verrà assorbito dal #pdp, prestando maggiore attenzione alla gestione dei rischi e alle risoluzioni adottate:
- i riferimenti assenti nel #pdq devono essere risolti. Dovranno inoltre essere definite le metriche di valutazione in riferimento alla qualità del prodotto.

= Pianificazione <pianificazione>
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
#figure(caption: [Task pianificate per lo Sprint 16.],
  table-json(json("tasks.json"))
)