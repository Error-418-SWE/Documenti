#import "/template.typ": *

#show: project.with(
  date: "07/12/23",
  subTitle: "Discussione conseguente ad incontro con il professor Cardin",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),
  timeStart: "16:00",
  timeEnd: "16:40",
);

= Ordine del giorno
A seguito di un dialogo che il gruppo ha avuto con il professor Cardin in data 07/12/23, sono stati discussi i seguenti argomenti:

- requisiti non funzionali;
- raggruppamento degli Use Case;
- quali sono i criteri che definiscono un'Analisi dei Requisiti ben fatta.

== Requisiti non funzionali
=== Specificare le versioni
È stata sottolineata l'importanza di specificare, nei requisiti non funzionali, i numeri di versione specifici dei componenti tecnologici con cui l'applicativo dovrà interfacciarsi, in particolare:
- le versioni dei sistemi operativi che supportano l'applicativo;
- le versioni dei software di gestione del database con il quale verrà interfacciato l'applicativo;
- le versioni dei browser che supportano l'applicativo.

=== Requisiti di qualità
Altri requisiti non funzionali da includere sono relativi alla qualità e a come l'applicativo debba rispettare determinate norme prestabilite. 

=== Requisiti prestazionali
È necessario analizzare e definire con particolare attenzione i requisiti non funzionali relativi alle prestazioni, in quanto serve descrivere minuziosamente il contesto che permetta di replicare il requisito (velocità della rete, cardinalità delle operazioni, ecc.) per poter poi imporre dei vincoli prestazionali su tale contesto.

=== Requisito relativo all'utilizzo di alfabeti non latini
Diversamente da quanto ipotizzato inizialmente, il requisito riguardante la possibilità di utilizzare alfabeti non latini è un requisito funzionale in quanto rappresenta una vera e propria feature che determina il comportamento del programma.

== Raggruppamento degli Use Case
La suddivisione degli Use Case è da svolgere in funzione alla loro leggibilità e utilità, perciò si ritiene più ragionevole suddividere gli Use Case relativi alla modifica dell'ambiente di lavoro in:
- modifica scaffale;
- modifica ambiente;
- modifica bin.

E successivamente, per ciascuno di questi, si può, in base alle esigenze, estenderli con i relativi Use Case legati a:
- creazione; 
- ridimensionamento;
- spostamento;
- eliminazione. 

== Criteri che definiscono un'Analisi dei Requisiti ben fatta
Le caratteristiche di un'Analisi dei Requisiti ottimale sono:
- sintassi dei diagrammi UML corretta rispetto allo standard;
- requisiti atomici;
- requisiti deterministici;
- requisiti non ambigui;
- requisiti non troppo generici;
- chiaro tracciamento del rapporto tra Use Case e requisiti e viceversa.

= To do
In luce di quanto concordato durante il meeting, le prossime attività da svolgere sono:
- dividere gli Use Case troppo grandi, in particolare quello relativo alla modifica dell'ambiente di lavoro;
- modificare i requisiti non funzionali sviluppandoli ulteriormente;
- aggiornare i diagrammi UML in funzione delle nuove modifiche agli Use Case.


