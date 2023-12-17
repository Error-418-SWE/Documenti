#import "/template.typ": *

#show: project.with(
  date: "15/12/23",
  subTitle: "",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),
  externalParticipants : (
    (name: "Alberton Michela", role: "Membro azienda proponente"),
    (name: "Bassani Matteo", role: "Referente aziendale"),
    (name: "Ruffin Filippo", role: "Membro azienda proponente"),
  ), 
  timeStart: "12:00",
  timeEnd: "12:30",
);

= Ordine del giorno
Ai referenti aziendali sono stati esposti gli avanzamenti svolti sui PoC rispetto al precedente meeting esterno e sono sorte discussioni relativamente a:
- Analisi dei Requisiti;
- tecnologie da utilizzare e utilizzate;
- feature dei PoC;
- meeting futuri.

== Considerazioni sull'Analisi dei Requisiti
Non sono stati identificati particolari vincoli sulle performance.

=== Vincoli sui browser 
È richiesta la compatibilità dell'applicazione almeno con i browser:
- Chrome (da versione 89);
- Firefox;
- Edge.

Inoltre sono approvati ma non richiesti l'utilizzo di WebGL e la compatibilità dell'applicativo con i browser sopracitati versione mobile.

=== Dispositivi utilizzati dall'utente  
I dispositivi su cui sarà eseguita l'applicazione sono normali PC Desktop verosimilmente presenti in uffici ed eventualmente dispositivi tablet.

== Considerazioni su tecnologie da utilizzare e utilizzate
Durante il meeting sono state discusse ulteriormente le tecnologie impiegate e in programma per una futura implementazione, in particolare è stato approvato da parte del proponente l'utilizzo di:
- Docker;
- Next.js;
- Express;
- PostgreSQL.

== Considerazioni su feature del PoC
Relativamente ai PoC da realizzare in fututro e alla luce delle conoscenze acquisite, sono emerse con il proponente le seguenti considerazioni:

- è importante precaricare dal database una parte dei dati delle merci così da poter mostrare a schermo informazioni di base, per esempio quali sono i bin occupati. Le restanti informazioni delle singole merci necessiteranno di un'interrogazione al database on demand;
- il piano inferiore degli scaffali è verosimile che coincida con il pavimento dell'area di lavoro;
- è corretto che i bin all'interno degli scaffali vengano generati automaticamente alla creazione dello scaffale date le dimensioni dello stesso;
- non è richiesto ma è desiderabile poter creare scaffali contenenti piani di altezze diverse;
- in assenza delle API che verranno fornite dal Proponente, le loro interrogazioni possono essere simulate con risposte randomiche.


== Organizzazione meeting futuri   
A causa delle festività natalizie questo è stato l'ultimo meeting esterno previsto per l'anno 2023. Il prossimo incontro è previsto per gli inizi del mese di gennaio quando lo stato dei lavori sarà prossimo alla valutazione della fase RTB del progetto.

