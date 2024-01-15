#import "/template.typ": *

#show: project.with(
  date: "14/01/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Gardin Giovanni",
  ),
  timeStart: "15:00",
  timeEnd: "16:15",
);

= Ordine del giorno
- Valutazione dell'avanzamento;
- Analisi di retrospettiva;
- Valutazione RTB;
- Pianificazione.

== Valutazione dell'avanzamento <avanzamento>
Ogni membro del gruppo, supportato dall'evidenza della board Jira, ha esposto lo stato di avanzamento delle proprie attività assegnate. Per brevità sono omesse le considerazioni riguardo i documenti Norme di Progetto, Analisi dei rischi e Piano di Progetto, per i quali l'avanzamento è avvenuto nel rispetto della pianificazione precedente.

=== Piano di Qualifica
Per ragioni di tempo non è stato possibile ampliare la dashboard di monitoraggio con nuove visualizzazioni.

=== PoC
Sono stati individuati e corretti i problemi di prestazioni riscontrati alla fine dello sprint precedente.

A seguito di un colloquio informale con il Professor Cardin in data 12/01/24, è stato deciso di utilizzare Next.js per la realizzazione del _pattern middleware_. Poiché Next.js è la tecnologia scelta per la realizzazione del frontend, utilizzarlo anche per l'implementazione del middleware sembra, allo stato attuale, una scelta naturale. La rimozione di Express.js permetterà di semplificare lo stack tecnologico complessivo.

=== Automazioni
Sono stati corretti tutti i bug grazie ad un refactoring del codice delle GitHub Action.

È stata introdotto il rilascio automatico del documento in seguito all'aggiornamento manuale del changelog. La funzione risulterà utile per la rimozione delle linee erroneamente introdotte dall'automazione preposta.

=== Glossario
La lista dei termini di dominio è cresciuta rispetto al contenuto del documento.

== Analisi di retrospettiva

=== Keep doing <keep-doing>
Le revisioni effettuate nello scorso sprint si sono distinte per celerità e precisione.

=== Improvements <improvements>
La comunicazione tra membri è risultata non allineata (_siloed_) in alcune occasioni.

Si è inoltre riscontrato uno sbilanciamento dell'impegno dei singoli membri del gruppo, dovuto all'avvicinarsi della sessione d'esame invernale.

== Valutazione RTB
Visto lo stato di avanzamento, il gruppo ha l'obiettivo di presentare la propria candidatura per la valutazione RTB entro il 19/01/24.

== Pianificazione <pianificazione>
La pianificazione dello Sprint 11 tiene conto della prossimità della sessione di esame invernale.

- Procedere con la revisione dei documenti. Se necessario, l'incaricato alla revisione aggiornerà manualmente il log associato secondo le regole prestabilite;
- Redigere la lettera di presentazione per sostenere la valutazione RTB;
- Ampliare la dashboard di monitoraggio;
- Revisionare, correggere ed espandere il Glossario;
- Preparare la presentazione a supporto della valutazione RTB.

La candidatura sarà nuovamente discussa durante una riunione interna mercoledì 17/01/24 alle ore 10:00, secondo le modalità consuete. In tale sessione si stabilirà quando chiedere il colloquio di valutazione RTB con il Professor Cardin.

Si prevede, inoltre, che gli Sprint 12 e 13 avranno ambito ridotto a causa della concorrente sessione di esami.