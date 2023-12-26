#import "/template.typ": *

#show: project.with(
  title:"Piano di Qualifica",
  subTitle: "",
  authors: (
    "Todesco Mattia",
  ),
  reviewers:(
    "Nardo Silvio",
  ),

  showIndex: true,
  showLog: true,
  isExternalUse: true,
);

= Introduzione

== Scopo del documento
Il presente documento viene redatto con lo scopo di definire gli standard di qualità e di valutazione del prodotto. Essi saranno definiti conformemente ai requisiti e alle richieste del Proponente.
Definire la qualità di un prodotto consiste nell'attuazione di un insieme di processi che vadano a definire una base con cui misurare efficienza ed efficacia del lavoro svolto.

== Approccio al documento
Il presente documento viene redatto in modo incrementale per assicurare la coerenza delle informazioni al suo interno con gli sviluppi in corso e le esigenze evolutive del progetto.

== Glossario
Il presente documento include una serie di termini tecnici specifici del progetto. Al fine di agevolarne la comprensione, si fornisce un Glossario che espliciti il significato di tali termini. I termini tecnici sono chiaramente evidenziati nel testo mediante l'aggiunta di una "G" a pedice degli stessi.

== Riferimenti
In questo documento si fa riferimento allo standard: 

= Qualità di processo

== Processi primari

=== Fornitura
==== Parametri
- *BAC (Budget at Completion)*: come definito nel documento Piano di Progetto ha un valore di € 13.370,00.
==== Metriche
- *AC (Actual Cost)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [somma dei costi tracciati dal gruppo], [\u{2264}BAC], [\u{2264}BAC],
  ),
  caption: "Specifiche metrica AC"
)

- *PV (Planned Value)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [% di completamento del progetto pianificata\u{2217}BAC], [\u{2264}BAC], [\u{2264}BAC],
  ),
  caption: "Specifiche metrica PV"
)

- *EV (Earned Value)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [% dell'effettivo stato di completamento del progetto\u{2217}BAC], [\u{2265}0], [\u{2264}BAC],
  ),
  caption: "Specifiche metrica EV"
)

- *CV (Cost Variance)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [EV-AC], [\u{2265}0], [\u{2265}TBD],
  ),
  caption: "Specifiche metrica CV"
)

- *SV (Schedule Variance)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [EV-PV], [\u{2265}0], [\u{2265}TBD],
  ),
  caption: "Specifiche metrica SV"
)

- *CPI (Cost Performance Index)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [EV/AC], [\u{2265}TBD], [\u{2265}TBD],
  ),
  caption: "Specifiche metrica CPI"
)

- *EAC (Estimated At Completition)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [BAC/CPI], [=BAC], [TBD],
  ),
  caption: "Specifiche metrica EAC"
)

- *ETC (Estimated To Completition)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [(BAC-EV)/CPI], [\u{2265}0%], [\u{2264}EAC],
  ),
  caption: "Specifiche metrica ETC"
)

== Processi di supporto
=== Documentazione
==== Metriche
- *Indice di Gulpease*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [$89+(300*(F)-10*(L))/P$], [100%], [\u{2265}60%],
  ),
  caption: "Specifiche Indice di Gulpease"
)
-- F=numero di frasi nel testo;
-- L=numero di lettere nel testo;
-- P=numero di parole nel testo.

- Errori ortografici
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [numero di errori ortografici presenti nel testo], [0], [0],
  ),
  caption: "Specifiche Errori Ortografici"
)

=== Verifica
==== Metriche
- *Code coverage*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [(Righe di codice testate/Righe di codice totali)\u{2217}100], [0], [0],
  ),
  caption: "Specifiche Code coverage"
)

// = Qualità del prodotto da compilare dopo l'RTB?