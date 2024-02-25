#import "/template.typ": *

#show: project.with(
  date: "22/02/24",
  subTitle: "Aggiornamento sullo stato dei lavori",
  docType: "verbale",
  authors: (
    "Todesco Mattia",
  ),
  externalParticipants : (
    (name: "Bassani Matteo", role: "Referente aziendale"),
  ),
  timeStart: "15:20",
  timeEnd: "16:10",
  location: "Zoom",
);

= Ordine del giorno

- Aggiornamento sullo stato dei lavori;
- Feedback su modalità e strumenti per il testing;
- Feedback sul deploy dell'applicazione;
- Presentazione bozza diagramma ER;
- Meeting futuri.

== Aggiornamento sullo stato dei lavori

Il Proponente è stato aggiornato in maniera esaustiva sull'esito del duplice colloquio di RTB sostenuto dal gruppo.
Il gruppo ha evidenziato i punti di forza del lavoro svolto finora e ha proposto soluzioni per ciò che i colloqui sostenuti hanno evidenziato essere lacunoso.

== Feedback su modalità e strumenti per il testing

Il gruppo ha esposto al Proponente le proprie considerazioni riguardanti il testing dell'applicazione. Inizialmente le tipologie di testing considerate erano:

- unit testing;
- integration testing;
- end-to-end testing.

=== unit testing

Il Proponente, seppur indicando che in azienda viene utilizzato JUnit per il processo di unit testing, non ha posto vincoli riguardo al software da adottare ed ha apprezzato la proposta del gruppo di utilizzare Jest.
Il Proponente ha poi consigliato di rendere questa modalità di testing il focus principale del gruppo, poiché ritenuta di importanza maggiore rispetto alle altre.

=== integration testing

Il Proponente ha manifestato la visione che lo sviluppo di integration testing non sia considerato un requisito obbligatorio, ribadendo che la logica di business non costituisce il fulcro principale del capitolato proposto.

Il gruppo, a seguito di questa indicazione, si impegna a prendere una decisione finale in merito durante lo svolgimento dei lavori. Si prevede un'approfondita valutazione della necessità e dei potenziali benefici legati allo sviluppo di integration testing. La decisione definitiva sarà presa in considerazione considerando l'orientamento del Proponente e valutando attentamente come questa scelta possa influire sulle fasi successive del progetto.


=== end-to-end testing

Il Proponente ha espresso interesse nei confronti della proposta, ritenendo tuttavia che lo sviluppo di questo tipo di testing non sia attualmente una priorità. Ha sottolineato la percezione di un'elevata richiesta in termini di tempo e risorse, considerandolo un'impostazione che potrebbe risultare troppo esosa nell'attuale contesto di sviluppo.

In seguito a questa valutazione da parte del Proponente, il gruppo ha preso atto della posizione e si riserva il diritto di prendere una decisione finale in merito durante lo svolgimento dei lavori. In particolare, verrà dedicato uno spazio specifico per valutare l'implementazione del software Selenium suggerito dal Proponente, con l'obiettivo di esaminare più approfonditamente i potenziali benefici e i requisiti di tempo e risorse associati. La decisione finale sarà presa considerando attentamente tutti questi fattori.

== feedback sul deploy dell'applicazione

Il Proponente ha ritenuto interessante la proposta del gruppo di implementare il processo di deploy dell'applicazione utilizzando AzureVM (oltre a Docker).
Il feedback generale ha evidenziato l'approvazione dei meccanismi di Continuous Integration e Continuous Deployment (CI/CD) implementati.
== Presentazione bozza diagramma ER

Durante la presentazione della bozza del diagramma ER relativo al database di supporto all'applicazione, il Proponente ha valutato positivamente il lavoro svolto dal gruppo e ha suggerito alcune modifiche per ottimizzare la struttura del database, prendendo in considerazione le seguenti considerazioni:

+ schema ER:
  - codice identificativo dei bin completo (non numerati semplicemente da 1 a n ma completi di tutte le informazioni necessarie);
  - ogni ripiano può avere un numero di bin diverso;
  - l'altezza dello scaffale è la somma delle altezze dei ripiani che lo compongono.

+ bin:
  - profondità fissa dipendente dalla profondità dello scaffale;
  - larghezza deve essere personalizzabile;
  - altezza fissa dipendente dal ripiano.

+ posizionamento
  - il database contiene le coordinate (x,y) dello scaffale.

Lo schema ER verrà quindi modificato e ripresentato per un'ulteriore valutazione.

== meeting futuri

Il Proponente ha confermato la sua disponibilità per proseguire gli incontri a cadenza settimanale.
Il prossimo appuntamento è fissato per giovedì 29/02/2024 alle ore 16:00.