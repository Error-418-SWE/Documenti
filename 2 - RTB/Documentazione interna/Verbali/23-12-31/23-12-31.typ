#import "/template.typ": *

#show: project.with(
  date: "31/12/23",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  missingMembers: (
    "Gardin Giovanni",
  ),
  timeStart: "15:00",
  timeEnd: "16:00",
);

= Ordine del giorno
- Valutazione dell'avanzamento;
- Analisi di retrospettiva;
- Pianificazione.

== Valutazione dell'avanzamento
Ogni membro del gruppo ha esposto ciò che ha svolto durante lo sprint rispetto al prodotto software o documentale che aveva in carico.

=== Piano di Qualifica
- Sono state individuate delle metriche di base riguardanti i documenti e l'andamento generale del team;
- È stato creato un cruscotto di qualità su Grafana per monitorare l'andamento del gruppo tramite misurazione degli story points, i quali vengono classificati in quattro stati:
  + in corso;
  + in verifica;
  + completato;
  + da completare.

=== Norme di Progetto
Non sono stati prodotti tutti i capitoli preventivati anche a causa di un prevedibile rallentamento dei lavori discusso nella @improvements.

=== Analisi dei Requisiti
È stato implementato il tracciamento requisito-fonte. È necessaria una revisione generale del documento.

=== Piano di Progetto
Non sono state rilevate criticità, la stesura del documento procede senza problemi.

=== PoC
È stato realizzato il PoC finale. Dato il cambio di ruoli è stato programmato un meeting interno per spiegare nel dettaglio il PoC e il suo funzionamento ai nuovi Programmatori. Sarà inoltre necessario realizzare un video demo da mostrare al Proponente.

=== Automazioni
Non sono stati apportati importanti cambiamenti. Sono ancora presenti dei bug, in particolare il numero di versione nei documenti continua a rimanere lo stesso.

== Analisi di retrospettiva
=== Keep doing
Nonostante il periodo di feste, i membri del gruppo sono riusciti a riprendere i lavori in autonomia senza particolari problemi.

=== Improvements <improvements>
È stato notato un rallentamento dei lavori e una concentrazione degli stessi nel weekend, ovviamente causato dal periodo di feste. Questo rallentamento non viene visto, però, come un vero e proprio aspetto da migliorare dato che era già stato preso in considerazione.

Si prevede comunque un ritorno alla normale attività per il prossimo sprint, anche in vista dell'apertura della finestra per la revisione RTB.

== Pianificazione
- Viene fissato un meeting in data martedì 2 gennaio per:
  - selezionare, tra i capitoli non ancora redatti delle Norme di Progetto, quelli necessari alla revisione RTB, in modo da proseguire la stesura del documento il più rapidamente possibile;
  - illustrare la struttura e il funzionamento del PoC ai nuovi Programmatori.
- Si continua la stesura delle Norme di Progetto con i capitoli selezionati durante il meeting;
- L'Analista si occuperà della revisione completa del documento Analisi dei Requisiti;
- Si continua la stesura del Piano di Qualifica lavorando sulle metriche individuate e sull'implementazione di una dashboard per la loro visualizzazione grafica;
- L'Amministratore dovrà: 
  - redigere i verbali;
  - modificare il documento Piano di Progetto aggiungendo il preventivo del nono sprint e il consuntivo dell'ottavo sprint;
  - migliorare le GitHub Action risolvendo gli errori legati al versionamento dei file.
- Si dovrà realizzare un video demo da mostrare al Proponente per ricevere dei feedback sul PoC realizzato.