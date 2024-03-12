#import "/template.typ": *

#show: project.with(
 title: "Manuale Utente",
 authors: (
   "Todesco Mattia",
 ),
 showLog: true,
 showImagesIndex: true,
 isExternalUse: true,
);

= Introduzione

== Scopo del documento

Il presente documento ha lo scopo di illustrare le funzionalità del prodotto denominato _WMS3: Warehouse Management 3D_ e di fornire istruzioni dettagliate per il suo corretto utilizzo.

Leggendo questo documento, l'utente acquisirà familiarità con i requisiti minimi necessari per l'operatività dell'applicazione e le migliori pratiche per un utilizzo ottimale.

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

= Requisiti

== Requisiti di sistema minimi

== Requisiti di sistema consigliati

== Requisiti hardware

== Browser


= Installazione

== Scaricare il progetto

Ci sono due modalità tramite cui è possibile scaricare il progetto: la prima, e più consigliata, è eseguire il download del progetto in formato zip o tar.gz dalla pagina

#align(center, link("https://github.com/Error-418-SWE/WMS3/releases"))

In alternativa, se nel dispositivo è presente Git, si può clonare il repository con il comando

#align(center, `git clone git@github.com:Error-418-SWE/WMS3.git`)

oppure

#align(center, `git clone https://github.com/Error-418-SWE/WMS3.git`)

== Avviare la web app

Requisito essenziale per avviare l'applicazione è avere installato localmente Docker (#link("https://docs.docker.com/")) e Docker Compose (#link("https://docs.docker.com/compose/")).

Per avviare la web app è necessario spostarsi all'interno della cartella scaricata in precedenza ed eseguire il comando

#align(center, `docker compose up -d`)

Questo avvierà i container Docker che formano il prodotto, il quale sarà poi visualizzabile e utilizzabile all'indirizzo

#align(center, link("http://localhost:3000/"))

== Terminare l'esecuzione

Chiudere la finestra browser non terminerà completamente l'esecuzione dell'applicazione, in quanto Docker Compose continuerà ad eseguire in background. La terminazione completa si effettua con il comando

#align(center, `docker compose down`)

= Istruzioni d'uso


= Supporto tecnico
  ( contattare la mail del gruppo per malfunzionamenti ecc... paragrafo piccolo magari con suggerimento su come scrivere la mail: -oggetto "nome evento" -corpo -allegato)
