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

Di seguito sono elencati i requisiti minimi necessari per l'esecuzione dell'applicazione, comprese le caratteristiche necessarie per configurare l'ambiente di sviluppo del progetto.

== Requisiti di sistema minimi

#figure(
  table(
    columns: 3,
    [*Componente*], [*Versione*], [*Riferimenti*],

    [Docker],[$>=$ 24.0.7],[https://docs.docker.com/],
    [Docker-compose],[$>=$ 2.23.3],[https://docs.docker.com/compose/],

  ),
  caption: "Requisiti di sistema minimi"
)

== Requisiti hardware

#figure(
  table(
    columns: 2,
    [*Componente*], [*Requisito minimo*],

    [Processore],[Processore a 64 bit con SLAT (Second Level Address Translation)],
    [Memoria RAM],[4GB DDR4],
    [Spazio su disco], [$>=$ 20 GB],

  ),
  caption: "Requisiti hardware"
)

== Browser

#figure(
  table(
    columns: 2,
    [*Browser*], [*Versione*],

    [Google Chrome],[$>=$ 89],
    [Microsoft Edge],[$>=$ 89],
    [Mozilla Firefox],[$>=$ 16.4],
    [Apple Safari],[$>=$ 108],
    [Opera Browser],[$>=$ 76],
    [Google Chrome per Android],[$>=$ 89],
    [Apple Safari per iOS],[$>=$ 17.1],
    [Samsung Internet],[$>=$ 23],
  ),
  caption: "Browser supportati"
)


= Installazione

== Scaricare il progetto

Ci sono due modalità tramite cui è possibile scaricare il progetto: la prima, e più consigliata, è eseguire il download del progetto in formato zip o tar.gz dalla pagina

#align(center, link("https://github.com/Error-418-SWE/WMS3/releases"))

In alternativa, se nel dispositivo è presente Git, si può clonare il repository con il comando

#align(center, `git clone git@github.com:Error-418-SWE/WMS3.git`)

oppure

#align(center, `git clone https://github.com/Error-418-SWE/WMS3.git`)

== Avviare la web app

Per avviare la web app è necessario spostarsi all'interno della cartella scaricata in precedenza ed eseguire il comando

#align(center, `docker compose up -d`)

Questo avvierà i container Docker che formano il prodotto, il quale sarà poi visualizzabile e utilizzabile all'indirizzo

#align(center, link("http://localhost:3000/"))

== Terminare l'esecuzione

Chiudere la finestra browser non terminerà completamente l'esecuzione dell'applicazione, in quanto Docker Compose continuerà ad eseguire in background. La terminazione completa si effettua con il comando

#align(center, `docker compose down`)

= Istruzioni d'uso


= Supporto tecnico

Per qualsiasi problema di installazione, difficoltà di utilizzo o malfunzionamento del software, è possibile contattare #err418 tramite l'indirizzo mail #link("mailto:error418swe@gmail.com"), presente anche nel frontespizio del presente documento.

Per facilitare l'individuazione della mail nella casella si consiglia di scrivere l'oggetto nel seguente modo:
#align(center, `[WMS3] Oggetto`)

Nel corpo del messaggio è importante descrivere:

- browser utilizzato, indicando, se possibile, la versione;
- elenco dettagliato delle azioni effettuate che hanno portato al problema.

Se utile a una miglior comprensione del problema è possibile allegare degli screenshot della schermata che presenta l'errore.

Per assicurare un miglior supporto tecnico, la mail inviata verrà inoltrata in automatico ad ogni membro del gruppo, in modo da avere maggiore sicurezza della sua lettura.
