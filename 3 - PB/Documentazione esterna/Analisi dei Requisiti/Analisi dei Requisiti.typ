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
- dispositivi mobili touchscreen (es. tablet) in dotazione agli addetti di magazzino.

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
Di planimetria rettangolare oppure personalizzata (basata su un file SVG caricato durante la configurazione), rappresenta lo spazio interno del magazzino su cui opera l'addetto.

Per agevolare il collocamento delle zone, l'ambiente può essere dotato di una griglia di aggancio posta sulla superficie dell'ambiente. La griglia avrà passo regolabile dall'utente.

Le proprietà sono descritte nella @props-ambiente.

#figure(
  table(
    columns: 2,
    [*Proprietà*], [*Descrizione*],
    [Lunghezza], [$>0$ \[m\]],
    [Larghezza], [$>0$ \[m\]\ Per planimetrie ricavate da SVG, la larghezza viene calcolata moltiplicando la lunghezza per il rapporto d'aspetto del file SVG.],
  ),
  caption: "Proprietà dell'ambiente"
) <props-ambiente>

==== Zona
Porzione dell'ambiente atta a contenere uno o più bin, organizzati su livelli e colonne. Le proprietà di ciascuna zona sono descritte nella @props-zona.

#figure(
  table(
    columns: 2,
    [*Proprietà*], [*Descrizione*],
    [ID], [Identificatore numerico univoco.],
    [Lunghezza], [$>0$ \[m\]],
    [Larghezza], [$>0$ \[m\]\ Non inferiore alla somma delle larghezze delle colonne.],
    [Altezza], [$>0$ \[m\]\ Non inferiore alla somma delle altezze dei livelli.],
    [Numero di colonne], [$>=1$],
    [Numero di livelli], [$>=1$],
  ),
  caption: "Proprietà di una zona"
) <props-zona>

Le colonne di una stessa zona possono avere larghezze differenti. Ciascuna zona contiene almeno una colonna. Le colonne di una stessa zona sono numerate in modo incrementale.

#figure(
  table(
    columns: (10em, 10em),
    [*Proprietà*], [*Descrizione*],
    [ID], [Identificatore alfabetico univoco.],
    [Larghezza], [$>0$ \[m\]],
  ),
  caption: "Proprietà di una colonna di una zona"
) <props-colonna>

I livelli partono da terra e sono anche detti "ripiani". Sono numerati dal basso verso l'alto in modo incrementale, a partire da 0. I livelli di una stessa zona possono avere altezze differenti. Ciascuna zona contiene almeno un livello.

#figure(
  table(
    columns: (10em, 10em),
    [*Proprietà*], [*Descrizione*],
    [ID], [Identificatore numerico univoco.],
    [Altezza], [$>0$ \[m\]],
  ),
  caption: "Proprietà di un livello di una zona"
) <props-livello>

Una rappresentazione esemplificativa del modello di zona adottato per questo progetto è in @schema-zona.

#figure(
  image("./imgs/zona.svg", width: 70%),
  caption: "Rappresentazione schematica di una zona con tre livelli e tre colonne. In giallo è evidenziato uno dei bin."
) <schema-zona>

Una zona con un solo livello è anche detta "*area a terra*". Modella una zona del magazzino atta a conservare un prodotto per un periodo di tempo tipicamente limitato. Solitamente si tratta di zone di carico/scarico.

Una zona con più di un livello è anche detta "*scaffale*".

==== Bin
Posizione di una zona atta ad accogliere fino ad un prodotto. Individuata dall'intersezione di livelli e colonne.

==== Prodotto
Elemento ospitabile in un bin. Non ci sono richieste specifiche sulle proprietà di un prodotto.

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

== Introduzione

In questa sezione sono presentati i casi d'uso e i relativi diagrammi relativi a WMS3. I casi d'uso sono stati definiti a seguito dell'analisi del dominio di applicazione e delle funzionalità richieste dal Proponente, durante riunioni interne ed esterne. Le modalità di definizione sono descritte in #ndp_v, alle sezioni _Processo di analisi della missione_ e _Processo di definizione di bisogni e requisiti degli stakeholder_.

I casi d'uso sono organizzati secondo il dominio di appartenenza:
- *Ambiente 3D* (@uc-ambiente): configurazione e modifica dell'ambiente 3D;
- *Zone e Bin* (@uc-zone): operazioni CRUD sulle zone e gestione dei bin;
- *Prodotti* (@uc-prodotti): gestione dei prodotti e della loro movimentazione.

// Utilities for UC printing
#let printUseCaseInfo(title, ..items) = {
  text(title, weight: "bold")
  text(": ")
  if items.pos().len() > 1 or title in ("Precondizioni", "Postcondizioni", "Inclusioni", "Estensioni", "Generalizzazioni", "Generalizzazione di") {
    linebreak()
    for item in items.pos() {
      if item == items.pos().at(items.pos().len() - 1) [+ #item\.]
      else [+ #item\;]
    }
  }
  else {
    text(items.pos().join("") + ".")
    linebreak()
  }
}

#let requirements = json("requirements.json");

#let derivedRequirements(reference) = {
  let subset = ()
  for key in requirements.keys() {
    for req in requirements.at(key) {
      if lower(req.source) == ("uc–" + reference) {
        subset.push(req.id)
      }
    }
  }
  if subset.len() > 0 {
    return printUseCaseInfo("Requisiti derivati", subset.join(", "))
  }
}

// INIZIO UC

#let setUCHeadingCounterTo(value) = {
  let i = 1
  while i < value {
    counter(heading).step(level: 3)
    i+=1
  }
}

#set par(first-line-indent: 0pt)

#show heading.where(level: 3): it => {v(3em, weak: true); it}
#show heading.where(level: 4): it => {v(3em, weak: true); it}
#show heading.where(level: 5): it => {v(3em, weak: true); it}
#show heading.where(level: 6): it => {v(3em, weak: true); it}
#show heading.where(level: 7): it => {v(3em, weak: true); it}
#show heading.where(level: 8): it => {v(3em, weak: true); it}

== Ambiente 3D <uc-ambiente>

#set heading(numbering: (..nums) => {
  let values = nums.pos().slice(2);
  return "UC--" + values.map(str).join(".");
}, supplement: "Caso d'uso")

=== Configurazione ambiente 3D <uc1>

#figure(
  image("./imgs/UC1.svg"),
  caption: "Diagramma UC--1"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha configurato l'ambiente 3D",
  "L'utente dispone di una visualizzazione 3D del magazzino"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona la modalità di configurazione di un ambiente 3D tra le opzioni disponibili"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero configurare un ambiente 3D che rappresenti un magazzino"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Configurazione ambiente 3D con planimetria rettangolare (@uc1.1)],
  [Configurazione ambiente 3D con planimetria definita da file SVG (@uc1.2)]
)
#derivedRequirements("1")

==== Configurazione ambiente 3D con planimetria rettangolare <uc1.1>
#figure(
  image("./imgs/UC1.1.svg"),
  caption: "Diagramma UC--1.1"
)
#printUseCaseInfo(
  "Generalizzazione di",
  [Configurazione ambiente 3D (@uc1)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente sta configurando l'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha configurato un ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona la modalità di configurazione di un ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero configurare un ambiente 3D che rappresenti un magazzino con planimetria rettangolare"
)
#derivedRequirements("1.1")

===== Definizione della larghezza ambiente 3D <uc1.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito la larghezza dell'ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della larghezza dell'ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero definire la larghezza dell'ambiente 3D che rappresenti un magazzino con planimetria rettangolare"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore larghezza non positiva (@uc1.1.1.1)]
)
#derivedRequirements("1.1.1")

====== Visualizzazione errore larghezza non positiva <uc1.1.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo alla larghezza non positiva"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della larghezza dell'ambiente 3D con planimetria rettangolare minore o uguale a zero"
)
#derivedRequirements("1.1.1.1")

===== Definizione della lunghezza ambiente 3D <uc1.1.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito la lunghezza dell'ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della lunghezza dell'ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero definire la lunghezza dell'ambiente 3D che rappresenti un magazzino con planimetria rettangolare"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore lunghezza non positiva (@uc1.1.2.1)]
)
#derivedRequirements("1.1.2")

====== Visualizzazione errore lunghezza non positiva <uc1.1.2.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria rettangolare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo alla lunghezza non positiva"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della lunghezza dell'ambiente 3D con planimetria rettangolare minore o uguale a zero"
)
#derivedRequirements("1.1.2.1")

==== Configurazione ambiente 3D con planimetria definita da file SVG <uc1.2>

#figure(
  image("./imgs/UC1.2.svg"),
  caption: "Diagramma UC--1.2"
)
#printUseCaseInfo(
  "Generalizzazione di",
  [Configurazione ambiente 3D (@uc1)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente sta configurando l'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha configurato un ambiente 3D con planimetria definita a partire da file SVG"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona la modalità di configurazione di un ambiente 3D con planimetria definita da file SVG"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero configurare un ambiente 3D con planimetria definita a partire da un file SVG"
)
#derivedRequirements("1.2")

===== Caricamento file SVG <uc1.2.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria definita da file SVG"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha caricato correttamente un file SVG valido da utilizzare come planimetria dell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un file SVG da caricare"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente seleziona un file SVG vuoto",
  "L'utente seleziona un file non valido al fine della creazione dell'ambiente 3D",
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero caricare un file SVG da utilizzare come planimetria dell'ambiente 3D"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore file vuoto (@uc1.2.1.1)],
  [Visualizzazione errore file non valido (@uc1.2.1.2)]
)
#derivedRequirements("1.2.1")

====== Visualizzazione errore file vuoto <uc1.2.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria definita da file SVG"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo al caricamento di un file vuoto"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un file SVG da caricare",
  [Nel file SVG caricato non è presente alcun elemento grafico (come `path`, `rect`, `circle`, `ellipse`, `line`, `polyline`, `polygon`, `text`, `g`)]
)
#derivedRequirements("1.2.1.1")

====== Visualizzazione errore file non valido <uc1.2.1.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria definita da file SVG"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo al caricamento di un file non valido"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un file non valido (privo della corretta sintassi XML) da caricare"
)
#derivedRequirements("1.2.1.2")

===== Definizione del lato maggiore del magazzino <uc1.2.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria definita da file SVG"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito il lato maggiore dell'ambiente 3D con planimetria definita da file SVG",
  "Il sistema ha calcolato il valore del lato minore dell'ambiente 3D con planimetria definita da file SVG a partire dagli attributi del file caricato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore del lato maggiore dell'ambiente 3D con planimetria definita da file SVG"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero definire il lato maggiore dell'ambiente 3D con planimetria definita da file SVG"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore lato non positivo (@uc1.2.2.1)]
)
#derivedRequirements("1.2.2")

====== Visualizzazione errore lato non positivo <uc1.2.2.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha selezionato la configurazione di un ambiente 3D con planimetria definita da file SVG"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore del lato maggiore dell'ambiente 3D con planimetria definita da file SVG pari o minore di zero"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo al lato maggiore non positivo"
)
#derivedRequirements("1.2.2.1")

=== Modifica ambiente 3D <uc2>

#figure(
  image("./imgs/UC2.svg"),
  caption: "Diagramma UC--2"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha configurato un ambiente 3D durante la sessione corrente"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha modificato la configurazione dell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente modifica l'ambiente 3D attualmente configurato"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero modificare un ambiente 3D già configurato, espandendo o riducendo la sua superficie"
)
#derivedRequirements("2")

==== Definizione larghezza <uc2.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha configurato un ambiente 3D durante la sessione corrente",
  "L'utente sta riconfigurando l'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha ridefinito la larghezza dell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della larghezza dell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero",
  "L'utente inserisce un valore inferiore a quello iniziale"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero ridefinire la larghezza dell'ambiente 3D a seguito della sua configurazione iniziale"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore larghezza non positiva (@uc2.1.1)],
  [Errore dimensione inferiore a quella iniziale (@uc2.3)]
)
#derivedRequirements("2.1")

===== Visualizzazione errore larghezza non positiva <uc2.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha configurato un ambiente 3D durante la sessione corrente",
  "L'utente sta riconfigurando l'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo alla larghezza non positiva"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della larghezza dell'ambiente 3D pari o minore di zero"
)
#derivedRequirements("2.1.1")

==== Definizione lunghezza <uc2.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha configurato un ambiente 3D durante la sessione corrente",
  "L'utente sta riconfigurando l'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha ridefinito la lunghezza dell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della lunghezza dell'ambiente 3D"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero ridefinire la lunghezza dell'ambiente 3D a seguito della sua configurazione iniziale"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore lunghezza non positiva (@uc2.2.1)],
  [Errore dimensione inferiore a quella iniziale (@uc2.3)]
)
#derivedRequirements("2.2")

===== Visualizzazione errore lunghezza non positiva <uc2.2.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha configurato un ambiente 3D durante la sessione corrente",
  "L'utente sta riconfigurando l'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo alla lunghezza non positiva"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della lunghezza dell'ambiente 3D pari o minore di zero"
)
#derivedRequirements("2.2.1")

==== Errore dimensione inferiore a quella iniziale <uc2.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha configurato un ambiente 3D con planimetria definita da file SVG",
  "L'utente sta riconfigurando l'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo alla dimensione inserita inferiore al rispettivo valore indicato durante la configurazione iniziale dell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore di dimensione (lunghezza o larghezza) inferiore a quella iniziale"
)
#derivedRequirements("2.3")

=== Definizione passo griglia di aggancio <uc3>

#figure(
  image("./imgs/UC3.svg", width: 60%),
  caption: "Diagramma UC--3"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha creato un ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito il passo della griglia di aggancio, ovvero un numero non negativo espresso in metri"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un valore del passo della griglia di aggancio"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero definire il passo della griglia di aggancio per poter disporre le zone in modo ordinato. Il passo è un numero non negativo espresso in metri"
)
#derivedRequirements("3")

=== Importazione delle zone da database <uc4>

#figure(
  image("./imgs/UC4.svg"),
  caption: "Diagramma UC--4"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha impostato un ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "I dati relativi alle zone sono stati importati correttamente dal database",
  "Le zone importate sono state collocate nell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona l'importazione delle zone dal database"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'importazione dal database fallisce"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero importare le zone dal database per poterle visualizzare nell'ambiente 3D"
)
#printUseCaseInfo(
  "Inclusioni",
  [Importazione dei bin da database (@uc4.1)]
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore importazione dati da database (@uc6)]
)
#derivedRequirements("4")

==== Importazione dei bin da database <uc4.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha impostato un ambiente 3D",
  "L'utente ha importato le zone dal database"
)
#printUseCaseInfo(
  "Postcondizioni",
  "I dati relativi ai bin sono stati importati correttamente dal database"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona l'importazione dei bin dal database"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero importare i bin dal database per poterli visualizzare nell'ambiente 3D all'interno delle zone importate"
)
#derivedRequirements("4.1")

=== Importazione dei prodotti da database <uc5>

#figure(
  image("./imgs/UC5.svg", width: 90%),
  caption: "Diagramma UC--5"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha impostato un ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "I dati relativi ai prodotti sono stati importati correttamente dal database"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona l'importazione dei prodotti dal database"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'importazione dal database fallisce"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero importare i prodotti dal database per poterli visualizzare nell'ambiente 3D"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore importazione dati da database (@uc6)]
)
#derivedRequirements("5")

=== Visualizzazione errore importazione dati da database <uc6>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha impostato un ambiente 3D",
  "L'utente ha richiesto l'importazione dei dati dal database"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo all'importazione dei dati dal database"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona l'importazione dei dati dal database ma l'importazione fallisce"
)
#derivedRequirements("6")

=== Rotazione del POV <uc7>
#figure(
  image("./imgs/UC7.svg", width: 60%),
  caption: "Diagramma UC--7"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha creato un ambiente 3D",
  "L'utente interagisce con il sistema per ruotare il proprio punto di vista attorno all'asse longitudinale"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha ruotato il punto di vista lungo l'asse longitudinale"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente ruota il punto di vista tramite mouse, tastiera o touchscreen"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero ruotare il punto di vista attorno all'asse longitudinale per poter visualizzare l'ambiente 3D da diverse angolazioni"
)
#derivedRequirements("7")

=== Panning del POV <uc8>
#figure(
  image("./imgs/UC8.svg", width: 60%),
  caption: "Diagramma UC--8"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha creato un ambiente 3D",
  "L'utente interagisce con il sistema per spostare il proprio punto di vista lungo l'asse orizzontale"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha spostato il punto di vista lungo l'asse orizzontale"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente sposta il punto di vista tramite mouse, tastiera o touchscreen"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero spostare orizzontalmente il punto di vista per poter visualizzare l'ambiente 3D da diverse posizioni"
)
#derivedRequirements("8")

=== Zoom-in sull'ambiente 3D <uc9>
#figure(
  image("./imgs/UC9.svg", width: 60%),
  caption: "Diagramma UC--9"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha creato un ambiente 3D",
  "L'utente interagisce con il sistema per effettuare lo zoom-in"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha ristretto il proprio campo visivo sull'ambiente 3D",
  "L'utente ha avvicinato il proprio punto di vista all'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente effettua lo zoom-in tramite mouse, tastiera o touchscreen"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero effettuare lo zoom-in per poter visualizzare l'ambiente 3D da diverse distanze"
)
#derivedRequirements("9")

=== Zoom-out sull'ambiente 3D <uc10>
#figure(
  image("./imgs/UC10.svg", width: 60%),
  caption: "Diagramma UC--10"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha creato un ambiente 3D",
  "L'utente interagisce con il sistema per effettuare lo zoom-out"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha allargato il proprio campo visivo sull'ambiente 3D",
  "L'utente ha allontanato il proprio punto di vista sull'ambiente 3D",
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente effettua lo zoom-out tramite mouse, tastiera o touchscreen"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero effettuare lo zoom-out per poter visualizzare l'ambiente 3D da diverse distanze"
)
#derivedRequirements("10")

=== Reimpostazione ambiente 3D <uc11>

#figure(
  image("./imgs/UC11.svg"),
  caption: "Diagramma UC--11"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha impostato un ambiente 3D",
)
#printUseCaseInfo(
  "Postcondizioni",
  "La configurazione dell'ambiente 3D è stata reimpostata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la reimpostazione dell'ambiente 3D"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero reimpostare un ambiente 3D già configurato, compresi i dati eventualmente importati da database e quelli immessi manualmente, per poter ricominciare da zero con impostazioni diverse"
)
#printUseCaseInfo(
  "Inclusioni",
  [Reset movimentazioni (@uc11.1)],
  [Reset modifiche alle zone (@uc11.2)],
  [Reset planimetria (@uc11.3)],
  [Rimozione dati importati (@uc11.4)]
)
#derivedRequirements("11")

==== Reset movimentazioni <uc11.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha impostato un ambiente 3D",
)
#printUseCaseInfo(
  "Postcondizioni",
  "La lista delle movimentazioni è stata azzerata",
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la reimpostazione dell'ambiente 3D"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero reimpostare le movimentazioni per poter tornare allo stato iniziale"
)
#derivedRequirements("11.1")

==== Reset modifiche alle zone <uc11.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha impostato un ambiente 3D",
)
#printUseCaseInfo(
  "Postcondizioni",
  "Tutte le modifiche alle zone (incluse aggiunte e cancellazioni) sono state annullate"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la reimpostazione dell'ambiente 3D"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero reimpostare le modifiche alle zone per poter ricominciare da zero la configurazione dell'ambiente 3D"
)
#derivedRequirements("11.2")

==== Reset planimetria <uc11.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha impostato un ambiente 3D",
)
#printUseCaseInfo(
  "Postcondizioni",
  "La configurazione della planimetria è stata reimpostata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la reimpostazione dell'ambiente 3D"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero reimpostare la planimetria per poter ricominciare da zero la configurazione dell'ambiente 3D"
)
#derivedRequirements("11.3")

==== Rimozione dati importati <uc11.4>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha impostato un ambiente 3D",
)
#printUseCaseInfo(
  "Postcondizioni",
  "I dati importati da database sono stati rimossi"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la reimpostazione dell'ambiente 3D"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero rimuovere i dati importati da database per poter ricominciare da zero la configurazione dell'ambiente 3D"
)
#derivedRequirements("11.4")

#pagebreak()

#set heading(numbering: "1.1", supplement: "Sezione")

== Zone e Bin <uc-zone>

#set heading(numbering: (..nums) => {
  let values = nums.pos().slice(2);
  return "UC--" + values.map(str).join(".");
}, supplement: "Caso d'uso")
#setUCHeadingCounterTo(12)

=== Creazione zona <uc12>

#figure(
  image("./imgs/UC12.svg", width: 120%),
  caption: "Diagramma UC--12"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "La zona è stata aggiunta all'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente configura una nuova zona da creare",
  "L'utente colloca la zona in una posizione valida nell'ambiente 3D"
)
#printUseCaseInfo(
  "Inclusioni",
  [Definizione ID zona (@uc12.1)],
  [Definizione lunghezza zona (@uc12.2)],
  [Definizione orientamento zona (@uc12.3)],
  [Definizione colonne zona (@uc12.4)],
  [Definizione livelli zona (@uc12.5)],
  [Collocamento della zona nell'ambiente 3D (@uc16)]
)
#derivedRequirements("12")

==== Definizione ID zona <uc12.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito l'ID della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore dell'ID della zona"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore già utilizzato per un'altra zona"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero definire l'ID di una zona per poterla identificare in modo univoco"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore ID zona già in uso (@uc12.1.1)]
)
#derivedRequirements("12.1")

===== Visualizzazione errore ID zona già in uso <uc12.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo all'ID della zona già in uso"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore dell'ID della zona già associato ad un'altra zona"
)
#derivedRequirements("12.1.1")

==== Definizione lunghezza zona <uc12.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito la lunghezza della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della lunghezza della zona"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero definire la lunghezza di una zona per poterla collocare nell'ambiente 3D"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore lunghezza non positiva (@uc12.2.1)]
)
#derivedRequirements("12.2")

===== Visualizzazione errore lunghezza non positiva <uc12.2.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo alla lunghezza non positiva"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della lunghezza della zona pari o minore di zero"
)
#derivedRequirements("12.2.1")

==== Definizione orientamento zona <uc12.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito l'orientamento della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un valore dell'orientamento della zona tra i valori disponibili"
)
#printUseCaseInfo(
  "User story associata",
  [Come utente, desidero definire l'orientamento di una zona (tra "nord-sud" (`NS`) e "ovest-est" (`WE`)) per poterla collocare nell'ambiente 3D]
)
#derivedRequirements("12.3")

==== Definizione colonne zona <uc12.4>
#figure(
  image("./imgs/UC12.4.svg", width: 120%),
  caption: "Diagramma UC--12.4"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito le proprietà delle colonne della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente definisce le proprietà delle colonne della zona"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero personalizzare le colonne di una zona per poterla rendere il più simile possibile all'ambiente reale"
)
#derivedRequirements("12.4")

===== Definizione numero colonne <uc12.4.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito il numero di colonne della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce il numero di colonne della zona"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore di 1"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore numero colonne non conforme (@uc12.4.1.1)]
)
#derivedRequirements("12.4.1")

====== Visualizzazione errore numero colonne non conforme <uc12.4.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo al valore immesso non conforme"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un numero di colonne minore di 1"
)
#derivedRequirements("12.4.1.1")

===== Definizione larghezza colonne <uc12.4.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito la larghezza delle colonne della zona",
  "La larghezza della zona è calcolata come la somma delle larghezze delle singole colonne"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente definisce la larghezza delle colonne della zona secondo una delle modalità disponibili"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Definizione larghezza colonne tramite equa distribuzione (@uc12.4.2.1)],
  [Definizione larghezza colonne personalizzata (@uc12.4.2.2)]
)
#derivedRequirements("12.4.2")

====== Definizione larghezza colonne tramite equa distribuzione <uc12.4.2.1>
#printUseCaseInfo(
  "Generalizzazione di",
  [Definizione larghezza colonne (@uc12.4.2)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito la larghezza delle colonne della zona",
  "La larghezza della zona è suddivisa equamente in tante parti quante sono le colonne",
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona la modalità di equa distribuzione della larghezza delle colonne",
)
#printUseCaseInfo(
  "Inclusioni",
  [Definizione larghezza zona (@uc12.4.2.1.1)]
)
#derivedRequirements("12.4.2.1")

======= Definizione larghezza zona <uc12.4.2.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito la larghezza della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della larghezza della zona"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore larghezza non positiva (@uc12.4.3)]
)
#derivedRequirements("12.4.2.1.1")

====== Definizione larghezza colonne personalizzata <uc12.4.2.2>
#printUseCaseInfo(
  "Generalizzazione di",
  [Definizione larghezza colonne (@uc12.4.2)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito la larghezza delle colonne della zona",
  "La larghezza della zona è suddivisa in tante parti quante sono le colonne, ciascuna con larghezza personalizzata",
  "La larghezza della zona è calcolata come la somma delle larghezze delle singole colonne"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente definisce la larghezza di ciascuna colonna della zona"
)
#printUseCaseInfo(
  "Inclusioni",
  [Definizione larghezza singola colonna (@uc12.4.2.2.1)]
)
#derivedRequirements("12.4.2.2")

======= Definizione larghezza singola colonna <uc12.4.2.2.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona",
  "L'utente ha selezionato la modalità di definizione personalizzata della larghezza delle colonne"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito la larghezza di una colonna della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della larghezza di una colonna della zona"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore larghezza non positiva (@uc12.4.3)]
)
#derivedRequirements("12.4.2.2.1")

===== Visualizzazione errore larghezza non positiva <uc12.4.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo alla larghezza non positiva"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore della larghezza minore o uguale a zero"
)
#derivedRequirements("12.4.3")

==== Definizione livelli zona <uc12.5>
#figure(
  image("./imgs/UC12.5.svg", width: 80%),
  caption: "Diagramma UC--12.5"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito le proprietà dei livelli della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente definisce le proprietà dei livelli della zona"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero personalizzare i livelli di una zona per poterla rendere il più simile possibile all'ambiente reale"
)
#derivedRequirements("12.5")

===== Definizione numero livelli <uc12.5.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito il numero di livelli della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce il numero di livelli della zona"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore numero livelli minore o uguale a zero (@uc12.5.1.1)]
)
#derivedRequirements("12.5.1")

====== Visualizzazione errore numero livelli minore o uguale a zero <uc12.5.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo al valore immesso minore o uguale a zero"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un numero di livelli minore o uguale a zero"
)
#derivedRequirements("12.5.1.1")

===== Definizione altezza livelli <uc12.5.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito l'altezza dei livelli della zona secondo una delle modalità disponibili",
  "L'altezza della zona è calcolata come la somma delle altezze dei singoli livelli"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una modalità di definizione dell'altezza dei livelli della zona tra quelle disponibili"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Definizione altezza livelli personalizzata (@uc12.5.2.1)],
)
#derivedRequirements("12.5.2")

====== Definizione altezza livelli personalizzata <uc12.5.2.1>
#printUseCaseInfo(
  "Generalizzazione di",
  [Definizione altezza livelli (@uc12.5.2)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito l'altezza dei livelli della zona",
  "L'altezza della zona è suddivisa in tante parti quante sono i livelli, ciascuna con altezza personalizzata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente definisce l'altezza di ciascun livello della zona"
)
#printUseCaseInfo(
  "Inclusioni",
  [Definizione altezza singolo livello (@uc12.5.2.1.1)]
)
#derivedRequirements("12.5.2.1")

======= Definizione altezza singolo livello <uc12.5.2.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona",
  "L'utente ha selezionato la modalità di definizione personalizzata dell'altezza dei livelli della zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente ha definito l'altezza di un livello della zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore dell'altezza di un livello della zona"
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente inserisce un valore minore o uguale a zero"
)
#derivedRequirements("12.5.2.1.1")

======== Visualizzazione errore altezza non positiva <uc12.5.2.1.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta configurando una nuova zona",
  "L'utente ha selezionato la modalità di definizione personalizzata dell'altezza dei livelli della zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo all'altezza non positiva"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce un valore dell'altezza minore o uguale a zero"
)
#derivedRequirements("12.5.2.1.1.1")

=== Modifica zona <uc13>

#figure(
  image("./imgs/UC13.svg", width: 120%),
  caption: "Diagramma UC--13"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "La zona è stata modificata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona la zona da modificare",
  "L'utente modifica le proprietà della zona"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero modificare le proprietà di una zona, creata in precedenza o importata da database, per poterla adattare alle mie esigenze"
)
#printUseCaseInfo(
  "Inclusioni",
  [Definizione lunghezza zona (@uc12.2)],
  [Definizione orientamento zona (@uc12.3)],
  [Definizione colonne zona (@uc12.4)],
  [Definizione livelli zona (@uc12.5)],
  [Collocamento della zona nell'ambiente 3D (@uc16)]
)
#printUseCaseInfo(
  "Estensioni",
  [Rimozione singola colonna (@uc13.1)],
  [Rimozione singolo livello (@uc13.2)],
)
#derivedRequirements("13")

==== Rimozione singola colonna <uc13.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "L'utente sta modificando una zona",
  "La zona modificata possiede almeno 2 colonne"
)
#printUseCaseInfo(
  "Postcondizioni",
  "La colonna selezionata è stata rimossa dalla zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una colonna vuota da rimuovere",
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente seleziona una colonna con almeno un bin occupato",
  "L'utente seleziona una colonna vuota con indice inferiore ad una colonna con almeno un bin occupato"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore operazione impossibile perché insiste su bin occupato (@uc13.3)]
)
#derivedRequirements("13.1")

==== Rimozione singolo livello <uc13.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "L'utente sta modificando una zona",
  "La zona modificata possiede almeno 2 livelli"
)
#printUseCaseInfo(
  "Postcondizioni",
  "Il livello selezionato è stato rimosso dalla zona"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un livello vuoto da rimuovere",
)
#printUseCaseInfo(
  "Scenari alternativi",
  "L'utente seleziona un livello con almeno un bin occupato",
  "L'utente seleziona un livello vuoto con indice inferiore ad un livello con almeno un bin occupato"
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione errore operazione impossibile perché insiste su bin occupato (@uc13.3)]
)
#derivedRequirements("13.2")

==== Visualizzazione errore operazione impossibile perché insiste su bin occupato <uc13.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "L'utente sta modificando una zona",
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza un errore relativo all'impossibilità di rimuovere la colonna o il livello selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la rimozione di una colonna o di un livello con almeno un bin occupato"
)
#derivedRequirements("13.3")

=== Eliminazione zona <uc14>

#figure(
  image("./imgs/UC14.svg", width: 60%),
  caption: "Diagramma UC--14"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "La zona è stata eliminata dall'ambiente 3D",
  "I prodotti collocati nei bin della zona rimossa sono elencati nella lista dei prodotti senza collocazione"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona la zona da eliminare",
  "L'utente conferma l'eliminazione della zona"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero eliminare una zona dall'ambiente 3D per fare spazio ad altre zone o semplicemente per rimuoverla"
)
#derivedRequirements("14")

=== Ispezione zona <uc15>

#figure(
  image("./imgs/UC15.svg", width: 110%),
  caption: "Diagramma UC--15"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza le informazioni relative alla zona selezionata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una zona da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare le informazioni associate ad una zona"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione ID zona (@uc15.1)],
  [Visualizzazione larghezza zona (@uc15.2)],
  [Visualizzazione lunghezza zona (@uc15.3)],
  [Visualizzazione altezza zona (@uc15.4)],
  [Evidenziazione zona selezionata (@uc15.5)],
  [Visualizzazione lista bin inclusi nella zona (@uc15.6)]
)
#derivedRequirements("15")

==== Visualizzazione ID zona <uc15.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID della zona selezionata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una zona da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare l'ID di una zona per poterla identificare in modo univoco"
)
#derivedRequirements("15.1")

==== Visualizzazione larghezza zona <uc15.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la larghezza della zona selezionata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una zona da ispezionare"
)
#derivedRequirements("15.2")

==== Visualizzazione lunghezza zona <uc15.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lunghezza della zona selezionata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una zona da ispezionare"
)
#derivedRequirements("15.3")

==== Visualizzazione altezza zona <uc15.4>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'altezza della zona selezionata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una zona da ispezionare"
)
#derivedRequirements("15.4")

==== Evidenziazione zona selezionata <uc15.5>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "La zona selezionata è evidenziata nell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una zona da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero che la zona ispezionata venga evidenziata graficamente per poterla individuare a colpo d'occhio nell'ambiente 3D"
)
#derivedRequirements("15.5")

==== Visualizzazione lista bin inclusi nella zona <uc15.6>
#figure(
  image("./imgs/UC15.6.svg", width: 90%),
  caption: "Diagramma UC--15.6"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona",
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista dei bin inclusi nella zona selezionata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una zona da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare la lista dei bin inclusi in una zona per poter controllare la disposizione dei prodotti e il tasso di occupazione della zona stessa"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione singolo bin (@uc15.6.1)]
)
#derivedRequirements("15.6")

===== Visualizzazione singolo bin <uc15.6.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta ispezionando una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza le informazioni relative ad un singolo bin presente nella zona selezionata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista delle zone"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione ID bin (@uc15.6.1.1)],
  [Visualizzazione stato bin (@uc15.6.1.2)],
)
#derivedRequirements("15.6.1")

====== Visualizzazione ID bin <uc15.6.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta ispezionando una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID del bin selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista dei bin"
)
#derivedRequirements("15.6.1.1")

====== Visualizzazione stato bin <uc15.6.1.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente sta ispezionando una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza lo stato di occupazione del bin selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista dei bin"
)
#derivedRequirements("15.6.1.2")

=== Collocamento della zona nell'ambiente 3D <uc16>
#figure(
  image("./imgs/UC16.svg", width: 110%),
  caption: "Diagramma UC--16"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
)
#printUseCaseInfo(
  "Postcondizioni",
  "La zona è stata collocata nell'ambiente 3D",
)
#printUseCaseInfo(
  "Scenario principale",
  [L'utente seleziona una zona da collocare, tramite creazione (@uc12) o modifica (@uc13)],
  "L'utente posiziona la zona nell'ambiente 3D",
  "L'utente conferma il collocamento della zona nell'ambiente 3D"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero collocare una zona in una posizione specifica dell'ambiente 3D"
)
#printUseCaseInfo(
  "Estensioni",
  [Evidenziazione zona non collocabile (@uc16.1)],
)
#derivedRequirements("16")

==== Evidenziazione zona non collocabile <uc16.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "L'utente ha selezionato una zona da collocare",
)
#printUseCaseInfo(
  "Postcondizioni",
  [L'utente visualizza un _hint_ grafico relativo all'impossibilità di collocare la zona nella posizione desiderata],
  "La zona non viene collocata nell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente tenta di collocare una zona in una posizione non valida"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Evidenziazione zona collisa con zone già collocate (@uc16.1.1)],
  [Evidenziazione zona non collocabile perché al di fuori del perimetro (@uc16.1.2)],
)
#derivedRequirements("16.1")

===== Evidenziazione zona collisa con zone già collocate <uc16.1.1>
#printUseCaseInfo(
  "Generalizzazione di",
  [Evidenziazione zona non collocabile (@uc16.1)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Scenario principale",
  "L'utente tenta di collocare una zona in una posizione già occupata da un'altra zona",
  "Le zone si sovrappongono e collidono"
)
#derivedRequirements("16.1.1")

===== Evidenziazione zona non collocabile perché al di fuori del perimetro <uc16.1.2>
#printUseCaseInfo(
  "Generalizzazione di",
  [Evidenziazione zona non collocabile (@uc16.1)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Scenario principale",
  "L'utente tenta di collocare una zona al di fuori del perimetro dell'ambiente 3D"
)
#derivedRequirements("16.1.2")

=== Visualizzazione lista zone <uc17>
#figure(
  image("./imgs/UC17.svg"),
  caption: "Diagramma UC--17"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista delle zone presenti nell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione della lista delle zone"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare la lista delle zone presenti nell'ambiente 3D"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione singola zona (@uc17.1)],
)
#derivedRequirements("17")

==== Visualizzazione singola zona <uc17.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista delle zone",
  "È presente almeno una zona nell'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza le informazioni relative ad una singola zona presente in lista"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista delle zone"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione ID zona (@uc17.1.1)],
)
#derivedRequirements("17.1")

===== Visualizzazione ID zona <uc17.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista delle zone",
  "È presente almeno una zona nell'ambiente 3D"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID della zona visualizzata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista delle zone"
)
#derivedRequirements("17.1.1")

=== Ricerca zona <uc18>
#figure(
  image("./imgs/UC18.svg", width: 80%),
  caption: "Diagramma UC--18"
)
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza i risultati della ricerca filtrati secondo il termine inserito e la modalità scelta"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona la modalità di ricerca tra quelle disponibili",
  "L'utente inserisce il termine di ricerca"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero poter ricercare una zona per individuarla velocemente nella lista delle zone"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Ricerca per ID zona (@uc18.1)],
)
#derivedRequirements("18")

==== Ricerca per ID zona <uc18.1>
#printUseCaseInfo(
  "Generalizzazione di",
  [Ricerca prodotti (@uc18)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista delle zone filtrata secondo l'ID della zona inserito come termine di ricerca"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce l'ID della zona da cercare"
)
#derivedRequirements("18.1")

=== Ispezione bin <uc19>
#figure(
  image("./imgs/UC19.svg"),
  caption: "Diagramma UC--19"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza le informazioni relative al bin selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un bin da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare le informazioni associate ai bin presenti nell'ambiente 3D"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione ID bin (@uc19.1)],
  [Visualizzazione lunghezza (@uc19.2)],
  [Visualizzazione larghezza (@uc19.3)],
  [Visualizzazione altezza (@uc19.4)],
  [Evidenziazione bin selezionato (@uc19.5)],
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione informazioni prodotto (@uc22)]
)
#derivedRequirements("19")

==== Visualizzazione ID bin <uc19.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID del bin selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un bin da ispezionare"
)
#derivedRequirements("19.1")

==== Visualizzazione lunghezza bin <uc19.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lunghezza del bin selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un bin da ispezionare"
)
#derivedRequirements("19.2")

==== Visualizzazione larghezza bin <uc19.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la larghezza del bin selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un bin da ispezionare"
)
#derivedRequirements("19.3")

==== Visualizzazione altezza bin <uc19.4>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'altezza del bin selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un bin da ispezionare"
)
#derivedRequirements("19.4")

==== Evidenziazione bin selezionato <uc19.5>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "Il bin selezionato è evidenziato nell'ambiente 3D"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un bin da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero che il bin ispezionato venga evidenziato graficamente per poterlo individuare a colpo d'occhio nell'ambiente 3D"
)
#derivedRequirements("19.5")

=== Spostamento POV su zona specifica <uc20>

#figure(
  image("./imgs/UC20.svg", width: 80%),
  caption: "Diagramma UC--20"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'inquadratura dell'ambiente 3D si sposta sulla zona specificata"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona una zona da ispezionare",
  "L'utente richiede lo spostamento del POV così da inquadrare la zona"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero spostare il POV sull'ambiente 3D per poter visualizzare una zona specifica"
)
#derivedRequirements("20")

=== Spostamento POV su bin specifico <uc21>

#figure(
  image("./imgs/UC21.svg", width: 80%),
  caption: "Diagramma UC--21"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha creato un ambiente 3D",
  "Nell'ambiente 3D è presente almeno una zona"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'inquadratura dell'ambiente 3D si sposta sul bin specificato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un bin da ispezionare",
  "L'utente richiede lo spostamento del POV così da inquadrare il bin"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero spostare il POV sull'ambiente 3D per poter visualizzare un bin specifico"
)
#derivedRequirements("21")

#pagebreak()

#set heading(numbering: "1.1", supplement: "Sezione")

== Prodotti <uc-prodotti>

#set heading(numbering: (..nums) => {
  let values = nums.pos().slice(2);
  return "UC--" + values.map(str).join(".");
}, supplement: "Caso d'uso")
#setUCHeadingCounterTo(22)

=== Visualizzazione informazioni prodotto <uc22>

#figure(
  image("./imgs/UC22.1.svg", width: 75%),
  caption: "Diagramma UC--22"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha richiesto l'importazione dei prodotti",
  "Il sistema ha importato correttamente almeno un prodotto"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza le informazioni relative al prodotto selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare le informazioni associate ai prodotti presenti nel magazzino"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione ID prodotto (@uc22.1)],
  [Visualizzazione nome prodotto (@uc22.2)],
  [Visualizzazione categoria prodotto (@uc22.3)],
  [Visualizzazione larghezza prodotto (@uc22.4)],
  [Visualizzazione lunghezza prodotto (@uc22.5)],
  [Visualizzazione altezza prodotto (@uc22.6)],
  [Visualizzazione peso prodotto (@uc22.7)],
)
#derivedRequirements("22")

==== Visualizzazione ID prodotto <uc22.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha selezionato un prodotto da ispezionare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID del prodotto selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare l'informazione sull'ID di un prodotto"
)
#derivedRequirements("22.1")

==== Visualizzazione nome prodotto <uc22.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha selezionato un prodotto da ispezionare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza il nome del prodotto selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare l'informazione sul nome di un prodotto"
)
#derivedRequirements("22.2")

==== Visualizzazione categoria prodotto <uc22.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha selezionato un prodotto da ispezionare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la categoria del prodotto selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare l'informazione sulla categoria di un prodotto"
)
#derivedRequirements("22.3")

==== Visualizzazione larghezza prodotto <uc22.4>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha selezionato un prodotto da ispezionare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la larghezza del prodotto selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare l'informazione sulla larghezza di un prodotto"
)
#derivedRequirements("22.4")

==== Visualizzazione lunghezza prodotto <uc22.5>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha selezionato un prodotto da ispezionare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lunghezza del prodotto selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare l'informazione sulla lunghezza di un prodotto"
)
#derivedRequirements("22.5")

==== Visualizzazione altezza prodotto <uc22.6>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha selezionato un prodotto da ispezionare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'altezza del prodotto selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare l'informazione sull'altezza di un prodotto"
)
#derivedRequirements("22.6")

==== Visualizzazione peso prodotto <uc22.7>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha selezionato un prodotto da ispezionare"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza il peso del prodotto selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto da ispezionare"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare l'informazione sul peso di un prodotto"
)
#derivedRequirements("22.7")

=== Visualizzazione lista prodotti <uc23>

#figure(
  image("./imgs/UC23.svg", width: 115%),
  caption: "Diagramma UC--23"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha richiesto l'importazione dei prodotti",
  "Il sistema ha importato correttamente almeno un prodotto"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista dei prodotti importati secondo il criterio selezionato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione di una delle liste di prodotti tra quelle disponibili"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare la lista dei prodotti importati da database e visualizzarne i dettagli"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Visualizzazione lista prodotti non collocati (@uc23.1)],
  [Visualizzazione lista prodotti collocati (@uc23.2)]
)
#derivedRequirements("23")

==== Visualizzazione lista prodotti non collocati <uc23.1>
#figure(
  image("./imgs/UC23.1.1.svg", width: 80%),
  caption: "Diagramma UC--23.1"
)
#printUseCaseInfo(
  "Generalizzazione di",
  [Visualizzazione lista prodotti (@uc23)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista dei prodotti non collocati nei bin"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione della lista dei prodotti non collocati nei bin"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare la lista dei prodotti non collocati nei bin delle zone dell'ambiente 3D per poterli collocare"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione singolo prodotto (@uc23.1.1)]
)
#derivedRequirements("23.1")

===== Visualizzazione singolo prodotto <uc23.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista dei prodotti"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza le informazioni relative ad un singolo prodotto, non collocato nei bin, presente in lista"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione della lista dei prodotti non collocati nei bin"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Visualizzazione singolo prodotto collocato (@uc23.2.1)]
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione nome prodotto (@uc23.1.1.1)],
  [Visualizzazione ID prodotto (@uc23.1.1.2)],
  [Visualizzazione categoria prodotto (@uc23.1.1.3)]
)
#derivedRequirements("23.1.1")

====== Visualizzazione nome prodotto <uc23.1.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista dei prodotti"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza il nome del prodotto visualizzato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista dei prodotti"
)
#derivedRequirements("23.1.1.1")

====== Visualizzazione ID prodotto <uc23.1.1.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista dei prodotti"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID del prodotto visualizzato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista dei prodotti"
)
#derivedRequirements("23.1.1.2")

====== Visualizzazione categoria prodotto <uc23.1.1.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista dei prodotti"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la categoria del prodotto visualizzato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista dei prodotti"
)
#derivedRequirements("23.1.1.3")

==== Visualizzazione lista prodotti collocati <uc23.2>
#figure(
  image("./imgs/UC23.2.1.svg", width: 80%),
  caption: "Diagramma UC--23.2.1"
)
#printUseCaseInfo(
  "Generalizzazione di",
  [Visualizzazione lista prodotti (@uc23)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista dei prodotti collocati nei bin"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione della lista dei prodotti collocati nei bin"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare la lista dei prodotti collocati nei bin delle zone dell'ambiente 3D"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione singolo prodotto collocato (@uc23.2.1)]
)
#derivedRequirements("23.2")

===== Visualizzazione singolo prodotto collocato <uc23.2.1>
#printUseCaseInfo(
  "Generalizzazione di",
  [Visualizzazione singolo prodotto non collocato (@uc23.1.1)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista dei prodotti collocati nei bin"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza le informazioni relative ad un singolo prodotto, collocato in un bin, presente in lista"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione della lista dei prodotti collocati nei bin"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione ID zona di appartenenza (@uc23.2.1.1)],
  [Visualizzazione ID bin di appartenenza (@uc23.2.1.2)]
)
#derivedRequirements("23.2.1")

====== Visualizzazione ID zona di appartenenza <uc23.2.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista dei prodotti collocati"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID della zona di appartenenza del prodotto visualizzato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista dei prodotti collocati"
)
#derivedRequirements("23.2.1.1")

====== Visualizzazione ID bin di appartenenza <uc23.2.1.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della lista dei prodotti collocati"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID del bin dove si trova il prodotto visualizzato"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un elemento della lista dei prodotti collocati"
)
#derivedRequirements("23.2.1.2")

=== Ricerca prodotti <uc24>

#figure(
  image("./imgs/UC24.svg"),
  caption: "Diagramma UC--24"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha richiesto l'importazione dei prodotti",
  "Il sistema ha importato correttamente almeno un prodotto"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza i risultati della ricerca filtrati secondo il termine inserito e la modalità scelta"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona la modalità di ricerca tra quelle disponibili",
  "L'utente inserisce il termine di ricerca"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero poter ricercare un prodotto per individuarlo velocemente nella lista dei prodotti"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Ricerca per ID prodotto (@uc24.1)],
  [Ricerca per nome prodotto (@uc24.2)],
  [Ricerca per categoria prodotto (@uc24.3)]
)
#derivedRequirements("24")

==== Ricerca per ID prodotto <uc24.1>
#printUseCaseInfo(
  "Generalizzazione di",
  [Ricerca prodotti (@uc24)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista dei prodotti filtrata secondo l'ID del prodotto inserito come termine di ricerca"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce l'ID del prodotto da cercare"
)
#derivedRequirements("24.1")

==== Ricerca per nome prodotto <uc24.2>
#printUseCaseInfo(
  "Generalizzazione di",
  [Ricerca prodotti (@uc24)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista dei prodotti filtrata secondo il nome di prodotto inserito come termine di ricerca"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce il nome del prodotto da cercare"
)
#derivedRequirements("24.2")

==== Ricerca per categoria prodotto <uc24.3>
#printUseCaseInfo(
  "Generalizzazione di",
  [Ricerca prodotti (@uc24)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la lista dei prodotti filtrata secondo la categoria inserita come termine di ricerca"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente inserisce la categoria di prodotto desiderata"
)
#derivedRequirements("24.3")

=== Spostamento prodotto <uc25>
#figure(
  image("./imgs/UC25.svg", width: 120%),
  caption: "Diagramma UC--25"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha richiesto l'importazione dei prodotti",
  "Il sistema ha importato correttamente almeno un prodotto"
)
#printUseCaseInfo(
  "Postcondizioni",
  "Il sistema inserisce l'ordine di movimentazione del prodotto verso il bin di destinazione"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede lo spostamento di un prodotto verso un bin di destinazione"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero spostare un prodotto verso un bin di destinazione per poterlo (ri)collocare nell'ambiente 3D"
)
#printUseCaseInfo(
  "Generalizzazioni",
  [Spostamento prodotto non collocato in un bin (@uc25.1)],
  [Spostamento prodotto collocato in un bin (@uc25.2)]
)
#derivedRequirements("25")

==== Spostamento prodotto non collocato in un bin <uc25.1>
#printUseCaseInfo(
  "Generalizzazione di",
  [Spostamento prodotto (@uc25)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il prodotto selezionato non è collocato in un bin",
)
#printUseCaseInfo(
  "Inclusioni",
  [Invio richiesta di movimentazione (@uc25.3)],
)
#derivedRequirements("25.1")

==== Spostamento prodotto collocato in un bin <uc25.2>
#printUseCaseInfo(
  "Generalizzazione di",
  [Spostamento prodotto (@uc25)]
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il prodotto selezionato è collocato in un bin",
)
#printUseCaseInfo(
  "Estensioni",
  [Invio richiesta di movimentazione (@uc25.3)],
  [Visualizzazione errore spostamento impossibile (@uc25.2.1)]
)
#derivedRequirements("25.2")

===== Visualizzazione errore spostamento impossibile <uc25.2.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha immesso un ordine di movimentazione per lo spostamento di un prodotto",
  "Il bin di destinazione è occupato"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'ordine di movimentazione è annullato",
  "L'ordine di movimentazione non viene inserito nella cronologia",
  "Il prodotto non viene spostato",
  "L'utente visualizza un errore relativo all'impossibilità di spostare il prodotto"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente ha richiesto lo spostamento di un prodotto verso un bin già occupato"
)
#derivedRequirements("25.2.1")

==== Invio richiesta di movimentazione <uc25.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto lo spostamento di un prodotto",
  "Il bin di destinazione è libero"
)
#printUseCaseInfo(
  "Postcondizioni",
  "Il sistema inserisce l'ordine di movimentazione del prodotto verso il bin di destinazione"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente seleziona un prodotto",
  "L'utente seleziona un bin di destinazione",
  "L'utente immette l'odine di movimentazione del prodotto"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione errore spostamento negato (@uc25.3.1)],
  [Visualizzazione errore di connessione alla API (@uc25.3.2)],
)
#derivedRequirements("25.3")

===== Visualizzazione errore spostamento negato <uc25.3.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha immesso un ordine di movimentazione per lo spostamento di un prodotto",
  "Il sistema ha negato lo spostamento del prodotto"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'ordine di movimentazione è annullato",
  "L'ordine di movimentazione non viene inserito nella cronologia",
  "Il prodotto non viene spostato",
  "L'utente visualizza un errore relativo all'impossibilità di spostare il prodotto",
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente ha richiesto lo spostamento di un prodotto ma il sistema ha negato la richiesta"
)
#derivedRequirements("25.3.1")

===== Visualizzazione errore di connessione alla API <uc25.3.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha immesso un ordine di movimentazione per lo spostamento di un prodotto",
  "Il sistema non è connesso alla API"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'ordine di movimentazione è annullato",
  "L'ordine di movimentazione non viene inserito nella cronologia",
  "Il prodotto non viene spostato",
  "L'utente visualizza un errore relativo all'impossibilità di connettersi alla API",
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente ha richiesto lo spostamento di un prodotto ma la API non ha fornito risposta in tempo utile"
)
#derivedRequirements("25.3.2")

=== Visualizzazione cronologia ordini di movimentazione <uc26>
#figure(
  image("./imgs/UC26.svg", width: 115%),
  caption: "Diagramma UC--26"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza la cronologia degli ordini di movimentazione immessi"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione della cronologia degli ordini di movimentazione"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare la cronologia degli ordini di movimentazione immessi per poterli monitorare"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione singolo ordine di movimentazione (@uc26.1)]
)
#derivedRequirements("26")

==== Visualizzazione singolo ordine di movimentazione <uc26.1>
#figure(
  image("./imgs/UC26.1.svg", width: 80%),
  caption: "Diagramma UC--26.1"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della cronologia degli ordini di movimentazione"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza le informazioni relative ad un singolo ordine di movimentazione presente in lista"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione della cronologia degli ordini di movimentazione"
)
#printUseCaseInfo(
  "Inclusioni",
  [Visualizzazione ID bin di destinazione (@uc26.1.2)],
  [Visualizzazione ID prodotto (@uc26.1.3)],
  [Visualizzazione nome prodotto (@uc26.1.4)],
)
#printUseCaseInfo(
  "Estensioni",
  [Visualizzazione ID bin di partenza (@uc26.1.1)]
)
#derivedRequirements("26.1")

===== Visualizzazione ID bin di partenza <uc26.1.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della cronologia degli ordini di movimentazione",
  "L'origine della movimentazione è un bin"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID del bin di partenza dell'ordine di movimentazione"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un ordine di movimentazione presente in lista"
)
#derivedRequirements("26.1.1")

===== Visualizzazione ID bin di destinazione <uc26.1.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della cronologia degli ordini di movimentazione"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID del bin di destinazione dell'ordine di movimentazione"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un ordine di movimentazione presente in lista"
)
#derivedRequirements("26.1.2")

===== Visualizzazione ID prodotto <uc26.1.3>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della cronologia degli ordini di movimentazione"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza l'ID del prodotto oggetto dell'ordine di movimentazione"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un ordine di movimentazione presente in lista"
)
#derivedRequirements("26.1.3")

===== Visualizzazione nome prodotto <uc26.1.4>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione della cronologia degli ordini di movimentazione"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza il nome del prodotto oggetto dell'ordine di movimentazione"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente visualizza un ordine di movimentazione presente in lista"
)
#derivedRequirements("26.1.4")

=== Ispezione ordine di movimentazione <uc27>
#figure(
  image("./imgs/UC27.svg"),
  caption: "Diagramma UC--27"
)
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "Il sistema è operativo",
  "L'utente ha immesso almeno un ordine di movimentazione valido"
)
#printUseCaseInfo(
  "Postcondizioni",
  "L'utente visualizza i bin coinvolti nell'ordine di movimentazione"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione dei bin coinvolti nell'ordine di movimentazione"
)
#printUseCaseInfo(
  "User story associata",
  "Come utente, desidero visualizzare in modo grafico i bin coinvolti nell'ordine di movimentazione"
)
#printUseCaseInfo(
  "Inclusioni",
  [Evidenziazione bin di destinazione (@uc27.1)]
)
#printUseCaseInfo(
  "Estensioni",
  [Evidenziazione bin di partenza (@uc27.2)]
)
#derivedRequirements("27")

==== Evidenziazione bin di destinazione <uc27.1>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione dei bin coinvolti nell'ordine di movimentazione"
)
#printUseCaseInfo(
  "Postcondizioni",
  "Il bin di destinazione dell'ordine di movimentazione viene evidenziato graficamente"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione dei bin coinvolti nell'ordine di movimentazione"
)
#derivedRequirements("27.1")

==== Evidenziazione bin di partenza <uc27.2>
#printUseCaseInfo("Attore principale", "Utente")
#printUseCaseInfo(
  "Precondizioni",
  "L'utente ha richiesto la visualizzazione dei bin coinvolti nell'ordine di movimentazione",
  "L'origine della movimentazione è un bin"
)
#printUseCaseInfo(
  "Postcondizioni",
  "Il bin di partenza dell'ordine di movimentazione viene evidenziato graficamente"
)
#printUseCaseInfo(
  "Scenario principale",
  "L'utente richiede la visualizzazione dei bin coinvolti nell'ordine di movimentazione"
)
#derivedRequirements("27.2")

#pagebreak()

#set heading(numbering: "1.1")

// FINE UC

= Requisiti <requisiti>

== Codice identificativo
Ogni requisito è caratterizzato da un codice identificativo definito nel seguente modo:
#align(`[Tipologia][Classificazione]–[Sequenza]`, center)
Dove:
- `Tipologia` può assumere i valori:
  - `F`: funzionale;
  - `Q`: di qualità;
  - `V`: di vincolo.
- `Classificazione` può assumere i valori:
  - `M`: mandatory, obbligatorio;
  - `D`: desiderabile;
  - `O`: opzionale.
- `Sequenza` rappresenta l'identificativo numerico del requisito.

#show figure: set block(breakable: true)

#show ">=": [$>=$]
#show "<=": [$<=$]

== Requisiti funzionali <requisiti-funzionali>

#figure(
  table(
    columns: (11%, 19%, 50%, 20%),
    align: left,
    [*Codice*], [*Riferimento*], [*Descrizione*], [*Classificazione*],
    ..requirements.at("functional").map(item => item.values().slice(0,4).flatten()).flatten()
  ),
  caption: [Requisiti funzionali]
)

#show "#ndp_v": [#ndp_v]
#show "#pdq_v": [#pdq_v]

== Requisiti di qualità <requisiti-qualita>

#figure(
  table(
    columns: (11%, 19%, 50%, 20%),
    align: left,
    [*Codice*], [*Riferimento*], [*Descrizione*], [*Classificazione*],
    ..requirements.at("quality").map(item => item.values().slice(0,4).flatten()).flatten()
  ),
  caption: [Requisiti di qualità]
)

== Requisiti prestazionali <requisiti-prestazioni>
L'analisi dei requisiti condotta da #err418 non ha individuato alcun requisito prestazionale.

== Requisiti di vincolo <requisiti-vincolo><vincoli>

#figure(
  table(
    columns: (11%, 19%, 50%, 20%),
    align: left,
    [*Codice*], [*Riferimento*], [*Descrizione*], [*Classificazione*],
    ..requirements.at("constraints").map(item => item.values().slice(0,4).flatten()).flatten()
  ),
  caption: [Requisiti di vincolo]
)

== Riepilogo requisiti <requisiti-riepilogo>

#let types = ("", "functional", "quality", "constraints", "performance", "security")

#let categories = ("", "Obbligatorio", "Desiderabile", "Opzionale")

#let countRequirements(type, category) = {
  if type not in types { panic("Tipologia di requisito errata") }
  if category not in categories { panic("Categoria di requisito errata") }

  let counter = 0

  if (type == "" and category == "") {
    for key in requirements.keys() {
      counter = counter + requirements.at(key).len()
    }
  }
  else if (type != "" and category == "") {
    counter = requirements.at(type).len()
  }
  else if (type == "" and category != "") {
    for key in requirements.keys() {
      counter = counter + requirements.at(key).filter(item => item.at("cat") == category).len()
    }
  }
  else if (type != "" and category != "") {
    counter = requirements.at(type).filter(item => item.at("cat") == category).len()
  }

  return counter
}

#figure(
  table(
    columns: (30%, 16%, 16%, 16%, 12%),
    align: left,
    [*Tipologia*], [Obbligatori], [Desiderabili], [Opzionali], [*Totale*],
    [Requisiti funzionali],
    [#countRequirements("functional", "Obbligatorio")],
    [#countRequirements("functional", "Desiderabile")],
    [#countRequirements("functional", "Opzionale")],
    [#countRequirements("functional", "")],
    [Requisiti di qualità],
    [#countRequirements("quality", "Obbligatorio")],
    [#countRequirements("quality", "Desiderabile")],
    [#countRequirements("quality", "Opzionale")],
    [#countRequirements("quality", "")],
    [Requisiti prestazionali],
    [#countRequirements("performance", "Obbligatorio")],
    [#countRequirements("performance", "Desiderabile")],
    [#countRequirements("performance", "Opzionale")],
    [#countRequirements("performance", "")],
    [Requisiti di vincolo],
    [#countRequirements("constraints", "Obbligatorio")],
    [#countRequirements("constraints", "Desiderabile")],
    [#countRequirements("constraints", "Opzionale")],
    [#countRequirements("constraints", "")]
  ),
  caption: [Riepilogo requisiti]
)