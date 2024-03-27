#import "/template.typ": *

#show: project.with(
  date: "26/03/24",
  subTitle: "Dimostrazione e convalida MVP",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),

  externalParticipants : (
    (name: "Bassani Matteo", role: "Referente aziendale"),
  ),

  timeStart: "15:00",
  timeEnd: "15:30",
  location: "Zoom",
);

= Ordine del giorno
- Presentazione MVP;
- Pianificazione incontri futuri.

== Presentazione MVP
Sono state presentate al Proponente le diverse funzionalità implementate nell'MVP atte a rispettare i requisiti espressi nel documento #st_v, disponibile al link: #align(left,link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Documentazione%20esterna/Specifica%20Tecnica_v" + st_vo + ".pdf")) nella sezione "Requisiti soddisfatti".

Oltre alle funzionalità già presentate nei precedenti meeting, sono state aggiunte:

- posizionamento nei bin di prodotti non collocati;
- posizionamento delle zone nel piano agevolata mediante una grid attivabile;
- posizionamento automatico della visuale su una zona specificata;
- movimento della visuale tramite tastiera durante lo spostamento di una zona o prodotto.

Il Proponente è risultato soddisfatto di quanto presentato e ha confermato il corretto soddisfacimento di tutti i requisiti derivati dal capitolato emersi durante lo sviluppo del progetto, sia riguardanti i requisiti minimi che desiderabili.

Inoltre è stata apprezzata l'attenzione data all'usabilità del prodotto.

\
_Il Proponente riconosce il prodotto software del gruppo Error_418 come MVP del capitolato_

== Pianificazione incontri futuri

A seguito del meeting odierno, gli incontri periodici sono da considerarsi conclusi e il Proponente ha espresso la sua disponibilità per futuri aggiornamenti sul progetto e ad eventuali attività legate alla Customer Acceptance.
