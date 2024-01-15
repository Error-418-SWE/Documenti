#import "/template.typ": *

#show: project.with(
  date: "13/11/23",
  docType: "verbale",
  authors: (
    "Oseliero Antonio",
  ),
  timeStart: "15:30",
  timeEnd: "17:30",
);

= Ordine del giorno
  - Aggiornamento del gruppo in merito alle nuove automazioni adottate;
  - Retrospettiva dello sprint 1;
  - Discussione in merito alle tecnologie adottate;
  - Ripartizione dei ruoli per il nuovo sprint;
  - Pianificazione sprint 2.

== Automazioni e nuova repository
  Il gruppo che si è dedicato nel precedente sprint ad automatizzare la repository ha
  finalizzato il lavoro e ha aggiornato il gruppo riguardo alle nuove funzionalità.
  La vecchia repository è stata abbandonata in favore di una nuova (questo perché riorganizzare
  la vecchia repository avrebbe richiesto troppo tempo) con una nuova organizzazione dei branch,
  differente rispetto alla precedente: prima era presente un branch main (per i release) e un branch develop dal quale si aprivano feature branch; ora la repository è composta da tre branch principali quali:
  - main: contenente i pdf compilati e pubblicati automaticamente tramite GitHub Actions solo a seguito della verifica di uno o più reviewer;
  - src: contenente i file sorgenti scritti in Typst;
  - website: branch parallello contente un versione work in progress del sito del gruppo.


== Retrospettiva sullo sprint
  Segue quindi la discussione in merito ai miglioramenti da attuare nei prossimi sprint e quello attuale. Lo sprint passato ha avuto due criticità fondamentali:
  - una generale confusione da parte del team di documentazione in merito alla priorità da dare ai vari documenti da redigere e al loro contenuto;
  - l'impossibilità di utilizzare la nuova repository bloccata dai rallentamenti subiti dal sottovalutare la mole di lavoro riguardo l'implementazione delle automazioni.
  Abbiamo quindi realizzato fosse necessario che le persone adette allo sviluppo delle GitHub Action terminassero quanto prima i lavori segnandolo come task di importanza critica. \
  Abbiamo poi diviso il gruppo in 3 team di lavoro distinti per lavorare sui vari documenti assegnando più persone al documento con maggiore urgenza (vedi @ruoli).

== Nuove tecnologie
  Il gruppo ha continuato la riunione con una panoramica sulle nuove tecnologie adottate:
  - Jira: ITS sostitutivo a GitHub, scelto per le molte funzionalità che offre come i diagrammi di Gantt o la possibilità di definire macro obbiettivi (epic) oltre le normali task. Un'altra funzionalità utile di Jira è la possibilità di definire sprint settimanali che permettono di definire obbiettivi da raggiungere entro l'arco di periodo indicato. Questa feature è fondamentale per definire la qualità del lavoro svolto, se il ritmo di lavoro è stato opportunamente calcolato/rispettato, dove risiedono le criticità della pianificazione del lavoro e permette inoltre di avere strumenti metrici come i burndown chart per monitorare lo stato di avanzamento dello sprint;
  - Miro: board che verrà utilizzata durante i meeting interni per supportare processi di brainstorming o per riportare concetti o criticità durante l'analisi dello sprint appena terminato.

== Ripartizione dei ruoli <ruoli>
  In seguito al diario di bordo tenutosi in data 13-11-23, il gruppo si è organizzato per portare avanti lo sviluppo dei tre documenti fondamentali, quali:
  - Analisi dei Requisiti: documento di priorità maggiore. Risorse assegnate: 3 persone;
  - Piano di Progetto. Risorse assegnate: 2 persone;
  - Norme di Progetto: Risorse assegnate: 2 persone.

= Azioni da intraprendere
  - Cominciare a redigere un glossario dei termini;
  - Definire delle modalità di lavoro precise da utilizzare con Jira e un workshop per allineare le conoscenze del gruppo in merito al suo utilizzo;
  - Contattare l'azienda per domande in merito all'Analisi dei Requisti (confermata per mercoledì 15/11/23).
