#import "/template.typ": *

#show: project.with(
  date: "23/12/23",
  subTitle: "Meeting di retrospettiva e pianificazione",
  docType: "verbale",
  authors: (
    "Gardin Giovanni",
  ),
  missingMembers: (
    "Banzato Alessio",
  ),
  timeStart: "15:00",
  timeEnd: "16:45",
);

= Ordine del giorno:
+ Valutazione dell'avanzamento;
+ Analisi di retrospettiva;
+ Confronto sull'implementazione delle Norme di Progetto;
+ Pianificazione.

== Valutazione dell'avanzamento
In vista delle festività natalizie si riassumono gli avanzamenti riportati dai membri del gruppo e sostanziati dall'ITS.

=== Analisi dei Requisiti
È assente il tracciamento tra requisiti e fonti dei requisiti. Occorre migliorare la resa grafica dei diagrammi UML.

=== Glossario <avanzamento-glossario>
L'evidenziazione dei termini nei documenti è migliorabile rendendola _case insensitive_ e introducendo la possibilità di gestire acronimi e plurali dei termini di Glossario.

=== Norme di Progetto
Il documento è in scrittura. L'avanzamento, come espresso in @improvements, non è soddisfacente.

=== Piano di Progetto
Consuntivi e preventivi sono conformi. Non sono state rilevate criticità.

=== Piano di Qualifica
Il documento è in scrittura. Sono state identificate alcune metriche di base.

=== PoC
L'integrazione dei PoC realizzati procede senza ritardi. Si sta valutando la realizzazione delle API con Next.js anziché Express.

== Analisi di retrospettiva

=== Keep doing
Non sono stati rilevati comportamenti virtuosi diversi da quelli dello sprint precedente. I membri del gruppo continuano a lavorare in autonomia con profitto soddisfacente.

=== Improvements <improvements>
- Automatismi relativi ai ticket di Jira bloccati a causa dell'esaurimento del pool mensile incluso nel piano gratuito;
- Alcune correzioni individuate durante la review devono attendere più di una giornata per l'approvazione;
- Alcuni commenti di review sono poco chiari e/o sbrigativi;
- Il progresso sulle Norme di Progetto è scarso rispetto agli sprint precedenti ed è in ritardo rispetto alla pianificazione;
- Il tracciamento delle attività relative al PoC non ha lo stesso livello di precisione delle attività documentali.

=== Soluzioni adottate <soluzioni>
- Richiedere l'upgrade gratuito a Jira Standard per progetti open source;
- Notificare, tramite i canali dedicati, chi debba apportare correzioni così da velocizzare i tempi di approvazione;
- Impegnarsi a fornire commenti di review più precisi:
  - indicando con precisione la natura dell'errore e, se utile, la sua localizzazione all'interno della riga;
  - fornendo una possibile correzione, quando appropriato;
  - nel caso di più occorrenze dello stesso errore, segnalarle tutte. Per evitare ripetizioni, fornire una valutazione della prima occorrenza ed inserire un riferimento a tale conversazione nelle occorrenze successive;
- Per accelerare il lavoro sulle Norme di Progetto, chi ha redatto le Norme di Progetto nel corso degli sprint precedenti continuerà l'affiancamento nel corso dello sprint successivo;
- La natura esplorativa del PoC richiede flessibilità nella pianificazione, ma si sottolinea la necessità di continuare tracciare le attività per riferimento futuro.

== Pianificazione
- Redazione delle Norme di Progetto, recuperando i capitoli in ritardo ed espandendone altri (totale di 7 capitoli, tra aggiunte e aggiornamenti);
- Proseguimento dello sviluppo del PoC;
- Tracciamento requsiti-fonti e rifacimento dei diagrammi UML in formato SVG;
- Miglioramento del Glossario come descritto in @avanzamento-glossario;
- Realizzazione di un sito web che raccolga i documenti realizzati finora;
- Realizzazione di una dashboard per il monitoraggio delle metriche definite nel Piano di Qualifica.

Lo sprint successivo ha durata inferiore all'usuale perché le attività sono sospese nelle giornate del 24 e 25 dicembre.