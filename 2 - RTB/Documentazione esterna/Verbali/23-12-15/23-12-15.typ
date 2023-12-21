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
Sono stati esposti i progressi sui PoC rispetto al precedente meeting esterno e sono sorte discussioni relativamente a:
- Analisi dei Requisiti;
- tecnologie da utilizzare e utilizzate;
- feature dei PoC;
- meeting futuri.

== Considerazioni sull'Analisi dei Requisiti
Sono stati discussi i requisiti non funzionali identificati.
Non sono stati identificati particolari vincoli sulle performance.

=== Vincoli sui browser 
Per adottare le tecnologie da noi individuate, in particolar modo per la libreria Three.js, è necessario che i browser interessati dispongano di una versione specifica atta a supportare tale tecnologia mediante la componente grafica WebGL. Tale osservazione ha trovato conferma da parte del proponente, il quale ha approvato l'implementazione dell'applicativo per i principali browswer:
- Chrome;
- Firefox;
- Edge.

Durante il meeting è stato individuato il numero di versione 89 come soglia minima di compatibilità di Chrome mentre i numeri di versione dei rimanenti browser e di WebGL sono stati individuati dal gruppo e riportati nel documento di Analisi dei Requisiti.

\
Desiderabilmente è prevista la compatibilità dell'applicativo con i browser sopracitati versione mobile.

=== Dispositivi utilizzati dall'utente  
L'applicazione sarà ottimizzata per l'esecuzione su comuni PC desktop, tipicamente utilizzati negli ambienti d'ufficio, garantendo al contempo la compatibilità con dispositivi tablet.

== Considerazioni su tecnologie da utilizzare e utilizzate
Durante il meeting sono state discusse ulteriormente le tecnologie impiegate e in programma per una futura implementazione, in particolare è stato approvato da parte del Proponente l'utilizzo di:
- Docker Compose;
- Next.js;
- Express;
- PostgreSQL (al posto di mySQL, tecnologia inizialmente individuata).

== Considerazioni su feature del PoC
Relativamente ai PoC da realizzare in futuro e alla luce delle conoscenze acquisite, sono emerse con il Proponente le seguenti considerazioni:

- è importante precaricare dal database una parte dei dati delle merci così da poter mostrare a schermo informazioni di base, per esempio quali sono i bin occupati. Le restanti informazioni delle singole merci potranno essere reperite mediante un'interrogazione al database on demand;
- è verosimile che il piano inferiore degli scaffali coincida con il pavimento dell'area di lavoro;
- è corretto che i bin all'interno degli scaffali vengano generati automaticamente alla creazione dello scaffale date le dimensioni dello stesso;
- è desiderabile poter creare scaffali contenenti piani di altezze diverse;
- in assenza delle API che verranno fornite dal Proponente, le loro interrogazioni possono essere simulate con risposte randomiche.


== Organizzazione meeting futuri   
A causa delle festività natalizie non sono previsti ulteriori incontri per l'anno 2023. Il prossimo incontro è previsto per gli inizi del mese di gennaio quando lo stato dei lavori sarà prossimo al raggiungimento della milestone RTB del progetto.

