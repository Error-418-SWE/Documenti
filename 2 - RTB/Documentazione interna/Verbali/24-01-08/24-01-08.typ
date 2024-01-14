#import "/template.typ": *

#show: project.with(
  date: "08/01/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Gardin Giovanni",
  ),
  timeStart: "14:45",
  timeEnd: "15:30",
);

= Ordine del giorno
- Valutazione dell'avanzamento;
- Analisi di retrospettiva;
- Valutazione RTB;
- Pianificazione.

== Valutazione dell'avanzamento <avanzamento>
Ogni membro del gruppo, supportato dall'evidenza della board Jira, ha esposto lo stato di avanzamento delle proprie attività assegnate. Per brevità sono omesse le considerazioni riguardo i documenti Norme di Progetto, Analisi dei Requisiti e Piano di Progetto, per i quali l'avanzamento è avvenuto nel rispetto della pianificazione precedente.

=== Piano di Qualifica
Il documento è stato revisionato e la selezione delle metriche è completa. Nel futuro prossimo il gruppo estenderà ed affinerà le metriche a supporto dei processi di ciclo di vita.

La dashboard di monitoraggio è stata realizzata con Grafana e le API di Jira.

=== PoC
Tutte le funzionalità previste sono state integrate.

Rimane da chiarire se realizzare il _pattern middleware_ con Express.js o con Next.js. Inoltre è emerso un grave problema di prestazioni concorrente alla creazione di più scaffali. Il bug causa un crollo drastico del frame rate.

=== Automazioni
È stato introdotto lo spell checking dei documenti in PR tramite le API di OpenAI.

È emersa la necessità di correggere alcuni log perché l'automazione preposta presenta un bug e crea alcuni log non validi.

=== Analisi dei rischi
Rivista la struttura del documento per migliorarne la leggibilità.

== Analisi di retrospettiva

=== Keep doing <keep-doing>
Il gruppo rileva la partecipazione di tutti i membri alle attività di progetto.

La sensazione generale è che il gruppo sia a buon punto e possa candidarsi per la valutazione RTB entro la fine dello sprint successivo.

=== Improvements <improvements>
Le norme di formattazione del testo (grassetto e corsivo) non sono state rispettate in alcune sezioni dei documenti. Il problema riguarda soprattutto l'Analisi dei Requisiti. Si è stabilito che:
  - i riferimenti ai documenti debbano riportare l'esatto numero di versione;
  - i link ai documenti vadano riportati nella sezione Riferimenti;
  - i link ai documenti vadano riportati per esteso;
  - i link debbano puntare al documento PDF contenuto nel branch `main`.

Sarebbe apprezzata una maggiore proattività e propositività per non perdere ore produttive e migliorare al contempo la qualità dei documenti e dei processi.

In Jira, aggiungere i ticket non urgenti al backlog e non allo sprint per non alterare il computo degli story points.

== Valutazione RTB
Visto lo stato di avanzamento, il gruppo ha l'obiettivo di presentare la propria candidatura per la valutazione RTB entro il 19/01/2024.

== Pianificazione <pianificazione>
La pianificazione dello Sprint 10 tiene conto della sua minor durata (6 giorni, uno in meno del consueto).

- Procedere con la revisione dei documenti. Se necessario, l'incaricato alla revisione aggiornerà manualmente il log associato secondo le regole prestabilite;
- Correggere le cause del problema prestazionale del PoC;
- Correggere i bug delle automazioni;
- Introdurre automazione per la compilazione del documento a seguito dell'aggiornamento manuale di un changelog;
- Ampliare la dashboard di monitoraggio;
- Preparare la presentazione a supporto della valutazione RTB;
- Mostrare al Proponente un video demo per aggiornarlo sullo stato dei lavori.

Si prevede, inoltre, che gli Sprint 11, 12 e 13 avranno ambito ridotto a causa della concorrente sessione di esami.