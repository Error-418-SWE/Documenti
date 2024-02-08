ERROR\_418 \
Verbale 29/10/23

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
  [Inizio Meeting: 15:00 Fine Meeting: 16:30 Durata: 1:30h],
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
  [Nome], [Durata Presenza], [], [], [],
  [Antonio],
  [1:30h],
  [],
  [],
  [],
  [Alessio],
  [1:30h],
  [],
  [],
  [],
  [Rosario],
  [1:30h],
  [],
  [],
  [],
  [Giovanni],
  [1:30h],
  [],
  [],
  [],
)]
)

]
Ordine del giorno:

- panoramica dei comandi base di git;

- panoramica delle funzioni di collaborazione di GitHub;

- discussione sulle strategie di branching da adottare.

= git e Github
<git-e-github>
Si è effettuata una panoramica sui comandi git di base come init, add,
push, pull, status, branch, checkout e sulle funzioni di pull request di
GitHub.

= Strategie di branching
<strategie-di-branching>
Si sono confrontante due strategie di branching:

- #strong[main-feature];: un ramo mainline e feature branch atomici e
  indipendenti;

- #strong[main-dev-feature];: un ramo mainline, un ramo di sviluppo e
  feature branch atomici e indipendenti.

Dalla discussione è emerso che la strategia 1 è da preferirsi per
progetti rilasciati in modalità rolling, senza versionamento. Tuttavia,
poiché il dominio d’applicazione del capitolato è on-premise, appare più
adatto un approccio con versionamento \(strategia 2). Inoltre, il
proponente potrebbe avere la necessità di fornire versioni del software
diverse. Per concludere, lo stack tecnologico che sarà verosimilmente
adottato avrà numerose dipendenze verso librerie esterne, che dovranno
essere congelate prima del rilascio. \
Per questi motivi, si è scelto di approcciare lo sviluppo seguendo la
strategia 2. Non si tratta comunque di una scelta vincolante perché sarà
sempre possibile commutare la strategia. \
Si sottolinea comunque l’enorme importanza di progettare feature
piccole, ben delineate e atomiche.
