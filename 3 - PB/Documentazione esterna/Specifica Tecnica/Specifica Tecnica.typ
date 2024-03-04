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