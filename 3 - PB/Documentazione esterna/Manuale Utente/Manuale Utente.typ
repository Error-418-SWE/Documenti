#import "/template_modern.typ": *

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
== Apertura del programma

Per aprire la pagina web dedicata all'utilizzo di WMS3, è necessario seguire i seguenti passaggi:

  - assicurarsi che il programma sia in esecuzione. In caso di necessità, la procedura per eseguire il software è descritta nel documento #st_v\;
  - aprire un browser web e collegarsi all'indirizzo "localhost:3000".


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
- "Importa i prodotti dal database": permette di importare i prodotti presenti nel database e, se selezionata l'opzione precedente, di popolare gli scaffali presenti con i rispettivi prodotti.

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
Il sistema permette quattro diversi tipi di movimento di camera all'interno dell'ambiente: rotazione del piano, zoom-in e zoom-out, spostamento della camera sui due assi (panning) e con le frecce direzionali.

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

=== Movimento con frecce direzionali <movimento_frecce_direzionali>

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

== Visualizzazione zone
=== Visualizzazione lista zone <visualizzazione_lista_zone>

Sulla sinistra della schermata è presente il pannello dedicato alla visualizzazione delle liste di zone, prodotti, ordini e impostazioni.

Selezionando da esso la prima icona (@icona_lista_zone (sinistra)), la quale corrisponde alla voce "Zone", si aprirà un ulteriore pannello dove sarà possibile visualizzare la lista delle zone già presenti nell'ambiente (@icona_lista_zone (destra)).

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/pulsante_zone.png", width: 60%)],
        [ #image("./imgs/lista_zone.png", width: 55%)],
    ),caption: [Icona "Zone" (sinistra) e pannello contenente la lista delle zone (destra)],
) <icona_lista_zone>

Ogni riga di tale lista corrisponde ad una zona, la quale viene identificata dal suo parametro `ID`.
Ad esso seguono le icone relative all'ispezione della zona (@ispezione_zona), rappresentata da un occhio, e alla sua eliminazione (@eliminazione_zona), rappresentata da un cestino.

Nel caso in cui venga creata una nuova zona (@creazione_zona), essa verrà aggiunta alla lista delle zone.
Similmente, se una zona dovesse essere eliminata dall'ambiente, essa verrebbe rimossa dalla lista.

=== Ispezione zona <ispezione_zona>

Successivamente alla creazione dell'ambiente di lavoro è possibile ispezionare le zone in esso contenute visualizzandone i dettagli.

Per eseguire tale operazione è possibile interagire con:

  - il pulsante contenente l'icona raffigurante un occhio (@immagini_pulsanti_ispezione_zona (sinistra)) presente nella lista delle zone (@visualizzazione_lista_zone) nella riga corrispondente alla zona da ispezionare;

  - il cubo rosso presente nell'angolo in basso a sinistra rispetto alla zona, visibile nel caso in cui il cursore del mouse sia sovrapposto a tale zona (@immagini_pulsanti_ispezione_zona (destra)). Per eseguire l'ispezione, tale cubo deve essere premuto con un doppio click del tasto sinistro del mouse.

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/pulsante_occhio_zona.png", width: 80%)],
        [ #image("./imgs/cubo_zona.png", width: 100%)],
    ),caption: [Pulsante "occhio" per l'ispezione zona (sinistra) e cubo utile all'interazione con una zona (destra)],
)<immagini_pulsanti_ispezione_zona>

\
L'esecuzione di almeno una delle modalità elencate permette la visualizzazione, sulla destra dello schermo, del pannello relativo alle informazioni della zona di interesse (@immagine_pannello_ispezione_zona).

#figure(
  image("./imgs/pannello_ispezione_zona.png", width: 30%),
  caption: [
    Pannello di ispezione zona
  ],
) <immagine_pannello_ispezione_zona>

\
In esso vengono visualizzati:

- *ID*: numero intero che rappresenta il codice identificativo univoco della zona, è visualizzato come titolo del pannello;

- *Direzione*: può assumere valore `NS` (North-South) o `EW` (East-West) e rappresenta l'orientamento della zona rispetto al piano;

- *Dimensioni*: tre campi rispettivamente relativi a:

  - *Lunghezza*: numero reale che definisce la lunghezza della zona;

  - *Larghezza*: numero reale che definisce la larghezza della zona;

  - *Altezza*: numero reale che definisce l'altezza della zona.

- *Lista dei Bin*: tabella che elenca, per tutti i bin della zona:
  - codice alfanumerico identificativo univoco del bin (colonna Bin);
  - contenuto del bin ("Libero" se vuoto) (colonna Stato);
  - pulsante per l'ispezione del bin (@ispezione_bin) se non vuoto (colonna Info).

\
Nella parte inferiore del pannello sono presenti i pulsanti:
  - *Localizza*: se premuto (@immagine_pulsante_localizza_zona) riposiziona automaticamente la visuale sulla zona, in modo da permettere una più immediata visualizzazione e localizzazione della stessa;
  - *Modifica*: se premuto permette la modifica della zona (@modifica_zona);
  - *Elimina*: se premuto permette l'eliminazione della zona (@eliminazione_zona).


#figure(
  image("./imgs/pulsante_localizza_zona.png", width: 40%),
  caption: [
    Pulsante localizza zona
  ],
) <immagine_pulsante_localizza_zona>

== Ispezione bin <ispezione_bin>

Successivamente alla creazione di una zona è possibile ispezionarne i bin singolarmente al fine di visualizzarne i dettagli specifici.

Per eseguire tale operazione è possibile interagire con:

  - il bin di interesse tramite un doppio click del tasto sinistro del mouse. Così facendo esso viene colorato di rosso (@immagini_opzioni_selezione_bin sinistra);

  - il pulsante per l'ispezione del bin (@immagini_opzioni_selezione_bin destra) presente nella lista dei bin di una zona specifica (@ispezione_zona).

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/zona_bin_selezionato.png", width: 80%)],
        [ #image("./imgs/pulsante_ispeziona_bin.png", width: 80%)],
    ),caption: [Selezione di un bin (sinistra) e pulsante ispezione bin (destra)],
) <immagini_opzioni_selezione_bin>

\
L'esecuzione di almeno una delle modalità elencate permette la visualizzazione, sulla destra dello schermo, del pannello relativo alle informazioni del bin di interesse (@immagini_pannello_bin).

In esso vengono visualizzati:

  - *ID*: codice alfanumerico identificativo univoco del bin, è visualizzato anche come titolo del pannello.

    Esso è composto da tre valori:

      - l'ID della zona che lo contiene;

      - una lettera dell'alfabeto inglese che identifica la colonna che lo contiene;

      - numero del bin rispetto alla zona che lo contiene.


  - *Dimensioni*: tre campi rispettivamente relativi a:

    - *Lunghezza*: numero reale che definisce la lunghezza del bin;

    - *Larghezza*: numero reale che definisce la larghezza del bin;

    - *Altezza*: numero reale che definisce l'altezza del bin.

  - *Area prodotto contenuto*: nel caso in cui il bin contenga un prodotto, vengono visualizzate le sue informazioni (@ispezione_prodotto), altrimenti viene data la possibilità di selezionare un prodotto non collocato da inserire nel bin.

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/pannello_bin_pieno.png", width: 80%)],
        [ #image("./imgs/pannello_bin_vuoto.png", width: 80%)],
    ),caption: [Pannello ispezione bin pieno (sinistra) e pannello ispezione bin vuoto (destra)],
) <immagini_pannello_bin>

\
Per inserire un prodotto all'interno di un bin vuoto mediante la sua ispezione, è sufficiente premere sul pulsante contenente la scritta "Seleziona" e ricercare il prodotto desiderato dal relativo pannello sulla sinistra tramite il suo `ID` o nome.

Per confermare la scelta è necessario premere sul pulsante contenente la scritta "Conferma" (@immagine_pannello_inserimento_prodotto).

Il pannello di ispezione del bin verrà aggiornato per contenere le nuove informazioni.

#figure(
  image("./imgs/pannello_inserimento_prodotto.png", width: 80%),
  caption: [
    Pannello di ricerca e inserimento di un prodotto nel bin
  ],
) <immagine_pannello_inserimento_prodotto>


== Visualizzazione prodotti
=== Visualizzazione lista prodotti <visualizzazione_lista_prodotti>

Sulla sinistra della schermata è presente il pannello dedicato alla visualizzazione delle liste di zone, prodotti, ordini e impostazioni.

Selezionando da esso la seconda icona (@icona_lista_prodotti sinistra), la quale corrisponde alla voce "Prodotti", si aprirà un ulteriore pannello dove sarà possibile visualizzare le liste dei prodotti letti da database (@icona_lista_prodotti destra).

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/bottone_lista_prodotti.png", width: 50%)],
        [ #image("./imgs/lista_prodotti.png", width: 60%)],
    ),caption: [Icona "Prodotti" (sinistra), pannello contenente la lista prodotti (destra)],
) <icona_lista_prodotti>

\
Esistono due liste di prodotti:

  - *Collocati*: vengono riportati i prodotti contenuti in un bin e visualizzati nell'ambiente;

  - *Non collocati*: vengono riportati i prodotti che non sono contenuti all'interno di un bin e non sono visualizzati nell'ambiente.


Ogni riga di tali liste corrisponde ad un prodotto, il quale viene identificato dal suo nome, ed elenca le informazioni relative al suo `ID` e le categorie di cui fa parte.

Sulla destra di tale riga è presente l'icona relativa all'ispezione del prodotto (@ispezione_prodotto), rappresentata da un occhio.

=== Ispezione prodotto <ispezione_prodotto>

Successivamente alla creazione dell'ambiente di lavoro è possibile ispezionare i prodotti letti da database visualizzandone i dettagli.

Per eseguire tale operazione è possibile interagire con:

  - il pulsante contenente l'icona raffigurante un occhio (@immagini_ispezione_prodotto (sinistra)) presente nella lista dei prodotti (@visualizzazione_lista_prodotti) nella riga corrispondente al prodotto da ispezionare;

 - il pannello di ispezione del bin contenente il prodotto di interesse (@ispezione_bin).

L'esecuzione di almeno una delle modalità elencate permette la visualizzazione, sulla destra dello schermo, del pannello relativo alle informazioni del prodotto di interesse (@immagini_ispezione_prodotto (destra)).

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/pulsante_ispezione_prodotto.png", width: 70%)],
        [ #image("./imgs/pannello_ispezione_prodotto.png", width: 70%)],
    ),caption: [Pulsante "occhio" per l'ispezione prodotto (sinistra) e pannello di ispezione prodotto (destra)],
)<immagini_ispezione_prodotto>

\
In esso vengono visualizzati:

  - *Nome*: nome del prodotto, è visualizzato come titolo del pannello;

  - *ID*: codice identificativo univoco del prodotto;

  - *Categorie*: lista delle categorie appartenenti al prodotto;

  - *Dimensioni*: tre campi rispettivamente relativi a:

    - *Lunghezza*: numero reale che definisce la lunghezza del prodotto;

    - *Larghezza*: numero reale che definisce la larghezza del prodotto;

    - *Altezza*: numero reale che definisce l'altezza del prodotto.

  - *Peso*: numero reale che definisce il peso del prodotto.


== Ordini di movimentazione prodotti
=== Visualizzazione lista ordini di movimentazione

Sulla sinistra della schermata è presente il pannello dedicato alla visualizzazione delle liste di zone, prodotti, ordini e impostazioni.

Selezionando da esso la terza icona (@icona_lista_ordini (sinistra)), la quale corrisponde alla voce "Ordini di movimentazione", si aprirà un ulteriore pannello dove sarà possibile visualizzare la lista degli ordini di movimentazione avvenuti nella sessione corrente (@icona_lista_ordini (destra)).

Per ogni ordine viene riportato il nome del prodotto soggetto allo spostamento e gli `ID` del bin di partenza e di destinazione.

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/bottone_lista_ordini.png", width: 45%)],
        [ #image("./imgs/lista_ordini.png", width: 90%)],
    ),caption: [Icona "Ordini di movimentazione" (sinistra), pannello contenente la lista degli ordini (destra)],
) <icona_lista_ordini>


=== Richiesta spostamento prodotto <richiesta_spostamento_prodotto>

Lo spostamento di un prodotto tra due bin avviene tramite _drag and drop_:

  - posizionando il puntatore del mouse sul bin contenente il prodotto che si desidera spostare e premendo il tasto sinistro del mouse, è possibile "prendere" il prodotto;

  - tenendo premuto il medesimo tasto è possibile spostare il prodotto nella posizione del bin di destinazione;

  - rilasciando il tasto, verrà visualizzata nella parte inferiore destra dello schermo una notifica che avviserà della corretta creazione, o meno, dell'ordine di spostamento.


Nel caso in cui l'ordine di movimentazione sia avvenuto correttamente, i bin di partenza e di arrivo verranno evidenziati rispettivamente in giallo e verde (@immagine_spostamento_prodotti).

#figure(
  image("./imgs/spostamento_drag_and_drop.png", width: 40%),
  caption: [
    Visualizzazione spostamento prodotti nella zona
  ],
) <immagine_spostamento_prodotti>

\
I prodotti non collocati, visualizzabili nell'apposita sezione del menù *Prodotti* (@visualizzazione_lista_prodotti), possono essere posizionati tramite il pannello di ispezione del bin di destinazione (@ispezione_bin), purché esso sia vuoto. Tale operazione non comporta la generazione di una richiesta di spostamento.


== Ricerca zone <ricerca_zone>

Nella parte superiore del pannello relativo alla visualizzazione della lista delle zone (@icona_lista_zone (destra)), è presente l'area di ricerca delle zone tramite `ID`.

Dopo aver inserito il parametro desiderato nella barra di ricerca, verranno mostrati nell'area sottostante i risultati relativi alle zone aventi un `ID` che contenga al suo interno il parametro immesso.

== Ricerca prodotti <ricerca_prodotti>

Nella parte superiore del pannello relativo alla visualizzazione delle liste dei prodotti (@icona_lista_prodotti (destra)), è presente l'area di ricerca dei prodotti.

I criteri di ricerca disponibili sono:

  - nome del prodotto o una sua sottostringa: deve essere selezionata la voce "Nome" a sinistra della barra di ricerca;

  - `ID` del prodotto o una sua sottostringa: deve essere selezionata la voce "ID" a sinistra della barra di ricerca;

  - categoria merceologica: dopo aver premuto su "Categoria prodotto" comparirà una lista nella quale è possibile selezionare la categoria desiderata.

I risultati della ricerca verranno mostrati nell'area sottostante, all'interno dell'apposita lista (@visualizzazione_lista_prodotti).


== Creazione zona <creazione_zona>

Successivamente alla creazione dell'ambiente di lavoro è possibile creare le zone contenenti i bin in modo personalizzato.

Sul lato destro superiore del pannello relativo alla visualizzazione della lista delle zone (@visualizzazione_lista_zone), è presente un pulsante nero contenente la scritta "+ Nuova" (@nuova_zona (sinistra)).

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/pulsante_nuova_zona.png", width: 80%)],
        [ #image("./imgs/pannello_nuova_zona.png", width: 50%)],
    ),caption: [Pulsante di creazione di una nuova zona (sinistra) e pannello di creazione di una nuova zona (destra)],
) <nuova_zona>

Alla sua pressione verrà reso disponibile, sulla destra della schermata, il pannello "Nuova zona" (@nuova_zona (destra)) nel quale sarà possibile inserire tutti i dati utili alla creazione della zona personalizzata.
I dati necessari alla creazione sono:
- *ID*: numero intero che rappresenta il codice identificativo univoco della zona;
- *Direzione*: può assumere valore `Nord-Sud` o `Est-Ovest` e rappresenta l'orientamento della zona rispetto al piano;
- *Dimensioni*:
  - *Lunghezza*: numero reale che definisce la lunghezza della zona;
  - *Larghezza*: numero reale che definisce la larghezza della zona. Essa è definibile dall'utente solo se è selezionata l'opzione "Dividi in parti uguali", altrimenti nello stesso campo viene mostrata automaticamente la larghezza calcolata come somma delle larghezze delle singole colonne;
  - *Altezza*: numero reale che definisce l'altezza della zona. Essa viene mostrata automaticamente come somma delle altezze dei singoli livelli.

- *Colonne*:
  tramite un pulsante di opzione, è possibile selezionare la modalità di configurazione delle colonne.
  Esse sono:
    - *colonne uguali*: tramite l'opzione "Dividi in parti uguali" è possibile dichiarare che tutte le colonne della zona avranno larghezza uguale e definire il *numero di colonne* con un numero intero. In questo modo la larghezza di ogni singola colonna sarà uguale alla divisione tra la larghezza della zona dichiarata e il numero di colonne;
    - *colonne personalizzate*: tramite l'opzione "Colonne personalizzate" è possibile specificare la *larghezza delle colonne* singolarmente dentro ad un apposito form separando ciascun valore (rappresentato da un numero reale) con degli spazi.

      Per esempio, se viene inserito:
      #align(center, `2 1 3 1.5`)
      si sta dichiarando che la zona possiede quattro colonne rispettivamente di larghezza 2, 1, 3 e 1.5.

- *aggiunta livelli*: a destra del numero attuale di livelli configurati, è presente un pulsante bianco contenente la scritta "Aggiungi" che, se premuto, permette l'aggiunta nell'area sottostante di una sezione rappresentante un nuovo livello della zona. È quindi possibile definire l'*altezza del livello* indicata mediante un numero reale.

Successivamente all'inserimento dei dati rappresentativi della nuova zona personalizzata, è possibile premere sul pulsante "Crea zona" (@pulsante_crea_zona (sinistra)) per generare l'elemento 3D corrispondente nell'ambiente di lavoro.
Esso verrà posizionato automaticamente alle coordinate (0,0) del piano e sarà quindi possibile riposizionarlo.

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/pulsante_crea_zona.png", width: 74%)],
        [ #image("./imgs/creazione_zone_3.png", width: 80%)],
    ),caption: [Pulsante di creazione zona (sinistra) e nuova zona creata nell'ambiente di lavoro (destra)],
) <pulsante_crea_zona>


== Spostamento zona nell'ambiente 3D <collocamento_zona>

Successivamente alla creazione dell'ambiente di lavoro è possibile spostare una zona in esso collocata.

Per eseguire tale operazione è possibile interagire con il cubo rosso, presente nell'angolo in basso a sinistra rispetto alla zona, visibile nel caso in cui il cursore del mouse venga sovrapposto ad essa (@immagini_pulsanti_ispezione_zona (destra)).

Per realizzare lo spostamento è sufficiente premere il tasto sinistro del mouse sopra al cubo descritto e, mantenendo la pressione di tale tasto, spostare il mouse per riposizionare la zona interessata nell'ambiente di lavoro.

Per rendere più agevole la fase di spostamento, è possibile muovere la visuale come descritto nella sezione "Movimento con frecce direzionali" (@movimento_frecce_direzionali).

Durante questa fase la base della zona sarà di colore verde nel caso in cui essa non collida con altri elementi dell'ambiente di lavoro, rossa altrimenti.

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/spostamento_zona_verde.png", width: 80%)],
        [ #image("./imgs/spostamento_zona_rosso.png", width: 80%)],
    ),caption: [Spostamento zona non in collisione (sinistra) e spostamento zona in collisione (destra)],
) <immagini_spostamento_zona>

\
Per confermare la posizione desiderata per la zona soggetta allo spostamento, è sufficiente rilasciare il tasto sinistro del mouse.

Nel caso in cui la zona fosse in collisione con altri elementi dell'ambiente di lavoro, essa verrà posizionata nell'ultima locazione valida da essa raggiunta durante la fase di spostamento.

=== Griglia

Per agevolare il posizionamento di una zona durante la fase di spostamento, è possibile usufruire di una griglia tramite il relativo pannello presente nella parte inferiore destra dello schermo (@immagine_grid).

#figure(
  image("./imgs/grid.png", width: 50%),
  caption: [
    Pannello di selezione passo Griglia
  ],
) <immagine_grid>

\
Nel caso in cui da esso venga selezionato un valore diverso da zero, nel piano dell'ambiente di lavoro sarà possibile visualizzare una griglia con passo uguale al valore selezionato.

Quando essa è attiva, lo spostamento di una zona avverrà esclusivamente nelle posizioni coincidenti con le intersezioni della griglia, potendo quindi modificare la propria posizione in funzione di valori multipli del passo selezionato.

== Modifica zona <modifica_zona>

Successivamente alla creazione dell'ambiente di lavoro è possibile modificare le zone posizionate cambiandone i parametri dimensionali e di orientamento, potendo modificare o aggiungere le colonne e i livelli desiderati.

Durante un'azione di modifica di una zona è possibile rimuovere una o più colonne già presenti esclusivamente se contengono solo bin senza prodotti al loro interno e se non sono presenti colonne con indice superiore a quello dell'insieme di colonne da rimuovere.

Tale logica concerne anche la rimozione dei livelli.

Per esempio, durante la modifica di una zona formata da tre livelli (contenenti prodotti solo nel secondo) e cinque colonne (contenenti prodotti solo nelle prime tre), sarà possibile rimuovere la quarta colonna (se priva di prodotti) oppure sia la quarta che la quinta (purché entrambe siano prive di prodotti), ma non le precedenti. Similmente sarà possibile rimuovere il terzo livello (se privo di prodotti) ma non i precedenti.

Nella parte inferiore del pannello relativo alla visualizzazione delle informazioni di una zona (@ispezione_zona), è presente un pulsante contenente la scritta "Modifica" (@pulsante_modifica_zona).

#figure(
  image("./imgs/pulsante_modifica_zona.png", width: 40%),
  caption: [
    Pulsante di modifica di una zona
  ],
) <pulsante_modifica_zona>

Alla sua pressione sarà permesso all'utente di poter modificare alcuni parametri della zona in oggetto.

Essi sono i medesimi richiesti durante la creazione della zona (@creazione_zona) e seguono gli stessi vincoli, fuorché il parametro `ID`, il quale non è modificabile.

Successivamente all'inserimento dei dati rappresentativi della zona modificata, è possibile premere sul pulsante "Salva le modifiche alla zona" (@pulsante_salvataggio_modifica_zona) per aggiornare, come richiesto, l'elemento 3D corrispondente nell'ambiente di lavoro.

#figure(
  image("./imgs/pulsante_salvataggio_modifiche_zona.png", width: 40%),
  caption: [
    Pulsante di salvataggio delle modifica di una zona
  ],
) <pulsante_salvataggio_modifica_zona>

== Eliminazione zona <eliminazione_zona>

Successivamente alla creazione dell'ambiente di lavoro è possibile eliminare una zona in esso collocata.

Per eseguire tale operazione è possibile interagire con:

- il pulsante rosso contenente la scritta "Elimina" contenuto nella parte inferiore del pannello relativo alla visualizzazione delle informazioni di una zona (@immagini_pulsanti_eliminazione_zona (sinistra));

- il pulsante contenente l'icona raffigurante un cestino (@immagini_pulsanti_eliminazione_zona (destra)) presente nella lista delle zone (@visualizzazione_lista_zone) nella riga corrispondente alla zona da eliminare.

#figure(
    grid(
        columns: 2,
        rows:    (auto, auto),
        [ #image("./imgs/pulsante_eliminazione_zona.png", width: 60%)],
        [ #image("./imgs/pulsante_cestino_zone.png", width: 90%)],
    ),caption: [Pulsante "Elimina" di eliminazione zona (sinistra) e pulsanti "cestino" di eliminazione zona (destra)],
)<immagini_pulsanti_eliminazione_zona>

Alla pressione di uno dei pulsanti elencati, verrà aperto il pannello di conferma dell'operazione, in quanto irreversibile.

#figure(
  image("./imgs/conferma_eliminazione_zona.png", width: 50%),
  caption: [Pannello di conferma eliminazione zona
  ],
) <immagine_pannello_conferma_eliminazione_zona>

Nel caso in cui venisse premuto il pulsante "Elimina" presente in quest'ultimo pannello, la relativa zona (e conseguentemente tutti i bin in essa contenuti) verrà rimossa dall'ambiente di lavoro e dalla lista delle zone.

Dal momento dell'eliminazione di una zona contenente dei prodotti, essi saranno visualizzabili nella lista dei prodotti non collocati (@visualizzazione_lista_prodotti) in attesa di una nuova collocazione.

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
