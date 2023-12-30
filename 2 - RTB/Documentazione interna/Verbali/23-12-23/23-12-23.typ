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
+ Analisi di retrospettiva;

== Analisi di retrospettiva

=== Keep doing
Non sono stati rilevati comportamenti virtuosi diversi da quelli dello sprint precedente. I membri del gruppo continuano a lavorare in autonomia con profitto soddisfacente.

=== Improvements
- Automatismi relativi ai ticket di Jira bloccati a causa dell'esaurimento del pool mensile incluso nel piano gratuito;
- Alcune correzioni individuate durante la review devono attendere più di una giornata per l'approvazione;
- Alcuni commenti di review sono poco chiari e/o sbrigativi;
- Il progresso sulle Norme di Progetto è scarso rispetto agli sprint precedenti ed è in ritardo rispetto alla pianificazione;
- Il tracciamento delle attività relative al PoC non ha lo stesso livello di precisione delle attività documentali.

=== Soluzioni adottate
- Richiedere l'upgrade gratuito a Jira Standard per progetti open source;
- Notificare, tramite i canali dedicati, chi debba apportare correzioni così da velocizzare i tempi di approvazione;
- Impegnarsi a fornire commenti di review più precisi:
  - indicando con precisione la natura dell'errore e, se utile, la sua localizzazione all'interno della riga;
  - fornendo una possibile correzione, quando appropriato;
  - nel caso di più occorrenze dello stesso errore, segnalarle tutte. Per evitare ripetizioni, fornire una valutazione della prima occorrenza ed inserire un riferimento a tale conversazione nelle occorrenze successive;
- Per accelerare il lavoro sulle Norme di Progetto, chi ha redatto le Norme di Progetto nel corso degli sprint precedenti continuerà l'affiancamento nel corso dello sprint successivo;
- La natura esplorativa del PoC richiede flessibilità nella pianificazione, ma si sottolinea la necessità di continuare tracciare le attività per riferimento futuro.
