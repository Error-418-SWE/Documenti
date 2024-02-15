ERROR\_418 \
Verbale 18/10/23

#figure(
align(center)[#table(
  columns: 2,
  align: (col, row) => (left,left,).at(col),
  inset: 6pt,
  [Mail:],
  [error418swe\@gmail.com],
  [Redattori:],
  [Antonio Oseliero, Alessio Banzato],
  [Verificatori:],
  [Riccardo Carraro, Giovanni Gardin, Rosario Zaccone],
  [Amministratori:],
  [Silvio Nardo, Mattia Todesco],
  [Destinatari:],
  [T. Vardanega, R. Cardin],
)]
)

#figure(
align(center)[#table(
  columns: 2,
  align: (col, row) => (center,center,).at(col),
  inset: 6pt,
  [Inizio Meeting: 15:00 Fine Meeting: 16:00 Durata:1:00h],
  [],
  [Presenze:],
  [],
)]
)

#block[
#figure(
align(center)[#table(
  columns: 5,
  align: (col, row) => (center,center,center,center,center,).at(col),
  inset: 6pt,
  [Nome], [Durata Presenza], [], [Nome], [Durata Presenza],
  [Antonio],
  [1:00h],
  [],
  [Alessio],
  [1:00h],
  [Riccardo],
  [1:00h],
  [],
  [Giovanni],
  [1:00h],
  [Rosario],
  [1:00h],
  [],
  [Silvio],
  [1:00h],
  [Mattia],
  [1:00h],
  [],
  [],
  [],
)]
)

]
Ordine del giorno:

- Discussione capitolati;

- Discussione proposte per nomi e loghi.

= Capitolati
<capitolati>
Si sono scelti, in ordine di preferenza: C9, C5, C3. La tabella di
coordinamento è stato aggiornata di conseguenza.

== C3
<c3>
Valutazione iniziale: capitolato molto lungo e ricco di richieste.
Domande al proponente:

- Ancora da formulare.

== C3
<c3-1>
Valutazione iniziale: il capitolato richiede l’implementazione di un
numero limitato di feature. La difficoltà principale individuata è la
gestione del 3D. \
Domande al proponente:

- Chiarimenti in merito alla figura dell’amministratore;

- Controllo del movimento di veicoli all’interno del magazzino
  \(controllo della congestione);

- Chiarimenti in merito all’obiettivo minimo 3: \
  Possibilità di selezionare un prodotto \(oggetto all’interno della
  scaffalatura) e richiederne lo spostamento in un’altra area \(altra
  scaffalatura o la stessa);

- Domanda in merito alla necessità di Hardware necessario alla
  modellazione 3D ed eventuale fornitura da parte dell’azienda.

== C9
<c9>
Valutazione iniziale: il capitolato richiede una forte comprensione del
\"prompt engineering\" al fine di generare mediante un modello un prompt
ad-hoc per chat-GPT \(o altri modelli), con obiettivo finale
l’interrogazione di una base di dati. \
Domande al proponente:

- Fornitura di Hardware necessario al training e alla creazione del
  modello;

- Come creare i prompt intermedi.

= Coordinamento
<coordinamento>
== E-mail
<e-mail>
Mail/Riflettore per il gruppo creata e impostato l’inoltro automatico
delle mail da quelle del gruppo alle mail individuali.

== Repository
<repository>
Creata l’organizzazione GitHub e aggiunti tutti i membri.

== Risoluzioni
<risoluzioni>
Confermare l’inoltro automatico nella propria casella di posta
\@studenti.unipd.it. \
Giovanni contatta i proponenti C5 e C9 per esporre le domande proposte.
\
Antonio si occupa di impostare le pipeline per la creazione dei
documenti. \
Fissare meeting il prima possibile non appena ricevuta risposta dai
proponenti. \
Darsi delle regole per il WoW su commit, gestione PR, CI e strumenti
adottati.
