#import "/template.typ": *

#show: project.with(
  date: "15/03/24",
  subTitle: "Aggiornamento sullo stato dei lavori",
  docType: "verbale",
  authors: (
    "Zaccone Rosario",
  ),
  externalParticipants : (
    (name: "Bassani Matteo", role: "Referente aziendale"),
  ),
  timeStart: "14:00",
  timeEnd: "14:40",
  location: "Zoom",
);

= Ordine del giorno
- Presentazione MVP;
- Presentazione dei pattern;
- Presentazione codice;
- Pianificazione meeting futuri.

== Presentazione MVP
Sono state presentate al Proponente le funzionalità implementate finora nell'MVP, quali:
- configurazione iniziale dell'ambiente;
- importazione da database di zone, bin e prodotti;
- lista delle zone presenti;
- lista dei prodotti presenti;
- ispezione dei prodotti, bin e zone;
- creazione di una zona;
- lista degli ordini di movimentazione;
- risincronizzazione;
- reimpostazione.
Il Proponente è risultato soddisfatto ed entusiasta dei progressi raggiunti con l'MVP, ed ha evidenziato