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

- Documento #st_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Documentazione%20esterna/Specifica%20Tecnica_v" + st_vo + ".pdf")_
  #lastVisitedOn(18, 03, 2024)

=== Riferimenti normativi <riferimenti-normativi>

- Capitolato "Warehouse Management 3D" (C5) di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)

=== Riferimenti informativi <riferimenti-informativi>

#pagebreak()

= Requisiti

Di seguito sono elencate le versioni dei browser minime necessarie per l'esecuzione dell'applicazione.
Per i requisiti di sistema e hardware si rimanda al documento #st_v.

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


= Istruzioni d'uso
== Avvio e Configurazione dell'ambiente

Il software all'avvio si presenta come segue:
#figure(
  image("./imgs/avvio.png", width: 60%),
  caption: [
    Avvio del software
  ],
) <avvio>
qui vengono proposte due diverse configurazioni iniziali possibili, *Planimetria rettangolare* e *Planimetria personalizzata*. Le differenze tra le due modalità di lavoro verranno descritte nei capitoli dedicati.

Si può scegliere una modalità di lavoro selezionandola nel pannello di @avvio e premendo il pulsante *Prossimo* in basso a destra.

=== Inizializzazione Planimetria Rettangolare

#figure(
  image("./imgs/planimetria_rettangolare.png", width: 60%),
  caption: [
    Definizione parametri del piano rettangolare
  ],
) <piano_rettangolare>

Selezionata la Planimetria Rettangolare nella schermata di @avvio il sistema mostrerà la schermata mostrata in @piano_rettangolare, dove è possibile definire la lunghezza e la profondità del magazzino che vogliamo creare.

Per terminare la configurazione del piano è richiesto che i due parametri siano entrambi maggiori di 0, in caso contrario verrà impedito di procedere alla visualizzazione del piano e verrà visualizzato un errore.

Spuntando invece le checkbox "importa i prodotti dal database" il sistema, terminata la configurazione dell'ambiente, caricherà nell'apposita finestra
*Product* i prodotti presenti nel database.

Premere quindi il pulsante *Submit* per procedere alla visualizzazione dell'ambiente 3D, premere il pulsante *Indietro* per annullare la configurazione e tornare al menù mostrato in @avvio

=== Inizializzazione Planimetria Personalizzata

#figure(
  image("./imgs/planimetria_personalizzata.png", width: 50%),
  caption: [
    Definizione parametri del piano personalizzato
  ],
) <piano_personalizzato>

Selezionata la Planimetria Personalizzata nella schermata di @avvio il sistema mostrerà la schermata mostrata in @piano_personalizzato, dove è possibile caricare il file SVG che verrà disegnato sul piano e la misura del lato maggiore in modo da scalare correttamente la piantina che verrà disegnata.

Il sistema ritornerà un errore e impedirà la visualizzazione del piano nel caso in cui:
- il file SVG non venga inserito correttamente;
- il file SVG non sia valido;
- il valore associato al lato maggiore sia minore o uguale a 0.

Spuntando invece le checkbox "importa gli scaffali dal database" e "importa i prodotti dal database" il sistema userà i dati presenti nel database per creare gli scaffali e popolarli con i prodotti presenti nel database, mostrando anche i prodotti non assegnati nell'apposita finestra *Product*. In caso contrario il piano verrà mostrato completamente vuoto.

Premere quindi il pulsante *Submit* per procedere alla visualizzazione dell'ambiente 3D, premere il pulsante *Indietro* per annullare la configurazione e tornare al menù mostrato in @avvio

=== Completamento configurazione dell'ambiente

#figure(
    grid(
        columns: (auto, auto),
        rows:    (auto, auto),
        [ #image("./imgs/piano_rettangolare.png", width: 90%)],
        [ #image("./imgs/piano_personalizzato.png", width: 90%)],
    ),caption: [ Corretta configurazione del piano rettangolare (sinistra) e del piano personalizzato (destra)],
) <fine_configurazione_iniziale>


Una volta che l'ambiente è stato correttamente configurato è possibile cominciare a lavorare con il piano 3D che si presenta come rappresentato in @fine_configurazione_iniziale (in questo caso i piani rappresentati sono entrambi vuoti).

#pagebreak()

= Supporto tecnico

Per qualsiasi problema di installazione, difficoltà di utilizzo o malfunzionamento del software, è possibile contattare #err418 tramite l'indirizzo mail #link("mailto:error418swe@gmail.com"), presente anche nel frontespizio del presente documento.

Per facilitare l'individuazione della mail nella casella si consiglia di scrivere l'oggetto nel seguente modo:
#align(center, `[WMS3] Oggetto`)

Nel corpo del messaggio è importante descrivere:

- browser utilizzato, indicando, se possibile, la versione;
- elenco dettagliato delle azioni effettuate che hanno portato al problema.

Se utile a una miglior comprensione del problema è possibile allegare degli screenshot della schermata che presenta l'errore.

Per assicurare un miglior supporto tecnico, la mail inviata verrà inoltrata in automatico ad ogni membro del gruppo, in modo da avere maggiore sicurezza della sua lettura.
