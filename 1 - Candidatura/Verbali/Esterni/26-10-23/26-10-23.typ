ERROR\_418 \
Verbale 26/10/23

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
  [Inizio Meeting: 18:00 Fine Meeting: 18:20 Durata:20min],
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
  [20min],
  [],
  [Alessio],
  [20min],
  [Riccardo],
  [20min],
  [],
  [Giovanni],
  [20min],
  [Rosario],
  [/],
  [],
  [Silvio],
  [20min],
  [Mattia],
  [20min],
  [],
  [SanMarco Informatica],
  [20min],
)]
)

]
= Domande riguardanti il capitolato con SanMarco Informatica
<domande-riguardanti-il-capitolato-con-sanmarco-informatica>
Dopo esserci presentati abbiamo chiesto maggiorni informazioni
all’azienda SanMarco Informatica riguardo a dubbi che avevamo sul
capitolato C5: Warehouse management 3D. Abbiamo chiarito che:

- quando si parla di notifiche di trasferimento si intende chiamate REST
  API

- i bin sono aree generiche dove mettere i materiali \(nel pavimento,
  sui mezzi,sugli scaffali,...)

- uno scaffale può avere bin di diverse dimensioni. Gli scaffali sono
  divisi in ripiani e i ripiani in bin. In uno stesso scaffale possono
  coesistere bin di dimensioni diverse \(su ripiani diversi). I bin
  hanno dimensioni costanti.

- controllare se una merce è compatibile con un bin \(per posizione o
  per merci limitrofe) è una feature interessante ma non richiesta dal
  capitolato

- dobbiamo gestire un database relazionale il quale dovrà essere
  precaricato nel programma, il quale non ha memoria quindi non modifica
  il database e se la pagina viene ricaricata, il programma riparte
  dallo stato di partenza

- le tecnologie consigliate per la gestione del database sono:
  PostgreSQL, MariaDB e SQL Server

- poter creare, modificare e spostare scaffali manualmente è una feature
  utile ma non è richiesto che lo stato del magazzino venga salvato in
  memoria quindi si tratta di funzionalità supplementari

= Altri argomenti affrontati
<altri-argomenti-affrontati>
- abbiamo concordato con l’azienda la frequenza dei meeting: almeno una
  volta al mese ma se si ritiene utile si possono richiedere altri
  incontri. L’azienda si è inoltre resa disponibile per la ricezione di
  qualsiasi email ritenessimo necessaria

- In fine ci è stato chiesto il motivo che ci ha spinto a sceglere il
  loro capitolato e, in maniera unanime, abbiamo concordato che lavorare
  con il 3D è molto stimolante e interessante anche a livello lavorativo
  per la sua ampia l’utilità
