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

- analisi dei keep doing e degli improvements;
- esposizione avanzamenti dei lavori dello sprint attuale;
- organizzazione attività e ruoli del prossimo sprint.

== Analisi dei keep doing e degli improvements

$bold("Keep doings:")$
- il gruppo ha preso confidenza con le tecnologie e le norme da applicare;
- il lavoro su diversi documenti è avvenuto correttamente e in parallelo;
- ottima disponibilità di ogni membro del gruppo nell'aiutarsi con il lavoro in caso di difficoltà;
- fase di review delle Pull Request più rapida.

$bold("Improvements:")$
- definire delle convenzioni da adottare riguardanti il codice;
- lavoro concentrato principalmente nel weekend;
- richiesta maggiore partecipazione dei membri del gruppo sulle board di miro;

$bold("Relativamente agli improvements le relative soluzioni accordate sono:")$
- formulare convenzioni da adottare per il codice;
- impegnarsi a fissare delle scadenze infrasettimanali così da ridurre il carico di lavoro il weekend;
- utilizzare le board su miro con anticipo aggiungendo il proprio feedback.

== Esposizione avanzamenti dei lavori dello sprint attuale

Sono stati mostrati gli avanzamenti dei lavori riguardo:
- l'implementazione della containerizzazione Docker;
- l'introduzione dei bin e di una creazione più accurata degli scaffali nel PoC A;


== Organizzazione attività e ruoli prossimo sprint
In luce degli avanzamenti ottenuti durante lo sprint attuale e del backlog relativo al prossimo sprint, sono state previste le seguenti attività da svolgere:

- avanzare con la gestione dei bin nel PoC A;
- migliorare l'uso di Docker;
- iniziare a lavorare sul Piano di Qualifica;
- implementare la possibilità di avere più file typst per Pull Request modificando le GitHub Actions;
- adeguare l'Analisi dei Requisiti in funzione di quanto emerso durante lo scorso meeting con il professor Cardin;
- aggiungere nel file di Analisi dei Requisiti la tabella che correli gli Use Case ai requisiti.

Inoltre è stato deciso che le modifiche al Piano di Progetto saranno fatte dall'Amministratore. \
Non è previsto per il prossimo sprint ma è stata considerata l'implementazione di una Action di GitHub che aggiorni i documenti presenti in repository aggiungendo i riferimenti ai termini del glossario.
