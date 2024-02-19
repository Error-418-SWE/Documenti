#import "/template.typ": *

#show: project.with(
  date: "18/02/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Carraro Riccardo",
  ),
  reviewers: (
    "Oseliero Antonio",
  ),
  timeStart: "15:00",
  timeEnd: "15:45",
);


= Ordine del giorno

- Valutazione del progresso generale;
- Analisi retrospettiva;
- Analisi valutazione RTB;
- Pianificazione.

= Valutazione del progresso generale <avanzamento>
Lo Sprint 15 ha raggiunto gli obiettivi prefissati, terminando con tutte le task pianificate per il periodo completate. 

In data 16/02/2024 il gruppo ha sostenuto il colloquio con il #vardanega per il secondo sportello di valutazione RTB, di cui ha ottenuto l'esito, risultato positivo, in data 17/02/2024.

== #adr
L'aggiornamento del documento #adr è terminato: il documento ora risponde e corregge le criticità evidenziate dal #cardin al primo sportello di valutazione RTB. In particolare nello Sprint 15, il documento ha subito le seguenti modifiche:
- aggiornamento dell'UC7:
  - rimosso il termine "_richiesta_" nella nomenclatura dell'UC7;
  - specificate le API utilizzate dall'UC7;
- inserito tracciamento casi d'uso - requisiti;
- espressa la distinzione tra requisiti obbligatori, desiderabili e opzionali.

Il gruppo considera completato l'aggiornamento e l'adeguamento del documento, ritenendolo pronto per una seconda revisione da parte del #cardin\.

== #glo
Le definizioni contenute all'interno del documento sono state estese.

== #ndp
Rimosso capitolo non derivante dallo standard ISO/IEC 12207:2017, il cui contenuto era già assorbito dal capitolo 4.6.3 delle #ndp_v.

== #pdp
Redatti il consuntivo dello Sprint 14, terminato in data 4/02/2024, e il preventivo dello Sprint 15 iniziato in data 11/02/2024.

== Automazioni
Alcune componenti delle GitHub Actions implementate dal gruppo all'intero del _repository_ sono state aggiornate a seguito del rilascio della loro nuova versione. In particolare:
- `publish-artifact` si aggiorna dalla versione _v3_ alla versione _v4_;
- `upload-artifact` si aggiorna dalla versione _v3_ alla versione _v4_;
- `download-artifact` si aggiorna dalla versione _v3_ alla versione _v4_;
- `setup-python` si aggiorna dalla versione _v4_ alla versione _v5_.

Rimossa la GitHub action di supporto alla revisione di spellcecking mediante ChatGPT. Tale action era stata precedentemente disattivata a causa dei risultati non soddisfacenti prodotti e dei numerosi falsi positivi generati.

== Modifiche di carattere generale
=== Termini riccorrenti 
Al fine di migliorare la conformità, la coerenza e la consistenza nell'utilizzo dei nomi dei documenti, dei nomi dei professori e del nome stesso del gruppo, tali termini sono stati resi variabili riutilizzabili all'interno dei documenti. Tali termini sono contenuti nel file _common.typ_ che attinge dal file _documents.json_ presenti nella root folder del repository del gruppo.

Tale approccio permette di mantenere aggiornata la versione dei documenti riferiti, in modo che alla redazione o all'aggiornamento di un documento, anche i riferimenti ai documenti esterni vengano aggiornati.

La modifica sarà estesa all'intero contenuto di tutti i documenti nello Sprint 16.

=== Sezione dei riferimenti uniformata
La sezione dei riferimenti presente all'interno dei documenti soggetti a ciclo di vita è stata uniformata conseguentemente all'utilizzo delle varibili introdotte. 

Aggiunta la data di ultima consultazione ai riferimenti.

= Analisi retrospettiva
Lo Sprint 15 è terminato con il raggiungimento di tutti gli obiettivi prefissati, il cui rendimento positivo è sostenuto dalle principali metriche esposte dal #pdq:

#figure(caption: [Metriche a supporto della retrospettiva.],
  table(
    columns: (1fr, 1fr),
    [Metrica],[Valore],
    [Task completate],[100%],
    [Sprint Earned Value (SEV)], [540,00 €],
    [Sprint Planned Value (SPV)], [540,00 €],
    [Sprint Actual Cost (SAC)], [#TODO]
  )
)

Il completamento della totalità delle task prefissate ha comportato un rapporto 1:1 tra il valore pianificato (SPV) e il valore effettivamente guadagnato (SEV) nel corso dello Sprint.

== Keep doing <keep-doing>
Le review di questo Sprint sono state tempestive e precise e hanno permesso di mantenere un numero ridotto di branch contemporaneamente aperti, riducendo frequenza e incidenza di merge conflict. Il risultato è pertanto un progresso costante ed equamente distribuito nel corso della settimana.

== Improvements <improvements>
=== Criticità evidenziate
*C1*: Seppur durante lo Sprint siano state portate a termine tutte la task previste raggiungendo gli obiettivi prefissati, per alcune task non è stata rispettata la data di scadenza fissata. Ciò, pur non comportando rallentamenti o sovraccarico di lavoro, ha permesso di evidenziare nuovamente l'importanza di una comunicazione attiva.

*C2*: Alcuni membri del gruppo evidenziano gli impegni universitari non ancora conclusi, che comportano una riduzione in termini di disponibilità.

*C3*: Mancato sfruttamento del tempo alla conclusione delle task assegnate al singolo membro: si rinnova l'importanza di essere maggiormente proattivi.

#pagebreak()
=== Soluzioni predisposte
#figure(caption: [Soluzioni individuate alle criticità riscontrate.],
    table(
      align: left,
      columns: (auto, 1fr, auto),
      [ID risoluzione], [Descrizione], [Criticità affrontate],
      [R1],[Se non si ritiene plausibile il completamento di una task entro la data di scadenza fissata, si evidenziano due possibili scenari:
    - nel caso la task *non sia stata ancora iniziata*, si procede con il riassegnamento della task ad un altro membro con maggiore disponibilità o conoscenza in materia;
    - nel caso la task *sia già avviata*, si procede con la possibile riassegnazione delle task precedentemente assegnate al membro del gruppo che sta lavorando sulla task, in modo che un rallentamento nel suo completamento, non comporti un rallentamento a cascata sulle altre task assegnate al medesimo membro del gruppo.],[C1, C2],

      [R2],[Al termine delle task assegnate al singolo individuo, si evidenziano due possibili  scenari:
      - nel caso lo Sprint backlog *non sia* stato completato, il membro del gruppo che ha terminato le task a lui assegnate, *deve* procedere all'individuazione e alla selezione di una task non ancora assegnata;
      - nel caso lo Sprint backlog risulti *terminato* o tutte le task in esso contenute risultino già in corso o in verifica, sarà compito del membro del gruppo evidenziare la sua disponibilità. Si dovrà dunque procedere o con l'assegnazione di una task proveniente dal project backlog o con la creazione e assegnazione di una nuova task. 
    ],[C3]
    )
)

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
- la struttura dei verbali verrà revisionata, predisponendo una sezione dedicata al tracciametno delle attività e delle decisioni intraprese;
- il documento #adr è stato aggiornato, rispondendo alle criticità evidenziate dal #cardin\;
- il documento #ris verrà assorbito dal #pdp, prestando maggiore attenzione alla gestione dei rischi e alle risoluzioni adottate: il gruppo stabilisce pertanto la necessiatà di definire un sistema di tracciamento tra criticità evidenziate dagli _improvements_ nei meeting di retrospettiva e le risoluzioni che si intendono attuare. Tale sistema sarà normato all'interno delle #ndp ;
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