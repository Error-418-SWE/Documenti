#import "/template.typ": *

#show: project.with(
  date: "07/03/24",
  subTitle: "Meeting post colloquio con Proponente",
  docType: "verbale",
  authors: (
    "Banzato Alessio",
  ),
  timeStart: "16:40",
  timeEnd: "17:00",
);

= Ordine del giorno

A seguito dell'incontro con il Proponente, il gruppo ha svolto un meeting interno riguardante:

- Considerazioni scaturite dal meeting esterno;
- Pianificazione.

== Considerazioni scaturite dal meeting esterno

Il gruppo si ritiene soddisfatto dell'incontro svolto, in quanto:

- è stato confermato lo schema ER aggiornato;
- è stato chiarito il meccanismo di scaling della planimetria da implementare;
- il Proponente ha chiarito quando è necessario chiamare le API RESTful per lo spostamento dei prodotti;
- i primi avanzamenti del MVP sono stati accolti positivamente dal Proponente.

== Pianificazione

Il gruppo ha fatto il punto sulla situazione dello sprint in corso, segnalando un andamento positivo riguardo la documentazione e l'implementazione del prodotto.

Sono sorti alcuni dubbi riguardo la gestione della Customer Acceptance (CA), revisione non obbligatoria svolgibile successivamente alla PB, e sono stati inseriti nella presentazione del Diario di Bordo che si terrà in data 08/03/2024.

Le task scaturite dall'esito di questo meeting riguardano:

+ proseguimento della revisione dell'#adr\;
+ proseguimento dei lavori nella repository WMS3 riguardanti:
  - popolamento del database di supporto;
  - implementazione della UI;
  - risoluzione di bug riguardo la visualizzazione della planimetria.
