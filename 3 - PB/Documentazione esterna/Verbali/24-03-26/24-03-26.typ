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
Sono state presentate al Proponente le diverse funzionalità implementate nel MVP atte a rispettare i requisiti espressi nel documento #adr_v. La lista dei requisiti soddisfatti è presente nel documento #st, disponibile al seguente link: #align(left,link("https://error418swe.netlify.app/pb/documentazione-esterna/specifica-tecnica/")), nella sezione "Requisiti soddisfatti".

Oltre alle funzionalità già presentate nei precedenti meeting, sono state aggiunte:

- posizionamento nei bin di prodotti non collocati;
- posizionamento delle zone nel piano agevolata mediante una grid attivabile;
- posizionamento automatico della visuale su una zona specificata;
- movimento della visuale tramite tastiera durante lo spostamento di una zona o prodotto.

Il Proponente è risultato soddisfatto di quanto presentato e ha confermato il corretto soddisfacimento di tutti i requisiti derivati dal capitolato emersi durante lo sviluppo del progetto, sia minimi che desiderabili.

Inoltre è stata apprezzata l'attenzione data all'usabilità del prodotto.


Il Proponente riconosce il prodotto software del gruppo #err418 come MVP.

== Pianificazione incontri futuri

A seguito del meeting odierno, gli incontri periodici sono da considerarsi conclusi e il Proponente ha espresso la sua disponibilità per futuri aggiornamenti sul progetto e ad eventuali attività legate alla Customer Acceptance.
