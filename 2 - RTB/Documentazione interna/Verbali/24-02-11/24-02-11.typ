#import "/template.typ": *

#show: project.with(
  date: "11/02/24",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Oseliero Antonio",
  ),
  timeStart: "15:00",
  timeEnd: "16:15",
);

= Ordine del giorno
- Valutazione del progresso generale;
- Analisi di retrospettiva;
- Seconda parte RTB con il #vardanega;
- Pianificazione.

== Valutazione del progresso generale

Il meeting si avvia con con l'analisi dello sprint concluso. Nonostante si trattasse del primo sprint a seguito della sessione degli esami, la ripresa dei lavori è stata rapida (warm start), grazie anche alla scelta di non interrompere i lavori negli sprint precedenti ma di ridimensionare il carico di lavoro per far fronte agli impegni universitari. Il corretto andamento dello sprint è supportato anche dalle metriche esposte sul cruscotto di qualità realizzato in Grafana.

=== Revisione #ndp

Sono stati revisionati la maggior parte dei capitoli del documento, anche se il lavoro non è ancora del tutto ultimato.\
Rimangono le task relative a:
- Rimuovere capitolo Processi di supporto/Documentazione (capitolo obsoleto non conforme allo standard ISO adottato);
- Revisione ultimi capitoli rimasti.


=== Revisione #adr

Il gruppo si è impegnato a risolvere tutte le criticità riscontrate dal #cardin durante la prima parte di revisione RTB, precisamente la valutazione è stata:
- Il glossario va riferito anche con il numero di versione del documento;
- UC2: quali sono le informazioni che possono essere modificate?
- UC3.1: quali sono i dati necessari alla creazione dello scaffale?
- UC3.2: cosa può essere modificato di uno scaffale?
- UC4.1: quali sono i dati necessari alla creazione di un bin?
- UC4.2: cosa può essere modificato di un bin?
- UC6: il database è interno all'applicazione o è possibile collegarsi a database esterni? Se siì, quali? Se invece è interno, allora il database non può essere un attore secondario (in ogni caso, la primitiva grafica scelta non esiste in UML 2);
- UC6.1 è precondizione di UC6, non sua inclusione;
- UC6.1 cosa si intende con "configurazione"? Quali informazioni?
- UC7: cosa sono le API? Se sono API interne, allora non possono essere attore secondario. Inoltre, perché la funzionalità è una "richiesta"?
- UC8 e seguenti: modificare "interrogazione" con "visualizzazione". Quali informazioni sono visualizzate?
- UC11 va analizzato più in dettaglio. I requisiti di qualità mancano della creazione dei manuali richiesti;
- VM1 e VM2 sono funzionali;
- VM3 non è chiaro e quindi non verificabile;
- Non è presente il tracciamento casi d'uso / requisiti.

Il documento abbozza una struttura corretta, ma il livello di analisi raggiunto è spesso poco dettagliato e lacunoso. Inoltre, sono presenti alcuni errori di modellazione.


Tutti queste criticità sono state corrette durante lo sprint appena concluso e il documento è ora pronto per essere revisionato prima dell'ingresso in PB.

=== Revisione #pdp e #pdq

Il lavoro sul #pdp segue dal big bang attuato durante gli sprint precedenti e viene concluso. Vengono inoltre redatti:
- preventivo sprint 12;
- preventivo sprint 13;
- consuntivo sprint 13;
- preventivo sprint 14.
segue un generale refactoring del documento.

Il #pdq invece è stato esteso e aggiornato con le metriche del periodo e la loro analisi. Vengono inoltre inseriti i grafici generati con Grafana.

=== Candidatura seconda parte RTB

Il gruppo ha concordato l'invio della mail per sostenere la seconda parte della revisione esterna RTB con il #vardanega in data 14/02/2024.

== Analisi di retrospettiva

=== Keep doing

In merito al successo dello sprint 14 ha contribuito un'efficace pianificazione delle task e il rispetto della modalità di lavoro asincrona.

=== Improvements  

Basso utilizzo di Miro per i meeting di retrospettiva, segnalare anche piccole criticità contribuisce al continuo miglioramento del gruppo.

Ritardi nelle correzioni delle pr, se un solo verificatore non risulta sufficiente a causa di un numero consistente di pull request aperte, il gruppo si impegnerà a scegliere un ulteriore membro che, in qualità di verificatore provvederà alle review. Tale soluzione permette inoltre di ridimensionare il numero di branch aperti e ridurre conseguentemente la probabilità di merge conflict.

Struttura dei verbali non sempre conforme,richiesta maggiore attenzione nella struttra dei verbali da parte dei redattori e dei revisori.

== Seconda parte RTB con #vardanega

Il gruppo di comune accordo ha deciso di inviare al #vardanega la mail di candidatura per la seconda parte della revisione RTB mercoledì 14/02/24. Il Responsabile ha il compito di redigere la mail e inviarla.


Viene inoltre pianificata una riunione a seguito della risposta del professore per creare le slide della presentazione e stilare un discorso ripartendo i vari argomenti tra i membri del gruppo.

== Pianificazione sprint

Per lo sprint 15 sono stati programmati i seguenti compiti:

- completare le ultime task necessarie per la candidatura;

- inviare la mail per la candidatura al secondo sportello di valutazione RTB;

- definire un meeting inerente alla presentazione RTB a seguito della risposta del professore;

- discutere delle azioni da intraprendere per la parte di PB in modo da evitare la sospensione delle attività aspettando il responso del professore.

