
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
- analisi Keep doings e Improvements;
- to do e divisione ruoli.

== Analisi Keep doings e Improvements
$bold("Keep doings:")$
- ugualmente allo scorso sprint il gruppo ha raggiunto un soddisfacente grado di familiarità con le tecnologie e le ripartizioni dei lavori;
- avendo deciso, in seguito ai problemi riscontrati nello scorso sprint, porre ai lavori scadenze infrasettimanali, le task sono state completate continuativamente, evitando sovraccarichi durante il fine settimana.

$bold("Improvements:")$
- a causa di imprevisti tecnici, si sono verificati casi di insufficiente comunicazione tra i membri del gruppo creando il cosiddetto "effetto sottomarino" producendo rallentamenti dei lavori;
- lo stato di avanzamento del documento Norme di Progetto è indietro rispetto al livello atteso dato il periodo.


$bold("Relativamente agli improvements le relative soluzioni accordate sono:")$
- impegnarsi, in caso di imprevisti, a comunicare tempestivamente agli altri membri del gruppo gli eventuali ritardi previsti nei lavori;
- nella pianificazione del prossimo sprint verranno assegnati più membri del gruppo alla stesura del documento Norme di Progetto.


== To do e divisione ruoli
- i progettisti e il responsabile lavoreranno nella stesura del documento Norme di Progetto aggiungendo almeno cinque nuovi capitoli;
- il membro del gruppo tra quelli assegnati a lavorare sulle Norme di Progetto che farà un solo capitolo, si dovrà impegnare a studiare le tecnologie relative all'interfaccia utente (Angular, React, Next.js) per capire quale è più adatta al nostro progetto;
- due membri lavoreranno ai PoC: il programmatore si impegnerà nell'integrazione dei PoC minori in un singolo PoC principale, mentre il verificatore proseguirà lo sviluppo del lato frontend dell'applicativo;
- l'analista continuerà a redarre il documento di Analisi dei Requisiti migliorando quanto fatto e completando la tabella dei requisiti;
- l'amministratore dovrà: 
  - redigere i verbali;
  - modificare il documento Piano di Progetto aggiungendo il preventivo del settimo sprint, il consuntivo del quinto sprint e sistemando eventuali errori presenti nel documento;
  - migliorare le GitHub Action risolvendo gli errori presenti legati al versionamento dei file e alla  modifica del changelog.
