#import "/template.typ": *

#show: project.with(
 title: "Specifica Tecnica",
 subTitle: "",
 authors: (
   "Todesco Mattia",
 ),
 showLog: true,
 showImagesIndex: true,
 isExternalUse: true,
);

= Introduzione

== Scopo del documento

Il presente documento ha lo scopo di illustrare e motivare le scelte architetturali effettuate dal gruppo durante le fasi di progettazione e codifica del prodotto _WMS3_.

Questo documento include i diagrammi delle classi per illustrare l'architettura e le funzionalità del prodotto, insieme alle tecnologie selezionate dal team per la realizzazione del progetto.

== Approccio al documento

Il presente documento viene redatto in modo incrementale in modo da assicurare la coerenza delle informazioni al suo interno con gli sviluppi in corso e le esigenze evolutive del progetto.

== Scopo del prodotto

Il seguente documento tratta del programma denominato _WMS3: Warehouse Management 3D_, avente come obiettivo la realizzazione di un sistema di gestione di magazzino in tre dimensioni.

Il prodotto offre le seguenti funzionalità principali:
- possibilità di creazione di un magazzino e delle sue componenti;
- visualizzazione tridimensionale del magazzino, con possibilità di muovere la vista;
- visualizzazione delle informazioni della merce presente in magazzino;
- caricamento dei dati relativi alle merci da un database SQL;
- emissione di richieste di spostamento della merce all'interno del magazzino;
- filtraggio e ricerca delle merci con rappresentazione grafica dei risultati;
- importazione di planimetrie in formato SVG.


== Glossario
#glo_paragrafo

== Riferimenti <riferimenti>

=== Riferimenti a documentazione interna <riferimenti-interni>

- Documento #glo_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

=== Riferimenti normativi <riferimenti-normativi>

- Capitolato "Warehouse Management 3D" (C5) di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)

=== Riferimenti informativi <riferimenti-informativi>

#pagebreak()

= Tecnologie

== Introduzione

== Elenco delle tecnologie


= Architettura del prodotto

== Descrizione generale

== Diagramma delle classi

== Database

#figure(
  image("ER.png", width: 100%),
  caption: [
    Schema ER del Database.
  ],
)

=== Entità

Il database è composto da 6 entità:

- *Product*: rappresenta un prodotto presente all'interno del magazzino. Composto da:

    - ID: identificativo univoco e seriale di un prodotto;
    - Name: nome del prodotto;
    - Weight: peso del prodotto;
    - Width: larghezza del prodotto;
    - Length: lunghezza del prodotto;
    - Height: altezza del prodotto.

- *Category*: rappresenta la categoria di appartenenza dei prodotti. Composto da:

    - ID: identificativo univoco e seriale di una categoria;
    - Name: nome della categoria.

- *Bin*: rappresenta uno spazio del magazzino in cui è possibile inserire un prodotto. Composto da:

    - ID: identificativo univoco e seriale di un bin.

- *Level*: rappresenta un ripiano dello scaffale. Composto da:

    - ID: identificativo univoco e seriale di un ripiano;
    - Height: altezza del ripiano;
    - Level_order: posizione nel ripiano (rispetto agli altri nello scaffale).

- *Column*: rappresenta una colonna dello scaffale. Composto da:

    - ID: identificativo univoco e seriale di una colonna;
    - Width: larghezza della colonna;
    - Column_order: posizione nella colonna (rispetto alle altre nello scaffale).

- *Zone*: rappresenta una zona del piano del magazzino. Composto da:

    - ID: identificativo univoco e seriale di una zona;
    - XCoordinate: coordinata orizzontale della zona;
    - YCoordinate: coordinata verticale della zona;
    - Length: lunghezza della zona;
    - Orientation: orientamento della zona.

=== Interrogazione del database

Il database viene utilizzato dall'applicazione per il caricamento, il posizionamento e la visualizzazione dei prodotti all'interno del magazzino.
In nessun caso il database verrà modificato dall'applicazione.


== Struttura (vari layer)

== Design pattern utilizzati


= Requisiti soddisfatti ( aggiungere tabella requisiti soddisfatti)