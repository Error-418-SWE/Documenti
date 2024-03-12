#import "/template.typ": *

#show: project.with(
  title: "Analisi dei Requisiti",
  subTitle: "Warehouse Management 3D (WMS3)",
  authors: (
    "Banzato Alessio",
    "Nardo Silvio",
    "Oseliero Antonio",
    "Gardin Giovanni",
  ),
  showLog: true,
  isExternalUse: true,
);

#let requirements = json("Requisiti.json");
#let derivedRequirements(reference) = {
  box(width: 1fr, stroke: 0.5pt + luma(140), inset: 4pt)[
    #text("Requisiti derivati: ", weight: "bold")
    #text(requirements.at(reference).join(", ") + ".")
  ]
}

// WIP, non rimuovere
//
// #let placeDerivedRequirements() = {
//   let header = locate(loc => {
//     let elems = query(selector(heading).before(loc), loc)
//     if elems == () {
//       panic("La funzione non ha rilevato di essere in una sezione di UC.")
//     }
//     else {
//       text("Requisiti derivati: ", weight: "bold")
//       requirements.at(elems.last().numbering).join(", ")
//       "."
//     }
//   })
//   header
// }

= Introduzione

== Scopo del documento

Il presente documento descrive i casi d'uso e i requisiti del progetto _Warehouse Management 3D_, elaborati a partire dal capitolato C5 proposto da Sanmarco Informatica S.p.A e assegnato all'organizzazione dal Committente.

== Glossario
#glo_paragrafo

== Riferimenti <riferimenti>

=== Riferimenti a documentazione interna <riferimenti-interni>

- Documento #glo_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/blob/main/3%20-%20PB/Glossario_v" + glo_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

- Documento #ndp_v: \
  _#link("https://github.com/Error-418-SWE/Documenti/tree/main/3%20-%20PB/Documentazione%20interna/Norme%20di%20Progetto_v" + ndp_vo + ".pdf")_
  #lastVisitedOn(25, 02, 2024)

=== Riferimenti normativi <riferimenti-normativi>

- Regolamento del progetto didattico: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_
  #lastVisitedOn(13, 02, 2024)

- Standard ISO/IEC/IEEE 12207:2017: \
  _#link("https://www.iso.org/obp/ui/en/#iso:std:iso-iec-ieee:12207:ed-1:v1:en")_
  #lastVisitedOn(13, 02, 2024)

- Standard ISO/IEC/IEEE 29148:2018: \
  _#link("https://ieeexplore.ieee.org/servlet/opac?punumber=8559684")_
  #lastVisitedOn(13, 02, 2024)

- SWEBOK Chapter 1: Software Requirements: \
  _#link("http://swebokwiki.org/Chapter_1:_Software_Requirements")_
  #lastVisitedOn(13, 02, 2024)

=== Riferimenti informativi <riferimenti-informativi>

- Verbali interni;
- Verbali esterni;
- Capitolato "Warehouse Management 3D" (C5) di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_
  #lastVisitedOn(13, 02, 2024)

- Documentazione Three.js: \
  _#link("https://threejs.org/docs/index.html")_
  #lastVisitedOn(13, 02, 2024)

- Analisi dei requisiti: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf")_
  #lastVisitedOn(13, 02, 2024)

- Analisi e descrizione delle funzionalità, Use Case e relativi diagrammi (UML): \
  _#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")_
  #lastVisitedOn(13, 02, 2024)

- WebGL 2.0 Specification: \
  _#link("https://registry.khronos.org/webgl/specs/latest/2.0/")_
  #lastVisitedOn(13, 02, 2024)

#pagebreak()

= Descrizione del prodotto

== Obiettivi del prodotto

Il prodotto software oggetto di questo documento è un gestionale di magazzino (WMS, _"Warehouse Management Software"_) che offre una visualizzazione 3D del magazzino ed un set di funzionalità logistiche di base.

== Ambito del prodotto

Il prodotto software oggetto di questo documento è denominato *WMS3*, un gestionale di magazzino che offre le seguenti funzionalità:
- visualizzazione tridimensionale di un magazzino, con possibilità di muovere la vista;
- visualizzazione delle informazioni della merce presente in magazzino;
- esecuzione di operazioni CRUD non persistenti sugli scaffali;
- caricamento dei dati relativi alle merci da un database SQL;
- emissione di richieste di movimentazione della merce all'interno del magazzino;
- filtraggio e ricerca delle merci con rappresentazione grafica dei risultati;
- importazione di planimetrie in formato SVG.

I gestionali di magazzino tradizionali presentano una serie di problematiche:
- rappresentazione 2D del contenuto del magazzino;
- software pensato per un uso esclusivamente desktop;
- interfaccia di gestione complessa (@wms-tradizionale), inadatta all'uso tramite touchscreen o da parte di personale non tecnico;
- interpretazione dei dati e delle viste laboriosa e soggetta ad errore umano;
- tempi di formazione del personale lunghi a causa della complessità degli strumenti.

#figure(
  image("./imgs/wms-tradizionale.jpg", format: "jpg"),
  caption: [
    Schermata di un software WMS tradizionale (fonte: #link("https://www.seniorsoftware.ro/en/wms/")[seniorsoftware.ro])
  ],
) <wms-tradizionale>

Il vantaggio principale di WMS3, rispetto ai tradizionali gestionali di magazzino, è la visualizzazione 3D del magazzino e del suo contenuto. Questa funzionalità rappresenta un miglioramento significativo di usabilità rispetto ai WMS tradizionali. La visualizzazione 3D permette agli utenti di:

- avere una migliore comprensione dello stato del magazzino;
- disporre le operazioni logistiche con maggiore cognizione.

== Panoramica del prodotto

=== Interazioni

Di seguito sono forniti maggiori dettagli riguardo le modalità con cui utenti e altri software possano interagire con WMS3.

// Qui ci starebbe un bel diagramma...

==== Interfacce utente

WMS3 è una _web application_ acceduta e operata tramite browser. L'interfaccia utente (UI) è _web-based_ e _responsive_.

Lo scenario di interazione primario avviene tramite mouse e tastiera; tuttavia, è prevista l'operabilità anche tramite touchscreen. Sarà possibile operare da dispositivi mobili quali tablet e smartphone.

Le funzionalità esposte all'utente variano in base all'ampiezza della _viewport_ del dispositivo in uso. L'insieme completo di funzionalità dovrà essere offerto almeno su computer tramite mouse e tastiera.

==== Interfacce hardware

Il prodotto è acceduto tramite browser. Ne è prevista l'esecuzione sui seguenti dispositivi:
- computer, tramite mouse e tastiera;
- dispositivi mobili touchscreen (es. tablet) in dotazione agli adetti di magazzino.

Il browser e il dispositivo devono essere compatibili con lo standard WebGL.

Il prodotto non prevede elementi hardware propri o interfacce con elementi hardware di terze parti.

==== Interfacce software

WMS3 si interfaccia, in sola lettura, con un database SQL al fine di:
- importare i dati necessari alla costruzione della vista 3D;
- ottenere lo stato interno del magazzino e le informazioni sulla merce contenuta al suo interno.

È previsto che lo schema ER del database venga fornito dal Gruppo al Proponente come artefatto.

==== Interfacce di comunicazione

Per la comunicazione tra le sue componenti, con l'utente e con servizi esterni, WMS3 utilizza HTTP.

==== Vincoli di memoria

Non sono definiti vincoli o limiti sulle memorie primaria e secondaria.
Il Capitolato non prevede che WMS3 offra la persistenza dei dati.

==== Requisiti di adattamento al contesto

WMS3 per essere eseguito richiede:
- un *browser* che supporti WebGL 2.0 (per le specifiche riguardanti i vari browser compatibili consultare la sezione @vincoli);
- un server *Node.js* versione 20.11.0 (latest LTS) o superiore;
- un database relazionale SQL che si interfacci con le API fornite dal gruppo (il gruppo utilizza *PostgreSQL* versione 16.2);
- *Docker Compose* versione 2.23.3 o superiore;
- *Docker* versione 24.0.7 o superiore;

Il gruppo ha deciso di utilizzare la tecnologia Docker per permettere una maggiore portabilità e facilitare il deploy. La gestione simultanea dei container avviene mediante Docker Compose.

Le specifiche sui browser sono imposte dall'utilizzo da parte del gruppo di *Three.js* per implementare l'ambiente 3D.

==== Interfacce a servizi

WMS3 dovrà inviare messaggi ad un servizio esterno per comunicare gli ordini di movimentazione richiesti dall'utente. Dovrà inoltre ricevere e gestire messaggi che comunicano l'esito dell'ordine di movimentazione richiesto.

WMS3 si integra con un sistema esterno per l'immissione degli ordini di movimentazione tramite API RESTful, ma non lo comprende nel proprio ambito. Tale API esterna è incaricata di stabilire se una richiesta di movimentazione inserita tramite WMS3 sia lecita e, quindi, valida per l'inserimento a sistema. I parametri su cui si basa sono recuperati autonomamente dalle fonti dati opportune.

Qualora una richiesta di movimentazione non fosse ritenuta valida, la richiesta di movimentazione è da ritenersi annullata.

WMS3 simulerà il comportamento di tale API con un algoritmo che accetti o rifiuti le richieste di movimentazione in maniera pseudocasuale.

=== Descrizione degli oggetti di dominio

Questo paragrafo fornisce una descrizione dettagliata degli oggetti di dominio, già in parte descritti nel #glo.

==== Ambiente
Di planimetria rettangolare oppure personalizzata basata su un file SVG caricato durante la configurazione, rappresenta l'interno del magazzino su cui opera l'addetto.
Le proprietà sono descritte nella @props-ambiente.

#figure(
  table(
    columns: 2,
    [*Proprietà*], [*Descrizione*],
    [Lunghezza], [$>0$ \[m\]],
    [Larghezza], [$>0$ \[m\]\ Per planimetrie ricavate da SVG, la larghezza viene calcolata moltiplicando la lunghezza per il rapporto d'aspetto del file SVG.],
  ),
  caption: "Proprietà dell'Ambiente"
) <props-ambiente>

==== Zona
Porzione dell'ambiente atta a contenere uno o più bin, organizzati su livelli e colonne. Le proprietà di ciascuna zona sono descritte nella @props-zona.

#figure(
  table(
    columns: 2,
    [*Proprietà*], [*Descrizione*],
    [Lunghezza], [$>0$ \[m\]],
    [Larghezza], [$>0$ \[m\]\ Non inferiore alla somma delle larghezze delle colonne.],
    [Altezza], [$>0$ \[m\]\ Non inferiore alla somma delle altezze dei livelli.],
    [Numero di colonne], [$>=1$],
    [Numero di livelli], [$>=1$],
  ),
  caption: "Proprietà di una zona"
) <props-zona>

Le colonne di una stessa zona possono avere larghezze differenti.

#figure(
  table(
    columns: (10em, 10em),
    [*Proprietà*], [*Descrizione*],
    [Larghezza], [$>0$ \[m\]],
  ),
  caption: "Proprietà di una colonna di una zona"
) <props-livello>

I livelli partono da terra e sono anche detti "ripiani". Sono numerati dal basso verso l'alto in modo incrementale, a partire da 1. I livelli di una stessa zona possono avere altezze differenti.

#figure(
  table(
    columns: (10em, 10em),
    [*Proprietà*], [*Descrizione*],
    [Altezza], [$>0$ \[m\]],
  ),
  caption: "Proprietà di un livello di una zona"
) <props-livello>

Una zona con un solo livello è anche detta "*area a terra*". Modella una zona del magazzino atta a conservare un prodotto per un periodo di tempo tipicamente limitato. Solitamente si tratta di zone di carico/scarico.

Una zona con più di un livello è anche detta "*scaffale*".

==== Bin
Posizione di una zona atta ad accogliere fino ad un prodotto. Individuata dall'intersezione di livelli e colonne.

==== Prodotto
Elemento ospitabile in un bin.

=== Funzionalità del prodotto

Le componenti della visualizzazione 3D godono delle seguenti caratteristiche:

- *Ambiente*:
  - dimensioni e planimetria personalizzabili;
  - caratterizzato da una griglia (o _grid_) a terra che permette all'utente di collocare con _snapping_ le zone;
  - le dimensioni e la finezza della _grid_ possono essere regolate dall'utente;
  - navigabile tramite diverse periferiche (frecce direzionali, _mouse_, _touchscreen_ del dispositivo) e in diversi modi (_pan_ sui tre assi, _zoom-in_, _zoom-out_, rotazione).

- *Zona*:
  - operazioni CRUD sulle zone;
  - operazione di spostamento;
  - personalizzazione delle proprietà in fase di creazione;
  - ispezione per ottenere informazioni sulla zona e sul suo contenuto;
  - ricercabili per ID.

- *Bin*:
  - ispezione per ottenere informazioni sul bin e sul suo contenuto.

- *Prodotto*:
  - se ne può richiedere lo spostamento (movimentazione) verso un altro bin;
  - ispezione per ottenere informazioni;
  - ricercabili per ID, nome o categoria.

=== Caratteristiche degli utenti

L'utente tipico di WMS3 è un supervisore di magazzino. Ci si aspetta che la maggior parte degli accessi a WMS3 avvengano da ufficio, tramite un computer desktop dotato di mouse e tastiera; tuttavia, non si può escludere che l'utente possa accedere a WMS3 tramite dispositivo mobile.

L'utente tipico è avvezzo all'uso del computer e dei dispositivi mobili. Conosce il dominio applicativo e ha già dimestichezza con altri strumenti di gestione di magazzino.

=== Limitazioni

Non sono noti requisiti limitanti la capacità dell'organizzazione di realizzare il progetto WMS3, come ad esempio:
- politiche interne, regolamenti, leggi statali;
- limiti hardware;
- limiti imposti dai servizi esterni;
- limiti imposti dai requisiti di qualità;
- considerazioni sulla sicurezza dei dati;
- considerazioni sulla sicurezza dell'utente e di tutti coloro coinvolti, direttamente o indirettamente, dal ciclo di vita di WMS3.

=== Ipotesi e dipendenze

+ Disponibilità di un database SQL popolato;
+ Disponibilità di un browser compatibile con WebGL;
+ Disponibilità di un sistema proprietario per:
  + notificare la richiesta di spostamento di un prodotto all'interno del magazzino al personale designato;
  + ricevere il responso sulla liceità dell'operazione richiesta al punto precedente.


== Principi di redazione

Questo documento è redatto in modo incrementale, così da risultare sempre conforme agli accordi presi tra gruppo e Proponente durante lo sviluppo del progetto. Vengono inoltre adottati i seguenti criteri di qualità:

+ *Correttezza*: ogni caso d'uso e requisito riportato corrisponde a ciò che è richiesto dal Proponente;

+ *Non ambiguità*: ogni parte del documento, caso d'uso e requisito deve essere descritto in modo tale che ne esista una sola interpretazione, e che questa sia facilmente comprensibile da tutte le parti coinvolte nel progetto. A questo scopo, il gruppo _Error\_418_ mette a disposizione un _*Glossario*_ nel quale sono definiti i termini propri del dominio di progetto. Ogni ricorrenza di tali termini nei documenti è segnalata dalla lettera _g_ al pedice;

+ *Completezza*: il documento contiene tutti i requisiti necessari allo sviluppo del progetto, classificandoli per categorie di importanza, e comprende anche la descrizione di tutti i possibili scenari del prodotto;

+ *Coerenza*: ciò che è scritto nel documento non deve andare in conflitto con il contenuto di altri documenti o del documento stesso. Ogni caso d'uso o requisito deve esprimere un concetto diverso dagli altri;

+ *Verificabilità*: deve essere possibile controllare la presenza di ogni requisito nel prodotto finale tramite un procedimento misurabile. La verificabilità è un parametro fortemente influenzato dall'ambiguità: più un requisito è ambiguo, meno sarà verificabile;

+ *Modificabilità*: deve essere definito un modello per la stesura dei singoli casi d'uso e requisiti, così che la loro modifica possa avvenire nel modo più efficiente possibile;

+ *Tracciabilità*: per ogni requisito ne è indicato il riferimento (o fonte), in modo da semplificare il processo di verifica della completezza e correttezza.

#pagebreak()

= Use Case

#set heading(numbering: (..nums) => {
  let values = nums.pos();
  if (values.len() > 0){
      values.at(values.len() - 1) = values.at(values.len() - 1);
  }
  values = values.slice(1)
  return "UC--" + values.map(str).join(".");
})

#set par(first-line-indent: 0pt)

// INIZIO UC



// FINE UC

#set heading(numbering: "1.1")

= Requisiti <requisiti>

== Codice identificativo
Ogni requisito è caratterizzato da un codice identificativo definito nel seguente modo:
#align(`[Tipologia][Importanza]-[Numero]`, center)
Dove:
- `Tipologia` può assumere i valori:
  - `F`: funzionale;
  - `Q`: di qualità;
  - `V`: di vincolo.
- `Importanza` può assumere i valori:
  - `M`: mandatory, obbligatorio;
  - `D`: desiderabile;
  - `O`: opzionale.
- `Numero` rappresenta l'identificativo numerico del requisito. Se sono presenti sottocasi, il loro numero viene rappresentato come segue:
#align(`NumeroPadre.NumeroFiglio`, center)

#show figure: set block(breakable: true)

== Requisiti funzionali <requisiti-funzionali>

#figure(
  table(
    columns: 4,
    align: left,
    [*Codice*], [*Classificazione*], [*Descrizione*], [*Riferimento*],
    [FM-1], [Obbligatorio], [L'utente deve poter creare il magazzino], [UC-1],
    [FM-1.1], [Obbligatorio], [L'utente deve poter caricare un file SVG contenente la pianta del magazzino], [UC-1.1],
    [FM-1.1.1], [Obbligatorio], [L'utente deve sempre poter creare un magazzino tramite caricamento di un file SVG, quando possibile], [UC-1.1],
    [FD-1.1.2], [Desiderabile], [L'utente deve poter definire le altezze degli elementi del file SVG tramite trascinamento verso l'alto], [Verbale esterno\ 23-12-06],
    [FM-1.1.3], [Obbligatorio], [L'utente visualizza un errore di importazione del file SVG], [UC-1.1.1],
    [FM-1.1.3.1], [Obbligatorio], [L'utente visualizza un errore dato dal caricamento di un file SVG privo di informazioni], [UC-1.1.1.1],
    [FM-1.1.3.2], [Obbligatorio], [L'utente visualizza un errore dato da informazioni incongruenti nel file SVG], [UC-1.1.1.2],
    [FM-1.2], [Obbligatorio], [L'utente deve sempre poter creare un ambiente di lavoro vuoto, quando possibile], [UC-1.2],

    [FM-2], [Obbligatorio], [L'utente deve poter modificare le dimensioni del magazzino dopo la sua creazione], [UC-2],
    [FM-2.1], [Obbligatorio], [L'utente deve poter modificare la lunghezza del magazzino dopo la sua creazione], [UC-2],
    [FM-2.2], [Obbligatorio], [L'utente deve poter modificare la larghezza del magazzino dopo la sua creazione], [UC-2],
    [FM-2.3], [Obbligatorio], [L'utente deve poter modificare l'altezza del magazzino dopo la sua creazione], [UC-2],
    [FM-2.4], [Obbligatorio], [L'utente visualizza un errore relativo alla riduzione eccessiva delle dimensioni dell'ambiente vuoto], [UC-2.1],
    [FM-2.5], [Obbligatorio], [L'utente visualizza un errore relativo alla riduzione eccessiva delle dimensioni dell'ambiente non vuoto], [UC-2.2],

    [FM-3], [Obbligatorio], [L'utente deve poter gestire gli scaffali], [UC-3],
    [FM-3.1], [Obbligatorio], [L'utente deve poter creare gli scaffali], [UC-3.1],
    [FM-3.1.1], [Obbligatorio], [L'utente deve poter definire le dimensioni degli scaffali], [UC-3.1],
    [FM-3.1.1.1], [Obbligatorio], [L'utente deve poter definire la lunghezza degli scaffali], [UC-3.1],
    [FM-3.1.1.2], [Obbligatorio], [L'utente deve poter definire la profondità degli scaffali], [UC-3.1],
    [FM-3.1.1.3], [Obbligatorio], [L'utente deve poter definire l'orientamento rispetto al piano degli scaffali], [UC-3.1],
    [FM-3.1.1.4], [Obbligatorio], [L'utente deve poter definire la larghezza degli scaffali], [UC-3.1],
    [FM-3.1.1.5], [Obbligatorio], [L'utente deve poter definire il numero di piani degli scaffali], [UC-3.1],
    [FD-3.1.1.6], [Desiderabile], [L'utente deve poter definire altezze diverse per ogni piano degli scaffali], [Verbale esterno\ 23-12-15],
    [FM-3.1.2], [Obbligatorio], [L'utente deve poter posizionare gli scaffali creati nell'ambiente], [UC-3.1],
    [FM-3.2], [Obbligatorio], [L'utente deve poter modificare gli scaffali], [UC-3.2],
    [FM-3.2.1], [Obbligatorio], [L'utente deve poter modificare la lunghezza degli scaffali], [UC-3.2],
    [FM-3.2.2], [Obbligatorio], [L'utente deve poter modificare la larghezza degli scaffali], [UC-3.2],
    [FM-3.2.3], [Obbligatorio], [L'utente deve poter modificare la profondità degli scaffali], [UC-3.2],
    [FM-3.2.4], [Obbligatorio], [L'utente deve poter modificare l'orientamento rispetto al piano degli scaffali], [UC-3.2],
    [FM-3.2.5], [Obbligatorio], [L'utente deve poter modificare il numero di piani gli scaffali], [UC-3.2],
    [FM-3.3], [Obbligatorio], [L'utente deve poter spostare gli scaffali all'interno del magazzino], [UC-3.3],
    [FM-3.3.1], [Obbligatorio], [L'utente deve poter spostare gli scaffali in orizzontale], [UC-3.3],
    [FM-3.3.2], [Obbligatorio], [L'utente deve poter spostare gli scaffali in profondità], [UC-3.3],
    [FM-3.3.3], [Obbligatorio], [L'utente deve poter ruotare gli scaffali], [UC-3.3],
    [FM-3.3.3.1], [Obbligatorio], [L'utente deve poter ruotare gli scaffali con angoli di 90°], [UC-3.3],
    [FO-3.3.3.2], [Opzionale], [L'utente deve poter ruotare gli scaffali con angoli diversi da 90°], [Verbale esterno\ 23-12-06],
    [FM-3.3.4], [Obbligatorio], [L'utente visualizza un errore riguardo lo spostamento dello scaffale in una zona non libera], [UC-3.3.1],
    [FM-3.4], [Obbligatorio], [L'utente deve poter eliminare gli scaffali], [UC-3.4],
    [FM-3.4.1], [Obbligatorio], [L'utente visualizza un errore riguardo l'eliminazione di uno scaffale non vuoto], [UC-3.4.1],

    [FM-4], [Obbligatorio], [L'utente deve poter gestire i bin], [UC-4],
    [FM-4.1], [Obbligatorio], [L'utente deve poter creare i bin], [UC-4.1],
    [FM-4.1.1], [Obbligatorio], [L'utente deve poter definire le dimensioni dei bin], [UC-4.1],
    [FM-4.1.1.1], [Obbligatorio], [L'utente deve poter definire la profondità dei bin], [UC-4.1],
    [FM-4.1.1.2], [Obbligatorio], [L'utente deve poter definire la larghezza dei bin], [UC-4.1],
    [FM-4.1.1.3], [Obbligatorio], [L'utente deve poter definire l'altezza dei bin], [UC-4.1],
    [FM-4.2], [Obbligatorio], [L'utente deve poter modificare i bin], [UC-4.2],
    [FM-4.2.1], [Obbligatorio], [L'utente deve poter modificare la profondità dei bin], [UC-4.2],
    [FM-4.2.2], [Obbligatorio], [L'utente deve poter modificare la larghezza dei bin], [UC-4.2],
    [FM-4.2.3], [Obbligatorio], [L'utente deve poter modificare l'altezza dei bin], [UC-4.2],
    [FM-4.3], [Obbligatorio], [L'utente deve poter eliminare i bin], [UC-4.3],
    [FM-4.3.1], [Obbligatorio], [L'utente visualizza un errore riguardo la cancellazione di un bin non vuoto], [UC-4.3.1],

    [FM-5], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di dati dimensionali non validi], [UC-5],
    [FM-5.1], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di dimensioni negative o uguali a zero], [UC-5.1],
    [FM-5.1.1], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di una lunghezza negativa o uguale a zero], [UC-5.1],
    [FM-5.1.2], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di una larghezza negativa o uguale a zero], [UC-5.1],
    [FM-5.1.3], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di un'altezza negativa o uguale a zero], [UC-5.1],
    [FM-5.2], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di dimensioni eccessive], [UC-5.2],
    [FM-5.2.1], [Obbligatorio], [L'utente visualizza un errore per l'inserimento di dimensioni che creano collisioni tra l'oggetto modificato e altri elementi dell'ambiente], [UC-5.2],
    [FM-5.2.2], [Obbligatorio], [L'utente visualizza un errore per l'inserimento di dimensioni che non permettono all'oggetto di essere inserito nell'ambiente], [UC-5.2],

    [FD-6],[Desiderabile], [L'utente deve poter richiedere il caricamento dei dati da database], [UC-6],
    [FD-6.0.1],[Desiderabile], [L'utente deve poter popolare automaticamente l'ambiente leggendo i dati contenuti nel database], [UC-6],
    [FD-6.0.2],[Desiderabile], [L'utente deve poter popolare l'ambiente con gli scaffali caricati da database], [UC-6],
    [FD-6.0.3],[Desiderabile], [L'utente deve poter popolare l'ambiente con i bin caricati da database], [UC-6],
    [FD-6.0.4],[Desiderabile], [L'utente deve poter popolare i bin con i prodotti caricati da database], [UC-6],
    [FO-6.1], [Opzionale], [L'utente deve poter configurare i parametri di connessione al database], [UC-6.1],
    [FO-6.1.1], [Opzionale], [L'utente deve poter indicare il nome del database], [UC-6.1],
    [FO-6.1.2], [Opzionale], [L'utente deve poter indicare il nome utente per la connessione al database], [UC-6.1],
    [FO-6.1.3], [Opzionale], [L'utente deve poter indicare la password per la connessione al database], [UC-6.1],
    [FO-6.1.4], [Opzionale], [L'utente deve poter indicare l'indirizzo del database], [UC-6.1],
    [FO-6.1.5], [Opzionale], [L'utente deve poter indicare la porta del database], [UC-6.1],
    [FD-6.2], [Desiderabile], [L'utente deve poter testare la connessione al database], [UC-6.1],
    [FD-6.3], [Desiderabile], [L'utente visualizza un errore se i dati contenuti nel database non sono conformi], [UC-6.2],
    [FD-6.4], [Desiderabile], [L'utente visualizza un errore se i dati contenuti nel database sono errati], [UC-6.2],

    [FM-7], [Obbligatorio], [L'utente deve poter spostare un prodotto da un bin ad un altro], [UC-7],
    [FM-7.1], [Obbligatorio], [L'utente deve poter spostare un prodotto da un bin d'origine ad un altro di destinazione], [UC-7],
    [FM-7.2], [Obbligatorio], [L'utente deve poter spostare un prodotto da un bin ad un altro tramite _drag and drop_], [UC-7],
    [FM-7.3], [Obbligatorio], [Il sistema deve interrogare una API RESTful per accertare che lo spostamento sia lecito], [UC-7],
    [FD-7.4], [Desiderabile], [Il sistema deve evidenziare il bin di partenza per rendere evidente la richiesta di spostamento], [UC-7],
    [FD-7.5], [Desiderabile], [Il sistema deve evidenziare il bin di destinazione per rendere evidente la richiesta di spostamento], [UC-7],

    [FM-8], [Obbligatorio], [L'utente deve poter visualizzare le informazioni di un bin selezionato], [UC-8],
    [FM-8.1], [Obbligatorio], [L'utente deve poter visualizzare le informazioni del prodotto contenuto in un bin selezionato], [UC-8],

    [FM-9], [Obbligatorio], [L'utente deve poter visualizzare le informazioni di uno scaffale selezionato], [UC-9],

    [FD-10], [Desiderabile], [L'utente deve poter ricercare un prodotto], [UC-10],
    [FD-10.1], [Desiderabile], [L'utente deve poter ricercare un prodotto per ID], [UC-10.1],
    [FD-10.2], [Desiderabile], [L'utente deve poter ricercare un prodotto per nome], [UC-10.2],
    [FD-10.3], [Desiderabile], [L'utente deve poter ricercare uno scaffale], [UC-10.3],
    [FD-10.4], [Desiderabile], [Il sistema deve fornire la lista dei risultati di ricerca], [UC-10],
    [FD-10.5], [Desiderabile], [Il sistema deve evidenziare i risultati di ricerca], [UC-10],

    [FM-11], [Obbligatorio], [L'utente deve poter esplorare visivamente il magazzino], [UC-11],
    [FM-11.1], [Obbligatorio], [L'utente deve poter muovere la visuale sui tre assi], [UC-11.1],
    [FM-11.2], [Obbligatorio], [L'utente deve poter ruotare la visuale], [UC-11.2],
    [FM-11.3], [Obbligatorio], [L'utente deve poter effettuare operazioni di zoom della visuale], [UC-11.3],
    [FM-11.3.1], [Obbligatorio], [L'utente deve poter effettuare l'operazione di zoom-in], [UC-11.3],
    [FM-11.3.2], [Obbligatorio], [L'utente deve poter effettuare l'operazione di zoom-out], [UC-11.3],

    [FM-12], [Obbligatorio], [Il prodotto deve essere ad accesso pubblico, ovvero senza login], [Capitolato],

    [FM-13], [Obbligatorio], [Il prodotto deve prevedere una sola tipologia di utente], [Capitolato],

    [FM-14], [Obbligatorio], [Il prodotto si deve avviare allo stato iniziale ogni volta che viene ricaricata la pagina], [Capitolato],
    [FM-14.1], [Obbligatorio], [Il prodotto non persiste in locale (cookie, `localStorage`) le modifiche fatte all'ambiente], [Capitolato],
    [FM-14.2], [Obbligatorio], [Il prodotto non persiste sul database le modifiche fatte all'ambiente], [Capitolato],
    [FM-14.3], [Obbligatorio], [Il prodotto non deve fornire alcuna opzione per il salvataggio dei dati], [Capitolato]
  ),
  caption: [Requisiti funzionali]
)

== Requisiti di qualità <requisiti-qualita>

#figure(
  table(
    columns: 4,
    align: left,
    [*Codice*], [*Classificazione*], [*Descrizione*], [*Riferimento*],
    [QM-1], [Obbligatorio], [Deve essere rispettato quanto previsto dalle #ndp_v], [Decisione\ interna],
    [QM-2], [Obbligatorio], [Deve essere rispettato quanto previsto dal #pdq_v], [Decisione\ interna],
    [QM-3], [Obbligatorio], [Il codice sorgente deve essere consegnato utilizzando un repository GitHub pubblico], [Capitolato],
    [QM-4], [Obbligatorio], [Devono essere consegnati i diagrammi UML degli UC], [Capitolato],
    [QM-5], [Obbligatorio], [Deve essere consegnata la lista dei bug risolti], [Capitolato],
    [QM-6], [Obbligatorio], [Deve essere fornito un manuale d'uso per l'utente], [Decisione\ interna],
    [QO-7], [Opzionale], [Deve essere consegnato lo schema del DB], [Capitolato],
    [QO-8], [Opzionale], [Deve essere consegnata la documentazione delle API realizzate], [Capitolato],
  ),
  caption: [Requisiti di qualità]
)

== Requisiti di vincolo <requisiti-vincolo><vincoli>

#figure(
  table(
    columns: 4,
    align: left,
    [*Codice*], [*Classificazione*], [*Descrizione*], [*Riferimento*],
    [VM-1], [Obbligatorio], [Il browser utilizzato per accedere al prodotto deve supportare WebGL 2.0], [Interno],
    [VM-2], [Obbligatorio], [L'hardware del client utilizzato per accedere al prodotto deve supportare OpenGL ES 3.0], [Interno],
    [VM-3], [Obbligatorio], [L'utente deve utilizzare un browser Google Chrome versione 89 o successiva], [Interno],
    [VM-4], [Obbligatorio], [L'utente deve utilizzare un browser Microsoft Edge versione 89 o successiva], [Interno],
    [VM-5], [Obbligatorio], [L'utente deve utilizzare un browser Mozilla Firefox versione 16.4 o successiva], [Interno],
    [VM-6], [Obbligatorio], [L'utente deve utilizzare un browser Apple Safari versione 108 o successiva], [Interno],
    [VM-7], [Obbligatorio], [L'utente deve utilizzare un browser Opera Browser versione 76 o successiva], [Interno],
    [VM-8], [Obbligatorio], [L'utente deve utilizzare un browser Google Chrome per Android versione 89 o successiva], [Interno],
    [VM-9], [Obbligatorio], [L'utente deve utilizzare un browser Apple Safari per iOS versione 17.1 o successiva], [Interno],
    [VM-10], [Obbligatorio], [L'utente deve utilizzare un browser Samsung Internet versione 23 o successiva], [Interno],
    [VO-11], [Opzionale], [Il prodotto deve essere eseguibile in un container Docker o Docker Compose], [VE 23-11-15]
  ),
  caption: [Requisiti di vincolo]
)

== Riepilogo requisiti <requisiti-riepilogo>

#figure(
  table(
    columns: 2,
    align: left,
    [*Tipo Requisito*], [*Numero totale*],
    [Requisiti funzionali], [96],
    [Requisiti di qualità], [8],
    [Requisiti di vincolo], [11],
  ),
  caption: [Riepilogo requisiti]
)