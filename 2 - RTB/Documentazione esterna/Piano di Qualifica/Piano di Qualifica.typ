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
  showImagesIndex: false,
);

= Introduzione

== Scopo del documento
Il presente documento viene redatto con lo scopo di definire gli standard di qualità e di valutazione del prodotto. Essi saranno definiti conformemente ai requisiti e alle richieste del Proponente.
Definire la qualità di un prodotto consiste nell'attuazione di un insieme di processi che vadano a definire una base con cui misurare efficienza ed efficacia del lavoro svolto.

== Approccio al documento
Il presente documento viene redatto in modo incrementale per assicurare la coerenza delle informazioni al suo interno con gli sviluppi in corso e le esigenze evolutive del progetto. I valori identificati come accettabili per le metriche riportate possono subire variazioni con l'avanzamento dello sviluppo.

== Glossario
Il presente documento include una serie di termini tecnici specifici del progetto. Al fine di agevolarne la comprensione, si fornisce un Glossario che espliciti il significato di tali termini. I termini tecnici sono chiaramente evidenziati nel testo mediante l'aggiunta di una "G" a pedice degli stessi.

== Riferimenti
=== Normativi
- #link("2 - RTB/Documentazione interna/Norme di Progetto.pdf")[Norme di Progetto;]
- #link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")[Capitolato d'appalto.]
=== Informativi
- #link("2 - RTB/Documentazione esterna/Piano di Progetto.pdf")[Piano di Progetto;]
- #link("https://it.wikipedia.org/wiki/Indice_Gulpease")[Indice di Gulpease;]
- #link("https://it.wikipedia.org/wiki/ISO/IEC_9126")[ISO/IEC 9126.]
=== Materiale fornito dal docente
- #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T7.pdf")[Dispense T7;]
- #link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T8.pdf")[Dispense T8.]
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
    [EV-AC], [\u{2265}0], [\u{2265}-10%],
  ),
  caption: "Specifiche metrica CV"
)

- *SV (Schedule Variance)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [EV-PV], [\u{2265}0], [\u{2265}-10%],
  ),
  caption: "Specifiche metrica SV"
)

- *CPI (Cost Performance Index)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [EV/AC], [\u{2265}1], [\u{2265}0.9],
  ),
  caption: "Specifiche metrica CPI"
)

- *EAC (Estimated At Completition)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [BAC/CPI], [=BAC], [\u{2264}BAC+3%;\
                        \u{2265}BAC-3%],
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

=== Miglioramento
- *Metriche soddisfatte*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [% metriche soddisfatte], [100%], [\u{2265}80%],
  ),
  caption: "Specifiche Metriche soddisfatte"
)

= Qualità del prodotto
== Funzionalità
- *Requisiti soddisfatti*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [% requisiti obbligatori soddisfatti], [100%], [100%],
    [% requisiti desiderabili soddisfatti], [\u{2265}0%], [0%],
    [% requisiti opzionali soddisfatti], [\u{2265}0%], [0%],
  ),
  caption: "Specifiche Requisiti soddisfatti"
)

== Affidabilità
- *Densità degli errori*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [$frac("test con errori","test eseguiti")*100$], [0%], [$<=10%$],
  ),
  caption: "Specifiche Densità errori"
)
== Efficenza
- *Efficenza del sistema*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [efficenza del sistema], [TBD], [TBD],
  ),
  caption: "Specifiche Efficenza del sistema"
)
== Usabilità
- *Facilità di utilizzo*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [facilità di utilizzo del sistema], [TBD], [TBD],
  ),
  caption: "Specifiche Facilità di utilizzo"
)
== Manutenibilità
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [matutentabilità del sistema], [TBD], [TBD],
  ),
  caption: "Specifiche Manutentabilità del sistema"
) 
