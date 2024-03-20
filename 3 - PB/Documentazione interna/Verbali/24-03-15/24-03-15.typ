#import "/template.typ": *

#show: project.with(
  date: "15/03/24",
  subTitle: "Meeting post colloquio con il Proponente",
  docType: "verbale",
  authors: (
    "Zaccone Rosario",
  ),
  missingMembers: (
    "Oseliero Antonio",
  ),
  timeStart: "14:35",
  timeEnd: "15:05",
  location: "Zoom",
);

= Ordine del giorno
A seguito dell'incontro con il Proponente, il gruppo ha svolto un meeting interno riguardante:

- Considerazioni scaturite dal meeting esterno;
- Pianificazione.

== Considerazioni scaturite dal meeting esterno

Il gruppo si ritiene soddisfatto dell'incontro svolto, in quanto:
- il Proponente ha apprezzato le scelte seguite per la realizzazione dell'interfaccia grafica, evidenziando come sul mercato i software simili a quello implementato dal gruppo abbiano un'interfaccia non molto curata nei dettagli e poco user-friendly. L'MVP finora presenta una UI molto accattivante;
- il Proponente si è mostrato entusiasta riguardo il raggiungimento di una buona parte dei requisiti dichiarati nell'#adr\;
- per la prima volta si è presentata l'occasione di mostrare il codice scritto finora, che il Proponente ha apprezzato.

== Pianificazione
Le task scaturite dall'esito di questo meeting riguardano:
+ proseguimento dei lavori nella repository WMS3 riguardanti:
  - implementazione della funzionalità di piazzare le zone nello spazio sulla base di uno degli SVG forniti dal Proponente;
  - rigenerazione dei dati del database per mantenere coerenza con le ultime scelte prese dal gruppo;
  - aggiornamento del tipo dell'attributo `id` nella tabella `Bin` del database.
