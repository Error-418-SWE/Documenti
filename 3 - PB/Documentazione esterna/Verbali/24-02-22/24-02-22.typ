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

Il Proponente è stato aggiornato sull'esito del duplice colloquio di RTB sostenuto dal gruppo.
Il gruppo ha evidenziato i punti di forza del lavoro svolto finora e presentato le soluzioni che si intendono adottare relative alle criticità emerse.

== Feedback su modalità e strumenti per il testing

Il gruppo ha esposto al Proponente le proprie considerazioni riguardanti il testing dell'applicazione. Le tipologie di testing considerate sono:

- unit testing;
- integration testing;
- end-to-end testing.

=== Unit testing

Il Proponente, seppur indicando che in azienda viene utilizzato JUnit per il processo di unit testing, non ha posto vincoli riguardo al software da adottare ed ha apprezzato la proposta del gruppo di utilizzare Jest.
Il Proponente ha poi consigliato di rendere questa modalità di testing il focus principale del gruppo, poiché ritenuta di importanza maggiore rispetto alle altre.

=== Integration testing

Il Proponente ha manifestato la visione che lo sviluppo di integration testing non sia considerato un requisito obbligatorio, ribadendo che la logica di business non costituisce il fulcro principale del capitolato proposto.

Il gruppo, a seguito di questa indicazione, si impegna a prendere una decisione finale in merito durante lo svolgimento dei lavori. Si prevede un'approfondita valutazione della necessità e dei potenziali benefici legati allo sviluppo di integration testing. La decisione definitiva sarà presa considerando l'orientamento del Proponente e valutando attentamente come questa scelta possa influire sulle fasi successive del progetto.


=== End-to-end testing

Il Proponente ha espresso interesse nei confronti della proposta, ritenendo tuttavia che lo sviluppo di questo tipo di testing non sia attualmente una priorità. Ha sottolineato l'elevato costo in termini di tempi e risorse di cui tali test possono necessitare che possono risultare critici e non adatti al contesto di un progetto didattico.

In seguito a questa valutazione da parte del Proponente, il gruppo considererà l'implementazione di questa tipologia di testing solo tempi e risorse permettendo.

== Feedback sul deploy dell'applicazione

Il Proponente ha ritenuto interessante la proposta del gruppo di implementare il processo di deploy dell'applicazione utilizzando AzureVM (insieme a Docker).
Il feedback generale ha evidenziato l'approvazione dei meccanismi di Continuous Integration e Continuous Deployment (CI/CD) implementati

== Presentazione bozza diagramma ER

Durante la presentazione della bozza del diagramma ER relativo al database di supporto all'applicazione, il Proponente ha valutato positivamente il lavoro svolto dal gruppo e ha suggerito alcune modifiche per migliorare la struttura del database, prendendo in esame le seguenti considerazioni:

+ schema ER:
  - codice identificativo dei bin completo (non numerati semplicemente da 1 a n ma completi di tutte le informazioni necessarie). Il Proponente ha inoltre fornito questo esempio:

  #align(center, `PLK-100-MGP0101A10`)

    dove:
    + PLK = Stabilimento
    + 100 = Magazzino
    + MGP = Area
    + 01 = Corsia
    + 01 = Scaffale
    + A = Colonna
    + 10 = Piano
  - ogni ripiano può avere un numero di bin diverso;
  - l'altezza dello scaffale è la somma delle altezze dei ripiani che lo compongono.

+ bin:
  - profondità fissa dipendente dalla profondità dello scaffale;
  - larghezza deve essere personalizzabile;
  - altezza fissa dipendente dal ripiano.

+ posizionamento
  - il database contiene le coordinate (x,y) di posizionamento dello scaffale all'interno dell'ambiente.

Lo schema ER verrà quindi modificato e ripresentato nel meeting successivo.

== Meeting futuri

Il Proponente ha confermato la sua disponibilità per proseguire gli incontri a cadenza settimanale.
Il prossimo appuntamento è fissato per giovedì 29/02/2024 alle ore 16:00.