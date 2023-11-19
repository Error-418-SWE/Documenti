#import "/template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Verbale 10/11/23",
  subTitle: "Meeting di retrospettiva, indicazioni per la settimana a venire",
  docType: "verbale",
  //  Nome        //Ruolo           
  partecipants: (
    (name: "Banzato Alessio", role: "Verificatore"),
    (name: "Carraro Riccardo", role: "Amministratore"),
    (name: "Gardin Giovanni",  role: "Amministratore"),
    (name: "Nardo Silvio",   role: "Redattore"),
    (name: "Oseliero Antonio",   role: "Responsabile"),
    (name: "Todesco Mattia",  role: "Analista"),
    (name: "Zaccone Rosario",  role: "Analista"),
  ),
  oraInizio: "14:00",
  oraFine: "15:00"
)

#set text(font:"New Computer Modern", size: 1.3em)
#set align(left)

= Ordine del giorno
- Retrospettiva sullo sprint terminato;
- Divisione dei ruoli e formazione sottogruppi di lavoro;
- Organizzazione attività da svolgere.


= Retrospettiva

  In questo primo meeting di retrospettiva sono state analizzate le attività svolte dal gruppo durante la settimana e, in modo particolare, sono state discusse le nuove automazioni di github action che sono state implementate (per la compilazione ed il caricamento automatico in repository e nel sito web dei file legati alla documentazione con i relativi changelog).
  \ Si è discusso del cambiamento attutato sulle tecnologie di markup per la stesura dei documenti, passando da LaTeX a Typst, strumento che risulta più comodo e immediato da usare.\
  È stato analizzato il diario di bordo che verrà esposto lunedì 13 novembre, in particolar modo riguardo le difficoltà riscontrate.\ Nel fine settimana è importante che ciascun membro del gruppo pensi ad eventuali domande da aggiungere.
  
= Divisione ruoli
  I ruoli all'interno del gruppo e le mansioni future sono state assegnate più specificatamente: \
   - Antonio è responsabile, pertanto lunedì esporrà il diario di bordo;
   - Alessio è verificatore;
   - Silvio, Giovanni e Riccardo sono amministratori;
   - Mattia e Rosario sono analisti.

  Il gruppo è stato inoltre suddiviso in tre sottogruppi: \

   - tre membri del gruppo si impegneranno per implementare ulteriormente le automazioni e sistemare il repository;
   - due membri del gruppo si concentreranno sull'analisi dei requisiti;
   - due membri del gruppo miglioreranno la nostra analisi delle ore/ruoli in luce del giudizio del professor Vardanega il quale ha ritenuto il costo del progetto eccessivo.

    

= To do
  - Il giorno 8 novembre è stata inviata un'email al proponente dove esponavamo alcuni nostri dubbi ma, non avendo ricevuto risposta, abbiamo pianificato di inviarla nuovamente lunedì.
  - Il lavoro relativo all'analisi dei requisiti dovrà proseguire cosicché, la prossima settimana, potremo chiedere al professor Cardin consiglio e delucidazioni sulla direzione da noi data al lavoro.
  - In vista della futura costruzione del PoC dobbiamo soffermarci sul capire quali features dovranno essere implementate e iniziare a studiare e provare con mano le tecnologie relative, per esempio sarà utilizzato Three.js quindi va compreso il suo utilizzo.


