#import "/template.typ": *

#show: project.with(
  title: "Piano di Qualifica",
  subTitle: "Metriche, qualità e valutazione",
  authors: (
    "Todesco Mattia",
    "Oseliero Antonio",
  ),
  showLog: true,
  isExternalUse: true,
  showImagesIndex: false,
);

= Introduzione

== Scopo del documento
Il presente documento viene redatto con lo scopo di definire gli standard di qualità e di valutazione del prodotto. Essi saranno definiti conformemente ai requisiti e alle richieste del Proponente.
Definire la qualità di un prodotto consiste nell'attuazione di un insieme di processi che vadano a definire una base con cui misurare efficienza ed efficacia del lavoro svolto.

== Approccio al documento
Il presente documento viene redatto in modo incrementale per assicurare la coerenza delle informazioni al suo interno con gli sviluppi in corso e le esigenze evolutive del progetto. I valori identificati come accettabili per le metriche riportate possono subire variazioni con l'avanzamento dello sviluppo.

== Glossario
Il presente documento include una serie di termini tecnici specifici del progetto. Al fine di agevolarne la comprensione, si fornisce un Glossario che espliciti il significato di tali termini. I termini tecnici sono chiaramente evidenziati nel testo mediante l'aggiunta di una "_G_" a pedice degli stessi.

== Riferimenti
=== Normativi
- Norme di Progetto:\
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/2%20-%20RTB/Documentazione%20interna")_ ;
- Capitolato d'appalto: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_ .
=== Informativi
- Piano di Progetto:\
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/2%20-%20RTB/Documentazione%20esterna")_ ;
- Indice di Gulpease:\
  _#link("https://it.wikipedia.org/wiki/Indice_Gulpease")_ ;
- ISO/IEC 9126:\
  _#link("https://it.wikipedia.org/wiki/ISO/IEC_9126")_ .
=== Materiale fornito dal docente
- Dispense T7 (Qualità del software):\
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T7.pdf")_ ;
- Dispense T8 (Qualità di processo):\
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T8.pdf")_ .
\
= Qualità di processo

== Processi primari
=== Fornitura
==== *BAC (Budget at Completion)* 
Definito nel documento Piano di Progetto v2.0.0 con valore di € 13.055,00.
==== *PV (Planned Value)*
La metrica PV rappresenta il valore pianificato, indicante il costo preventivato per portare a termine le attività pianificate nello sprint. Per il calcolo del valore pianificato si considera la sommatoria delle ore preventivate per il costo del ruolo necessario al loro svolgimento, secondo quanto definito nel documento Piano di Progetto v2.0.0.
\
Dati: \
- $"r in R = {Responsabile, Amministratore, Analista, Progettista, Programmatore, Verificatore}"$
- $"OR"_r$: Ore ruolo;
- $"CR"_r$: Costo ruolo.

#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$sum_(r in R) "OR"_r * "CR"_r$), align(center+horizon,$>"0"$), align(center+horizon,$>"0"$),
  ),
  caption: "Specifiche metrica PV"
)

La metrica risulta un indice necessario a determinare il valore atteso del lavoro svolto in un determinato sprint. Il suo valore strettaemente maggiore di 0 indica che non sono contemplati periodi di inattività.

==== *AC (Actual Cost)*
La metrica AC rappresenta la somma dei costi sostenuti dal gruppo in un determinato periodo di tempo. Tale metrica viene calcolata sia in riferimento all'intero progetto, sia come consuntivo dello sprint:
- *SAC*: Sprint Actual Cost, costo effettivo sostenuto dal gruppo in un determinato sprint;
- *PAC*: Project Actual Cost, costo effettivo sostenuto dal gruppo dall'inizio del progetto, definito come sommatoria dei SAC.

#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Somma dei costi sostenuti], [$<="PV"$], [$"+10% PV"$],
  ),
  caption: "Specifiche metrica SAC"
)

#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Somma dei costi sostenuti], [$<="BAC"$], [$<="BAC"$],
  ),
  caption: "Specifiche metrica PAC"
)


==== *EV (Earned Value)*
L'Earned Value rappresenta il valore guadagnato dal progetto in un determinato periodo di tempo. Tale metrica viene calcolata sia in riferimento all'intero progetto, sia come valore guadagnato nello sprint:
- *SEV*: Sprint Earned Value, valore guadagnato dal progetto in un determinato sprint, dove lo stato di completamento del lavoro è espresso mediante il rapporto tra gli story points completati e quelli pianificati per lo sprint;
- *PEV*: Project Earned Value, valore guadagnato dal progetto dal suo inizio, definito come sommatoria dei SEV.
*Calcolo del SEV*
- *SPC*: Story Points Completati;
- *SPP*: Story Points Pianificati.

#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display("SPC"/"SPP")*"SPV"$), align(center+horizon, $="SPV"$), align(center+horizon, $>="80% del SPV"$),
  ),
  caption: "Specifiche metrica SEV"
)

*Calcolo del PEV*
- $"dato s in S, con S insieme degli sprint svolti"$
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon, $sum_(s in S)"SEV"$), align(center+horizon, $>=0$), align(center+horizon, $<="BAC"$),
  ),
  caption: "Specifiche metrica PEV"
)

\

==== *CPI (Cost Performance Index)*
Il CPI rappresenta l'indice di performance del costo, ovvero il rapporto tra il valore guadagnato e il costo effettivo sostenuto. Tale metrica viene calcolata in riferimento al valore totale raggiunto del progetto (*PEV*) in proporzione al costo effettivo sostenuto (*PAC*).

#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display("PEV"/"PAC")$), align(center+horizon,$>=1$), align(center+horizon,$>=0.8$),
  ),
  caption: "Specifiche metrica CPI"
)

Un rapporto maggiore di 1 indica che il valore raggiunto è superiore al costo effettivo sostenuto. Data la natura didattica del progetto e l'inesperienza del gruppo, si ritiene accettabile un valore di CPI $>= 0.8$, valore indicante un costo effettivo leggermente superiore al valore guadagnato.

==== *EAC (Estimated At Completion)*
L'EAC rappresenta il costo stimato al termine del progetto. Tale metrica viene calcolata in riferimento al budget totale del progetto (*BAC*) in proporzione all'indice di performance del costo (*CPI*).
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display("BAC"/"CPI")$), align(center+horizon,$<="BAC"$),
    align(center+horizon,$<="BAC"$),
  ),
  caption: "Specifiche metrica EAC"
)

Il valore del BAC non può essere maggiore rispetto a quanto espresso in candidatura, pertanto gli unici valori accettbili (e ottimali) sono stime a ribasso rispetto al BAC.

== Processi di supporto
=== Documentazione

- *Errori ortografici*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Numero di errori ortografici presenti nel testo], [0], [0],
  ),
  caption: "Specifiche Errori Ortografici"
)

// === Verifica
// - *Code coverage*
// #figure(
//   table(
//     columns: 3,
//     rows: 30pt,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     align(center+horizon,$display(frac("Righe di codice testate","Righe di codice totali"))*100$), align(center+horizon,"0"), align(center+horizon,"0"),
//   ),
//   caption: "Specifiche Code coverage"
// )

=== Miglioramento
- *Metriche soddisfatte*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [% metriche soddisfatte], [100%], [$>=80%$],
  ),
  caption: "Specifiche Metriche soddisfatte"
)

// = Qualità del prodotto
// == Funzionalità
// - *Requisiti soddisfatti*
// #figure(
//   table(
//     columns: 3,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [% requisiti obbligatori soddisfatti], [100%], [100%],
//     [% requisiti desiderabili soddisfatti], [$>=0%$], [0%],
//     [% requisiti opzionali soddisfatti], [$>=0%$], [0%],
//   ),
//   caption: "Specifiche Requisiti soddisfatti"
// )

// == Affidabilità
// - *Densità degli errori*
// #figure(
//   table(
//     columns: 3,
//     rows: 30pt,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     align(center+horizon,$display(frac("Test con errori","Test eseguiti"))*100$), align(center+horizon,"0%"), align(center+horizon,$<=10%$),
//   ),
//   caption: "Specifiche Densità errori"
// )
// == Efficienza
// - *Efficienza del sistema*
// #figure(
//   table(
//     columns: 3,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [Efficienza del sistema], [TBD], [TBD],
//   ),
//   caption: "Specifiche Efficienza del sistema"
// )
// == Usabilità
// - *Facilità di utilizzo*
// #figure(
//   table(
//     columns: 3,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [Facilità di utilizzo del sistema], [TBD], [TBD],
//   ),
//   caption: "Specifiche Facilità di utilizzo"
// )
// == Manutenibilità
// #figure(
//   table(
//     columns: 3,
//     fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
//     [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
//     [Manutenibilità del sistema], [TBD], [TBD],
//   ),
//   caption: "Specifiche Manutenibilità del sistema"
// )
