#import "/template.typ": *

#show: project.with(
  date: "06/03/24",
  subTitle: "Meeting post colloquio con Committente",
  docType: "verbale",
  authors: (
    "Zaccone Rosario",
  ),
  missingMembers: (
    "Banzato Alessio",
  ),
  timeStart: "09:00",
  timeEnd: "10:00",
);

= Ordine del giorno
A seguito dell'incontro con il #cardin, il gruppo ha svolto un meeting interno riguardante:

- Considerazioni scaturite dal colloquio con il #cardin\;
- Pianificazione.

== Considerazioni scaturite dal colloquio con il #cardin
Il gruppo ha discusso i diversi argomenti trattati con il #cardin durante il meeting.
=== Database
Il gruppo ha deciso di scegliere la linea di progettazione che vede il database come parte del capitolato, e in particolare come data layer del software. Come suggerito dal #cardin l'accesso avviene tramite backend anziché tramite browser visti i potenziali problemi di sicurezza che questo comporterebbe.\
La scelta è stata conseguita in seguito ai consigli del #cardin, che ha anche portato l'esempio del pattern CQRS come caso di design dove un database viene usato per sola lettura, come nel caso di WMS3. Il gruppo sceglie però di non implementare questo pattern, dato che nel suo schema è presente una parte dedicata alla scrittura dei dati che non è oggetto del capitolato.
=== Classi anemiche
Il gruppo ha deciso di proseguire con l'implementazione di classi che rappresentano le istanze del database.
Il dubbio sull'implementarle o meno, poiché quest'ultime sono prive di comportamento specifico e risultano un semplice aggregato di attributi, è stato risolto grazie all'intervento del #cardin, che nel meeting ha spiegato al gruppo il significato di questo tipo di classi, chiamate _anemiche_, e ha asserito che la loro implementazione è sensata, poiché il raggruppamento di dati correlati in una classe aiuta ad avere una struttura più pulita ed un'organizzazione più flessibile.
=== Business Logic
Il gruppo ha discusso sull'effettiva presenza della business logic in seguito al feedback ricevuto dal #cardin. Questa è stata individuata principalmente nella parte che interroga l’API REST esterna e negli oggetti che rappresentano le istanze del database.\
Si è discusso il modo in cui gli oggetti della business logic devono essere convertiti in oggetti della presentation logic, e si è posta la norma di non utilizzare gli oggetti ritornati dalle API direttamente nella webapp.\
In seguito alle osservazioni del #cardin, si è deciso di implementare due diverse applicazioni, una per il backend e una per il frontend, entrambe con architettura a strati.
=== Design Pattern
Il gruppo, su consiglio del #cardin, decide di inserire design pattern solo se ritenuti necessari, anche perché la loro implementazione porta ad overhead. I pattern ad ora individuati sono:
+ middleware: per separare frontend da backend;
+ provider: tipico in React per passare variabili tra Componenti per evitare Prop Drilling.
=== Valutazione #adr
Il gruppo decide di proseguire con l'approfondimento dell'#adr, e si fissa come data massima di consegna per la rivalutazione la PB.


== Pianificazione

#let table-json(data) = {
  let keys = data.at(0).keys()
  table(
    align: left,
    columns: keys.len(),
    ..keys,
    ..data.map(
      row => keys.map(
        key => row.at(key, default: [n/a])
      )
    ).flatten()
  )
}
#figure(caption: [Task pianificate in seguito al colloquio con il #cardin.],
  table-json(json("tasks.json"))
)
