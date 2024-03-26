#import "/template.typ": *

#show: project.with(
 title: "Manuale Utente",
 authors: (
   "Nardo Silvio",
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
    Schermata iniziale
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

Selezionata l'opzione "Planimetria rettangolare" nella schermata di @avvio, verrà mostrata la schermata presente in @piano_rettangolare, dove sarà possibile definire la lunghezza e la profondità del magazzino che vogliamo creare.

Per terminare la configurazione del piano è richiesto che i due parametri siano entrambi maggiori di 0, in caso contrario verrà impedito di procedere alla visualizzazione del piano e verrà mostrato un messaggio di errore.

Inoltre, selezionando l'opzione "Importa i prodotti da database", una volta terminata la configurazione dell'ambiente verrà caricata nell'apposita finestra la lista dei prodotti presenti nel database.

Premere quindi il pulsante *Submit* per procedere alla visualizzazione dell'ambiente 3D, oppure il pulsante *Indietro* per annullare la configurazione e tornare al menù mostrato in @avvio.

=== Inizializzazione Planimetria Personalizzata

#figure(
  image("./imgs/planimetria_personalizzata.png", width: 50%),
  caption: [
    Definizione parametri del piano personalizzato
  ],
) <piano_personalizzato>

Selezionata l'opzione "Planimetria personalizzata" nella schermata di @avvio, verrà mostrata la schermata presente in @piano_personalizzato, dove sarà possibile caricare il file SVG che verrà disegnato sul piano, e inserire la misura del lato maggiore del magazzino, in modo da scalarne correttamente la pianta.

Il sistema ritornerà un errore e impedirà la visualizzazione del piano nel caso in cui:
- il file SVG non venga inserito correttamente;
- il file SVG non sia valido;
- il valore associato al lato maggiore sia minore o uguale a 0.

"Nella schermata sono inoltre presenti due checkbox per l'importazione dei dati da database:

- "Importa gli scaffali dal database": permette di importare gli scaffali presenti nel database, i quali verranno successivamente visualizzati all'interno dell'ambiente 3D;
- "Importa i prodotti dal database": permette di importare i prodotti presenti nel database, e, se selezionata l'opzione precedente, di popolare gli scaffali presenti con i rispettivi prodotti.

Premere quindi il pulsante *Submit* per procedere alla visualizzazione dell'ambiente 3D, oppure il pulsante *Indietro* per annullare la configurazione e tornare al menù mostrato in @avvio.

=== Completamento configurazione dell'ambiente

#figure(
    grid(
        columns: (auto, auto),
        rows:    (auto, auto),
        [ #image("./imgs/piano_rettangolare.png", width: 90%)],
        [ #image("./imgs/piano_personalizzato.png", width: 90%)],
    ),caption: [ Corretta configurazione del piano rettangolare (sinistra) e del piano personalizzato (destra)],
) <fine_configurazione_iniziale>


Una volta che l'ambiente è stato correttamente configurato è possibile cominciare a lavorare con il piano 3D che si presenta come mostrato in in @fine_configurazione_iniziale (in questo caso i piani rappresentati sono entrambi vuoti).

== Movimento nell'ambiente tridimensionale
Il sistema permette quattro diversi tipi di movimento di camera all'interno dell'ambiente: rotazione del piano, zoom-in e zoom-out, lo spostamento della camera sui due assi (panning) e con le frecce direzionali.

=== Rotazione della piano

#figure(
    grid(
        columns: 3,
        rows:    (auto, auto),
        [ #image("./imgs/rotazione_1.png", width: 80%)],
        [ #image("./imgs/rotazione_2.png", width: 75%)],
        [ #image("./imgs/mouse_tasto_sinistro.png", width: 50%)],
    ),caption: [Rotazione del piano rispetto la camera],
) <camera_rotazione>

Premendo il tasto sinistro e spostando il mouse verso destra ruoteremo il piano rispetto alla camera in senso antiorario, muovendolo invece verso sinistra verrà ruotato in senso orario, come mostrato in @camera_rotazione. Nello stesso modo, spostando il mouse verso il basso possiamo cambiare l'angolazione del piano.

=== Zoom-in, Zoom-out

#figure(
    grid(
        columns: 3,
        rows:    (auto, auto),
        [ #image("./imgs/zoom-in.png", width: 80%)],
        [ #image("./imgs/zoom-out.png", width: 75%)],
        [ #image("./imgs/mouse_rotella.png", width: 30%)],
    ),caption: [Zoom-in e zoom-out],
) <camera_zoom>

Ruotando la rotella del mouse in avanti è possibile avvicinarsi all'oggetto desiderato (zoom-in), mentre ci si può allontanare (zoom-out) ruotandola nel senso opposto, come mostrato in @camera_zoom.

=== Panning

#figure(
    grid(
        columns: 3,
        rows:    (auto, auto),
        [ #image("./imgs/panning_1.png", width: 70%)],
        [ #image("./imgs/panning_2.png", width: 70%)],
        [ #image("./imgs/mouse_tasto_destro.png", width: 50%)],
    ),caption: [Panning della camera],
) <camera_panning>

Premendo il tasto destro del mouse e spostando il mouse in una delle quattro direzioni (su, giù, destra e sinistra) otterremo il panning della camera, ovvero lo spostamento sui due assi della camera rispetto al piano come mostrato in figura @camera_panning.

=== Movimento con frecce direzionali

#figure(
    grid(
        columns: 3,
        rows:    (auto, auto),
        [ #image("./imgs/keyboard_wasd.jpg", width: 45%)],
        [ #image("./imgs/keyboard_arrow.png", width: 40%)],
        [ #image("./imgs/keyboard_shift.jpg", width: 40%)],
    ),caption: [Movimento con le frecce direzionali],
) <camera_direzionali>

L' ultimo metodo per muoversi all'interno dell'ambiente è tramite l'uso delle frecce direzionali (o in alternativa i tasti W, A, S, D), che permettono il movimento nella direzione indicata dalla freccia. Con il tasto Shift è possibile aumentare la velocità di spostamento.

== Creazione zona

#figure(
    grid(
        columns: 3,
        rows:    (auto, auto),
        [ #image("./imgs/creazione_zone_1.png", width: 90%)],
        [ #image("./imgs/creazione_zone_2.png", width: 74%)],
        [ #image("./imgs/creazione_zone_3.png", width: 80%)],
    ),caption: [Da sinistra: menù di creazione zona, menù di configurazione dei ripiani ed esempio di zona creata manualmente],
) <creazione_zona>

Successivamente alla creazione dell'ambiente di lavoro è possibile creare le zone contenenti i bin in modo personalizzato.

Sulla sinistra della schermata è presente il pannello dedicato alla visualizzazione delle liste di zone, prodotti, ordini e impostazioni.
Selezionando da esso la voce "Zone" si aprirà un ulteriore pannello dove sarà possibile visualizzare la lista delle zone già presenti nell'ambiente.
Al suo interno, sul lato destro, è presente un pulsante nero contenente un "+".
Alla sua pressione verrà reso disponibile, sulla destra della schermata, il pannello "Nuova zona" nel quale sarà possibile inserire tutti i dati utili alla creazione della zona personalizzata.

I dati necessari alla creazione sono:
- *ID*: numero intero che rappresenta il codice identificativo univoco della zona;
- *Direzione*: può assumere valore `NS`(North-South) o `EW`(East-West) e rappresenta l'orientamento della zona rispetto al piano;
- *Dimensioni*:
  - *profondità*: numero reale che definisce la profondità della zona;
  - *larghezza*: numero reale che definisce la larghezza della zona. Essa è definibile dall'utente solo se è selezionata l'opzione "\# colonne uguali", altrimenti nello stesso campo viene mostrata automaticamente la larghezza calcolata come somma delle larghezze delle singole colonne;
  - *altezza*: numero reale che definisce l'altezza della zona. Essa viene mostrata automaticamente come somma delle altezze dei singoli livelli.

- *Colonne*:
  tramite un pulsante di opzione, è possibile selezionare la modalità di configurazione delle colonne.
  Esse sono:
    - *colonne uguali*: tramite l'opzione "\# colonne uguali" è possibile dichiarare che tutte le colonne della zona avranno larghezza uguale e definire il *numero di colonne* con un numero intero. In questo modo la larghezza di ogni singola colonna sarà uguale alla divisione tra la larghezza della zona dichiarata e il numero di colonne;
    - *colonne personalizzate*: tramite l'opzione "Colonne personalizzate" è possibile specificare la *larghezza delle colonne* singolarmente dentro ad un apposito form separando ciascun valore (rappresentato da un numero reale) con degli spazi.

      Per esempio, se viene inserito:
      #align(center, `2 1 3 1.5`)
      si sta dichiarando che la zona possiede quattro colonne rispettivamente di larghezza 2, 1, 3 e 1.5.

- *aggiunta livelli*: a destra del numero attuale di livelli configurati, è presente un pulsante bianco contenente un "+" che, se premuto, permette l'aggiunta nell'area sottostante di una sezione rappresentante un nuovo livello della zona. È quindi possibile definire l'*altezza del livello* indicata mediante un numero reale.

Successivamente all'inserimento dei dati rappresentativi della nuova zona personalizzata, è possibile premere sul pulsante "Crea zona" per generare l'elemento 3D corrispondente nell'ambiente di lavoro.
Esso verrà posizionato automaticamente alle coordinate (0,0) del piano e sarà quindi possibile riposizionarlo.


== Modifica zona

Successivamente alla creazione dell'ambiente di lavoro è possibile modificare le zone posizionate cambiandone i parametri dimensionali e di orientamento, potendo modificare o aggiungere le colonne e i livelli desiderati.

È possibile rimuovere una colonna già presente nella zona soggetta a modifiche esclusivamente se contiene solo bin senza prodotti al suo interno e se non sono presenti colonne, con indice superiore a quello della colonna da rimuovere, che contengono almeno un bin occupato.

Tale logica concerne anche la rimozione dei livelli.

Per esempio, durante la modifica di una zona formata da tre livelli (contenenti prodotti solo nel secondo) e cinque colonne (contenenti prodotti solo nelle prime tre), sarà possibile rimuovere la quarta o la quinta colonna (se prive di prodotti) ma non le precedenti. Similmente sarà possibile rimuovere il terzo livello (se privo di prodotti) ma non i precedenti.

Sulla sinistra della schermata è presente il pannello dedicato alla visualizzazione delle liste di zone, prodotti, ordini e impostazioni.

Selezionando da esso la voce "Zone" si aprirà un ulteriore pannello dove sarà possibile visualizzare la lista delle zone già presenti nell'ambiente.

In tale lista, per ogni elemento zona elencato, è presente un pulsante raffigurante un'occhio che, alla sua pressione, permette la visualizzazione sulla destra dello schermo del pannello relativo alle informazioni della relativa zona.

Sulla parte inferiore di tale pannello è presente il pulsante "Modifica" che, se premuto, permette di poter modificare alcuni parametri della zona in oggetto.

I parametri modificabili sono gli stessi che vengono richiesti durante la creazione della zona (@creazione_zona) e seguono i medesimi vincoli, fuorché il parametro `ID`, il quale non è modificabile.

Successivamente all'inserimento dei dati rappresentativi della zona modificata, è possibile premere sul pulsante "Salva le modifiche alla Zona" per aggiornare, come richiesto, l'elemento 3D corrispondente nell'ambiente di lavoro.

== Richiesta spostamento prodotto

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/spostamento_drag_and_drop.png", width: 80%)],
        [ #image("./imgs/spostamento_non_collocato.png", width: 80%)],
    ),caption: [Spostamento prodotti con drag and drop (sinistra), menù spostamento prodotti non collocati (destra)],
) <spostamento>

=== Spostamento tramite drag and drop

Lo spostamento tra due posizioni di un prodotto avviene tramite drag and drop.

Posizionando il puntatore del mouse sul prodotto che si desidera spostare e premendo il tasto sinistro possiamo "prendere" il prodotto, tenendo premuto il tasto sinistro spostiamo il prodotto in prossimità della posizione in cui vogliamo posizionarlo e quindi, rilasciando il tasto sinistro, effettuiamo lo spostamento.

Una notifica ci avviserà della possibilità di effettuare lo spostamento (controllato tramite un sistema proprietario, diverso da WMS3), in caso di esito positivo la posizione di partenza e quella di arrivo vengono evidenziati di giallo e verde rispettivamente come evidenziato in @spostamento

=== Spostamento prodotto non collocato

I prodotti non collocati, visualizzabili nell'apposita sezione del menù *Prodotti*, possono essere posizionati nel seguente modo:
- ricerco la posizione in cui voglio collocare il prodotto nell'ambiente (deve essere vuota);
- doppio click sulla posizione desiderata;
- nel menù che apparirà (@spostamento), premere il pulsante *Seleziona*;
- selezionare il prodotto desiderato e premere *Conferma*;
- il prodotto risulta collocato.

== Impostazioni

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/impostazioni.png", width: 50%)],
        [ #image("./imgs/ridimensionamento.png", width: 90%)],
    ),caption: [Impostazioni ambiente 3D],
) <impostazioni>

Premendo il pulsante *Settings* in basso a sinistra dello schermo si aprirà il pannello mostrato in @impostazioni (sinistra).

In alto troviamo *Informazioni*, contenente varie informazioni riguardo il prodotto.

Nella sezione sottostante troviamo Planimetria, dove sono riportati i valori dimensionali del piano, che possono essere modificati cliccandoci sopra e inserendo i nuovi valori da tastiera.

L'inserimento di valori che andrebbero a rimpicciolire il piano vengono considerati errati e la modifica delle dimensioni resa impossibile.

Una volta modificati i valori e premuto il pulsante *Salva* viene mostrato il pannello in @impostazioni (destra) che mostra in bianco il piano attuale e tratteggiata l'estensione che si vuole apportare. Premere quindi *Conferma* per applicare le modifiche.

Da notare che nel caso di modifica di un piano personalizzato il ridimensionamento non andrà ad influire sul SVG, che manterrà le dimensioni definite in fase di inizializzazione, ma aumenterà la superficie bianca su cui è disegnato.

Nell'ultima sezione in basso, *Demo*, troviamo due pulsanti:
- *Risincronizza*: permette riportare il piano al suo stato iniziale, annullando tutte le modifiche e gli spostamenti effettuati;
- *Reimposta*: permette di eliminare tutto il lavoro fatto sul piano e tornare alla schermata di @avvio.


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
