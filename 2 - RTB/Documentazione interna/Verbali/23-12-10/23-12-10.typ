#import "/template.typ": *

#show: project.with(
  date: "10/12/23",
  subTitle: "Meeting di retrospettiva e organizzazione prossimo sprint",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),
  timeStart: "15:00",
  timeEnd: "16:10",
);

= Ordine del giorno

- Analisi dei keep doing e degli improvements;
- Esposizione avanzamenti dei lavori dello sprint attuale;
- Organizzazione attività e ruoli del prossimo sprint.

== Analisi dei keep doing e degli improvements

=== Keep doings
- Il gruppo ha preso confidenza con le tecnologie e le norme da applicare;
- Il lavoro su diversi documenti è avvenuto correttamente e in parallelo;
- Ottima disponibilità di ogni membro del gruppo nell'aiutarsi con il lavoro in caso di difficoltà;
- Fase di review delle Pull Request più rapida.

=== Improvements
- Definire delle convenzioni da adottare riguardanti il codice;
- Lavoro concentrato principalmente nel weekend;
- Richiesta maggiore partecipazione dei membri del gruppo sulle board di Miro.

=== Soluzioni adottate
- Formulare convenzioni da adottare per il codice;
- Impegnarsi a fissare delle scadenze infrasettimanali così da ridurre il carico di lavoro il weekend;
- Utilizzare le board su Miro con anticipo aggiungendo il proprio feedback.

== Esposizione avanzamenti dei lavori dello sprint attuale

Sono stati mostrati gli avanzamenti dei lavori riguardo:
- l'implementazione della containerizzazione Docker;
- l'introduzione dei bin e di una creazione più accurata degli scaffali nel PoC A.


== Organizzazione attività e ruoli prossimo sprint
In luce degli avanzamenti ottenuti durante lo sprint attuale e del backlog relativo al prossimo sprint, sono state previste le seguenti attività da svolgere:

- avanzare con la gestione dei bin nel PoC A;
- migliorare l'uso di Docker;
- iniziare a lavorare sul Piano di Qualifica;
- implementare la possibilità di avere più file typst per Pull Request modificando le GitHub Actions;
- adeguare l'Analisi dei Requisiti in funzione di quanto emerso durante lo scorso meeting con il professor Cardin;
- aggiungere nel file di Analisi dei Requisiti la tabella che correli gli Use Case ai requisiti.

Inoltre è stato deciso che le modifiche al Piano di Progetto saranno fatte dall'Amministratore. \
Non è previsto per il prossimo sprint ma è stata considerata l'implementazione di una Action di GitHub che aggiorni i documenti presenti in repository aggiungendo i riferimenti ai termini del Glossario.
