#import "template.typ": *

#show: project.with(
  title:"Piano di progetto",
  subTitle: "Pianificazione, analisi e retrospettive",
  docType: "doc",
  partecipants: (
  (name: "Banzato Alessio", role: "Verificatore"),
  (name: "Carraro Riccardo", role: "Redattore"),
  (name: "Gardin Giovanni",  role: "Redattore"),
  (name: "Nardo Silvio",   role: "Verificatore"),
  (name: "Oseliero Antonio",   role: "Responsabile"),
  (name: "Todesco Mattia",  role: "Verificatore"),
  (name: "Zaccone Rosario",  role: "Amministratore"),
  ),
  showIndex: true,
  showLog: true
);
#set text(font:"New Computer Modern")
#set align(left)
#show "link": word => text[#text(fill:blue, word)]

= Introduzione
Il documento _Piano di progetto_ ha il compito di governare la pianificazione dell'avanzamento del progetto, determinando task e obiettivi da raggiungere e presentando un'analisi critica del lavoro fino a quel momento svolto. L'intento è rendicontare e valutare criticamente l'operato compiuto per  migliorarlo, ove necessario, e gestire in modo efficace ed efficiente le risorse.

Il documento si articola in 5 sezioni:
- *Rischi e loro mitigazione*: dedicata all'analisi dei rischi che possono insorgere con relativi sistemi di mitigazione;
- *Divisione temporale di sviluppo*: dedicata all'analisi della suddivisione temporale dello sviluppo del progetto;
- *Preventivo dei costi di realizzazione*: dedicata all'analisi preventiva dei costi di realizzazione di progetto;
- *Pianificazione del lavoro*: dedicata alla pianificazione delle attività da svolgere nei periodi di sprint;
- *Consuntivo del progetto*: dedicata all'analisi retrospettiva del lavoro svolto, indicando criticità ed eventuali azioni intraprese a fini migliorativi.
\
== Glossario
Al fine di rendere quanto più chiaro possibile il contenuto dei documenti, e per evitare qualsiasi forma di ambiguità in merito ai termini utilizzati, il gruppo _Error\_418_ fornisce come risorsa web liberamente consultabile, un _*Glossario*_. Ogni ricorrenza di termini tecnici appartenenti al dominio del progetto sarà denotata dalla lettera _g_ al pedice.
\
\
== Riferimenti esterni
=== Norme
- Regolamento di progetto \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_

- Gestione di progetto \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T4.pdf")_

- I processi di ciclo di vita del software \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T2.pdf")_

=== Capitolato
- Capitolato C5: WMS3: Warehouse management 3D \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_