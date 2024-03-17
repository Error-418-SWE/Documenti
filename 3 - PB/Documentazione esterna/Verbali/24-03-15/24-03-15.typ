#import "/template.typ": *

#show: project.with(
  date: "15/03/24",
  subTitle: "Aggiornamento sullo stato dei lavori",
  docType: "verbale",
  authors: (
    "Zaccone Rosario",
  ),
  missingMembers: (
    "Oseliero Antonio",
  ),
  externalParticipants : (
    (name: "Bassani Matteo", role: "Referente aziendale"),
  ),
  timeStart: "14:05",
  timeEnd: "14:35",
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
Il Proponente è risultato soddisfatto ed entusiasta dei progressi raggiunti con l'MVP, ed ha evidenziato una buona usabilità e interfaccia grafica del software.

== Presentazione dei pattern
Sono stati presentati i principali design pattern implementati finora, ponendo particolare attenzione ai Data Mapper e ai Repository che hanno consentino una logica del software indipendente dalla struttura dei dati grezzi.

== Presentazione codice
Su richiesta del Proponente, è stato mostrato il codice del software. Si sono discussi vari dubbi e trovate soluzioni:
- si è deciso di avere un caricamento totale dei dati sin dall'inizio e non parziale: il Proponente ha approvato questa scelta, suggerendo di concentrarsi sulla realizzazione dei requisiti concordati e di considerare i problemi legati alla performance solo nel momento in cui si presentano;
- il caricamento dei dati da database avviene tramite Server Action, per sfruttare al meglio le tecnologie scelte;
- la simulazione delle API deve avvenire tramite il classico fetch, come suggerito anche dal Proponente.

== Pianificazione meeting futuri
Durante l'incontro non è stata decisa una data precisa per il prossimo meeting, che verrà stabilita in seguito tramite contatto mail.
