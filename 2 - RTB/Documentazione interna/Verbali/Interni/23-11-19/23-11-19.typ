#import "/template.typ": *

//change title
#show: project.with(
  date: "19/11/23",
  docType: "verbale",
  authors: (
    "Oseliero Antonio",
  ),
  timeStart: "15:00",
  timeEnd: "17:00",
);

= Ordine del giorno
- retrospettiva del precedente sprint;
- discussione stato di avanzamento;
- pianificazione sprint 3.

== Retrospettiva sprint 2
Il gruppo si riunisce per discutere il lavoro svolto durante la settimana della sprint 2, ogni sottogruppo ha offerto una panoramica di ciò che è stato svolto e con che modalità. \
Non sono stati riscontrati particolari problemi ma è stata portata all'attenzione il fatto che durante le interviste al proponente non tutti i membri del gruppo interagiscono o interagiscono poco a differenza di pochi altri che intervengono maggiormente. \u{C8} stato quindi deciso che i membri del gruppo che hanno interagito meno si impegneranno maggiormente durante queste occasioni a interagine con l'azienda. \
Un altro problema riscontrato è stata la lentezza in alcuni casi dell'approvazione delle PR da parte dei verificatori dato che oltre al controllo grammaticale, lessicale e sintattico si aggiungevano le verifiche di correttezza dell'output delle github action ancora parzialmente in fase di sviluppo e testing. Questo problema verrà risolto quando le automazioni saranno completate e pienamente convalidate.

== Discussione stato di avanzamento
Si è passato quindi a discutere dello stato di avanzamento, si è notato un netto miglioramento del ritmo e ora che il gruppo comincia a prendere confidenza con gli strumenti è aumentato anche il lavoro individuale (mentre prima si potevano avere problemi con automazioni o con nuovi strumenti e quindi bisognava consultare un altro membro del gruppo che aiutasse nella risoluzione del problema allungando i tempi).

= Azioni da intraprendere
- ultimare le automazioni;
- ultimare il template dei documenti;
- continuare il lavoro sui documenti "Norme di Progetto" e "Analisi dei Requisiti" e "Piano di Progetto";
- mandare il reminder all'azienda per l'incontro programmato per giovedì 23/11/23;
- attuare il cambiamento dei ruoli, causa rotazione bisettimanale.
