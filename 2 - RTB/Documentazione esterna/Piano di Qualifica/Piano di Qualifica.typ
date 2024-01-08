#import "/template.typ": *

#show: project.with(
  title:"Piano di Qualifica",
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
==== Parametri
- *BAC (Budget at Completion)*: come definito nel documento Piano di Progetto ha un valore di € 13.370,00.
==== Metriche
- *AC (Actual Cost)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Somma dei costi tracciati dal gruppo], [$<="BAC"$], [$<="BAC"$],
  ),
  caption: "Specifiche metrica AC"
)

- *PV (Planned Value)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [$"% completamento del progetto pianificata"*"BAC"$], [$<="BAC"$], [$<="BAC"$],
  ),
  caption: "Specifiche metrica PV"
)

- *EV (Earned Value)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [$"% stato di completamento del progetto"*"BAC"$], [$>=0$], [$<="BAC"$],
  ),
  caption: "Specifiche metrica EV"
)

- *CV (Cost Variance)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [$"EV"-"AC"$], [$>=0$], [$>=-10%$],
  ),
  caption: "Specifiche metrica CV"
)

- *SV (Schedule Variance)*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [$"EV"-"PV"$], [$>=0$], [$>=-10%$],
  ),
  caption: "Specifiche metrica SV"
)

- *CPI (Cost Performance Index)*
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display("EV"/"AC")$), align(center+horizon,$>=1$), align(center+horizon,$>=0.8$),
  ),
  caption: "Specifiche metrica CPI"
)

- *EAC (Estimated At Completion)*
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

- *ETC (Estimated To Completion)*
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display("BAC-EV"/"CPI")$), align(center+horizon,$<="EAC"$), align(center+horizon,$<="EAC"$),
  ),
  caption: "Specifiche metrica ETC"
)

== Processi di supporto
=== Documentazione
- *Indice di Gulpease*
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$89+display((300*(F)-10*(L))/P)$), align(center+horizon,"80%"), align(center+horizon,$>=60%$),
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
    [Numero di errori ortografici presenti nel testo], [0], [0],
  ),
  caption: "Specifiche Errori Ortografici"
)

=== Verifica
- *Code coverage*
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display(frac("Righe di codice testate","Righe di codice totali"))*100$), align(center+horizon,"0"), align(center+horizon,"0"),
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
    [% metriche soddisfatte], [100%], [$>=80%$],
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
    [% requisiti desiderabili soddisfatti], [$>=0%$], [0%],
    [% requisiti opzionali soddisfatti], [$>=0%$], [0%],
  ),
  caption: "Specifiche Requisiti soddisfatti"
)

== Affidabilità
- *Densità degli errori*
#figure(
  table(
    columns: 3,
    rows: 30pt,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    align(center+horizon,$display(frac("Test con errori","Test eseguiti"))*100$), align(center+horizon,"0%"), align(center+horizon,$<=10%$),
  ),
  caption: "Specifiche Densità errori"
)
== Efficienza
- *Efficienza del sistema*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Efficienza del sistema], [TBD], [TBD],
  ),
  caption: "Specifiche Efficienza del sistema"
)
== Usabilità
- *Facilità di utilizzo*
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Facilità di utilizzo del sistema], [TBD], [TBD],
  ),
  caption: "Specifiche Facilità di utilizzo"
)
== Manutenibilità
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Calcolo della metrica*],[*Valore ottimale*],[*Valore accettabile*],
    [Manutenibilità del sistema], [TBD], [TBD],
  ),
  caption: "Specifiche Manutenibilità del sistema"
) 
