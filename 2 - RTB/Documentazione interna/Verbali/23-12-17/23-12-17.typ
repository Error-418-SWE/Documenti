#import "/template.typ": *

#show: project.with(
  date: "17/12/23",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),
  timeStart: "15:00",
  timeEnd: "16:00",
);

= Ordine del giorno
- Analisi Keep doings e Improvements;
- To do e divisione ruoli.

== Analisi Keep doings e Improvements

=== Keep doings
- Ugualmente allo scorso sprint il gruppo ha raggiunto un soddisfacente grado di familiarità con le tecnologie e le ripartizioni dei lavori;
- Avendo deciso, in seguito ai problemi riscontrati nello scorso sprint, di porre ai lavori scadenze infrasettimanali, le task sono state completate con maggiore costanza, evitando sovraccarichi durante il fine settimana.

=== Improvements
- A causa di imprevisti tecnici, si sono verificati casi di insufficiente comunicazione tra i membri del gruppo creando il cosiddetto "effetto sottomarino" e producendo rallentamenti dei lavori;
- Lo stato di avanzamento del documento Norme di Progetto sta procedendo più lentamente rispetto al livello atteso.


=== Soluzioni accordate relativamente agli improvements
- Impegnarsi, in caso di imprevisti, a comunicare tempestivamente agli altri membri del gruppo gli eventuali ritardi previsti nei lavori;
- Nella pianificazione del prossimo sprint verranno assegnati più membri del gruppo alla stesura del documento Norme di Progetto.


== To do e divisione ruoli
- I Progettisti e il Responsabile lavoreranno alla stesura del documento Norme di Progetto aggiungendo almeno cinque nuovi capitoli;
- Il membro del gruppo tra quelli assegnati a lavorare sulle Norme di Progetto che farà un solo capitolo, si dovrà impegnare a studiare le tecnologie relative all'interfaccia utente (Angular, React, Next.js) per capire quale è più adatta al nostro progetto;
- Due membri lavoreranno ai PoC: il Programmatore si impegnerà nell'integrazione dei PoC minori in un singolo PoC principale, mentre il membro del gruppo assegnato al ruolo di Verificatore proseguirà, come Programmatore, con lo sviluppo del lato frontend dell'applicativo;
- L'Analista continuerà a redigere il documento di Analisi dei Requisiti migliorando quanto fatto e completando la tabella dei requisiti;
- L'Amministratore dovrà:
  - redigere i verbali;
  - modificare il documento Piano di Progetto aggiungendo il preventivo del settimo sprint, il consuntivo del quinto sprint e sistemando eventuali errori presenti nel documento;
  - Migliorare le GitHub Action risolvendo gli errori legati al versionamento dei file e all'aggiornamento del changelog.
