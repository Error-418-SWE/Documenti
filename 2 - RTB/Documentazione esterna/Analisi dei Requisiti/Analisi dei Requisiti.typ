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

== Definizioni
Il presente documento include lessico di dominio, per il quale è previsto il documento di Glossario. Le parole del Glossario sono denotate dal simbolo #sub("G") al pedice.

= Descrizione del prodotto

== Obiettivi del prodotto

Il prodotto software oggetto di questo documento è un gestionale di magazzino (WMS) che offre una visualizzazione 3D del magazzino ed un set di funzionalità logistiche di base.

== Ambito del prodotto

Il prodotto software oggetto di questo documento è denominato *WMS3*, un gestionale di magazzino che offre le seguenti funzionalità:
- visualizzazione tridimensionale di un magazzino, con possibilità di muovere la vista;
- visualizzazione delle informazioni della merce presente in magazzino;
- caricamento dei dati relativi alle merci da un database SQL;
- emissione di richieste di spostamento della merce all'interno del magazzino;
- filtraggio e ricerca delle merci con rappresentazione grafica dei risultati;
- importazione di planimetrie in formato SVG.

I gestionali di magazzino tradizionali presentano una serie di problematiche:
- rappresentazione 2D del contenuto del magazzino;
- software pensato per un uso esclusivamente desktop;
- interfaccia di gestione complessa (@wms-tradizionale), inadatta all'uso tramite touchscreen;
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

WMS3 si integra con, ma non comprende nel proprio ambito:
+ database SQL esterno per ottenere lo stato interno del magazzino;
+ sistema esterno per la notifica degli ordini di movimentazione tramite API RESTful.

// Qui ci starebbe un bel diagramma...

==== Interfacce utente

WMS3 è una _web application_ acceduta e operata tramite browser. L'interfaccia utente (IU) è _web-based_ e _responsive_.

Lo scenario di interazione primario avviene tramite mouse e tastiera; tuttavia, è prevista la piena operabilità anche tramite touchscreen. Sarà possibile operare da dispositivi mobili quali tablet e smartphone.

Le funzionalità esposte all'utente variano in base all'ampiezza della _viewport_ del dispositivo in uso.

==== Interfacce hardware

Il prodotto è acceduto tramite browser. Deve supportare l'esecuzione sui seguenti dispositivi:
- computer desktop, tramite mouse e tastiera;
- dispositivi mobili (es. tablet) in dotazione agli adetti di magazzino.

Il browser e il dispositivo devono essere compatibili con lo standard WebGL.

Il prodotto non prevede elementi hardware propri o interfacce con elementi hardware di terze parti.

==== Interfacce software

WMS3 richiede l'accesso in lettura ad un database SQL per il caricamento e la visualizzazione dei dati.

==== Interfacce di comunicazione

Per la comunicazione tra le sue componenti, con l'utente e con servizi esterni, WMS3 utilizza HTTP.

==== Vincoli di memoria

Non sono definiti vincoli o limiti sulle memorie primaria e secondaria.

==== Requisiti di adattamento al contesto

WMS3 per essere eseguito richiede:
- un *browser* che supporta WebGL 2.0 (per le specifiche riguardanti i vari browser compatibili consultare la sezione @vincoli);
- *Node.js* versione 20.11.0 (latest LTS) o superiore;
- Un database relazionale che si interfacci con le API fornite dal gruppo (il gruppo utilizza *Postgresql* versione 16.1);
- *Docker Compose* versione 2.23.3 o superiore;
- *Docker* versione 24.0.7 o superiore;

Il gruppo ha deciso di utilizzare la tecnologia Docker per permettere una maggiore portabilità e facilitare il deploy. \
La gestione di più container simultanei avviene mediante Docker Compose. \
Le specifiche sui browser sono imposte dall'utilizzo da parte del gruppo di *Three.js* per implementare l'ambiente 3D.

==== Interfacce a servizi

WMS3 dovrà inviare messaggi ad uno o più servizi esterni per comunicare gli ordini di movimentazione richiesti dall'utente. Dovrà inoltre ricevere e gestire messaggi che comunicano l'esito dell'ordine di movimentazione richiesto.

=== Funzionalità del prodotto

Il prodotto sarà caratterizzato da:
- *ambiente*:
  - l'interno di un magazzino, di forma quadrata o rettangolare delimitato sui quattro lati che rappresenta il reale magazzino su cui deve operare l'addetto;
  - caratterizzato da una griglia (o grid) a terra che permette all'utente di collocare gli oggetti nell'ambiente con maggiore o minore precisione a seconda delle esigenze;
  - le dimensioni e la finezza della grid devono essere modificabili;
  - deve essere navigabile tramite diverse periferiche (freccie direzionali, mouse, touch del dispositivo) e in diversi modi (sui tre assi, zoom-in/zoom-out, rotazione).
  - può essere creato vuoto o tramite un file SVG; nel primo caso abbiamo un piano vuoto di dimensioni predefinite, mentre nel secondo caso il file SVG viene usato per disegnare sul piano le forme degli scaffali da inserire nell'ambiente.
- *scaffalature*:
  - scaffali con caratteristiche personalizzabili (altezza, larghezza, profondità, numero di scaffali e il numero di colonne in cui è diviso uno scaffale) che rappresentano i reali scaffali nel magazzino;
  - è possibile definire in fase di creazione l'orientamento (verticale od orizzontale) dello scaffale;
  - al loro interno contengono dei bin;
  - possono essere spostati, modificati, creati o eliminati.
- *bin*:
  - è possibile crearli, modificarli o eliminarli;
  - leggere le informazioni riguardanti il bin stesso e il loro contenuto;
  - rappresentano lo spazio occupabile da un prodotto nel magazzino.
- *prodotti*:
  - rappresentano i reali prodotti contenuti nel magazzino;
  - contengono diverse informazioni riguardo il prodotto;
  - sono contenuti in un bin e possono essere spostati verso un bin differente;
  - è possibile la ricerca dei prodotti attraverso dei parametri quali: id, nome, scaffale.
=== Caratteristiche degli utenti

L'utente tipico di WMS3 è un supervisore di magazzino. Ci si aspetta che la maggior parte degli accessi a WMS3 avvengano da ufficio, tramite un computer desktop dotato di mouse e tastiera; tuttavia, non si può escludere che l'utente possa accedere a WMS3 tramite dispositivo mobile.

L'utente tipico è avvezzo all'uso del computer e dei dispositivi mobili. Conosce il dominio applicativo.

=== Limitazioni

Non sono noti requisiti limitanti la capacità dell'organizzazione di realizzare il progetto WMS3, come ad esempio:
- politiche interne, regolamenti, leggi statali;
- limiti hardware;
- limiti imposti dai servizi esterni;
- limiti imposti dai requisiti di qualità;
- considerazioni sulla sicurezza dei dati;
- considerazioni sulla sicurezza dell'utente e di tutti coloro coinvolti, direttamente o indirettamente, dal ciclo di vita di WMS3.

=== Ipotesi e dipendenze

+ Disponibilità di un database SQL;
+ Disponibilità di un browser compatibile con WebGL;
+ Disponibilità di un sistema proprietario per notificare, in questo caso, la richiesta di spostamento di un prodotto all'interno del magazzino al personale designato.

= Riferimenti

== Riferimenti di conformità

- Norme di Progetto;
- Regolamento del progetto didattico: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/PD2.pdf")_ ;
- Standard ISO/IEC/IEEE 29148:2018: \
  _#link("https://ieeexplore.ieee.org/servlet/opac?punumber=8559684")_;
- Standard ISO/IEC/IEEE 12207:2017: \
  _#link("https://www.iso.org/obp/ui/en/#iso:std:iso-iec-ieee:12207:ed-1:v1:en")_.

== Riferimenti informativi

- Verbali interni;
- Verbali esterni;
- Capitolato "Warehouse Management 3D" di _Sanmarco Informatica S.p.A._: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")_ ;
- Documentazione Three.js: \
  _#link("https://threejs.org/docs/index.html")_
- WebGL 2.0 Specification: \
  _#link("https://registry.khronos.org/webgl/specs/latest/2.0/")_
- Analisi dei requisiti: \
  _#link("https://www.math.unipd.it/~tullio/IS-1/2023/Dispense/T5.pdf")_ ;
- Analisi e descrizione delle funzionalità, Use Case e relativi diagrammi (UML): \
  _#link("https://www.math.unipd.it/~rcardin/swea/2022/Diagrammi%20Use%20Case.pdf")_ .

== Riferimenti a documentazione interna
- Documento "Glossario v1.1.0"\
  #link("https://github.com/Error-418-SWE/Documenti/blob/main/2%20-%20RTB/Glossario_v1.1.0.pdf")


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

#set heading(numbering: (..nums) => {
  let values = nums.pos();
  if (values.len() > 0){
      values.at(values.len()-1) = values.at(values.len()-1);
  }
  values.at(0) = values.at(0)-3;
  return "UC-"+values.map(str).join(".");
})

#set par(first-line-indent: 0pt)

= Creazione magazzino
#figure(
  image("./imgs/uc1.png", format: "png"),
  caption: [
    UML UC-1
  ],
)
== Importazione mappa magazzino da file SVG
$bold("Descrizione: ")$
All'avvio dell'applicazione e in ogni momento si desideri, si può decidere di caricare un file SVG il quale viene utilizzato dal programma per configurare le aree di lavoro.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- è stato dato inizio alla procedura di configurazione dell'ambiente di lavoro tramite file.

$bold("Postcondizioni: ")$
- il file SVG è stato caricato con successo e il programma ha configurato l'ambiente di conseguenza;
- l'ambiente così generato ha rimosso eventuali elementi precedentemente configurati.

$bold("Scenario: ")$
- l'utente carica un file SVG tramite un'apposita interfaccia.

$bold("Estensioni: ")$
- UC-1.1.1 Visualizzazione errore lettura del file SVG.

=== Visualizzazione errore lettura del file SVG
$bold("Descrizione: ")$
il file caricato dall'utente non ha permesso al programma di configurare l'ambiente di lavoro.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'utente ha caricato un file per la configurazione dell'ambiente di lavoro;
- il programma non ha potuto configurare l'ambiente di lavoro a causa del file caricato.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore.

$bold("Scenario: ")$
- l'utente ha caricato un file non adatto.

$bold("Generalizzazioni: ")$
- UC-1.1.1.1 Visualizzazione errore lettura del file SVG dovuto a file privo di informazioni;
- UC-1.1.1.2 Visualizzazione errore lettura del file SVG dovuto a informazioni fornite incongruenti.

==== Visualizzazione errore file privo di informazioni
$bold("Descrizione: ")$
il file SVG caricato non contiene informazioni utili alla configurazione dell'ambiente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- è stato caricato un file per la configurazione dell'ambiente;
- il file è stato aperto correttamente dal programma;
- il programma non ha potuto ottenere informazioni dal file.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo al caricamento di un file SVG privo di informazioni.

$bold("Scenario: ")$
- L'utente ha caricato un file SVG vuoto o con informazioni non utili.

==== Visualizzazione errore informazioni del file incongruenti
$bold("Descrizione: ")$
il file SVG caricato contiene informazioni incongruenti e quindi non utilizzabili per la configurazione dell'ambiente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- è stato caricato un file per la configurazione dell'ambiente;
- tale file è stato aperto correttamente dal programma;
- il programma ha ricavato informazioni non valide dal file.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo al caricamento di un file con informazioni incongruenti.

$bold("Scenario: ")$
- L'utente ha caricato un file per la configurazione dell'ambiente contenente informazioni incongruenti.

== Creazione magazzino vuoto
$bold("Descrizione: ")$
All'avvio dell'applicativo è possibile creare un ambiente vuoto di dimensioni predefinite da cui iniziare. Tale funzionalità, rimane disponibile durante l'utilizzo dell'applicativo qualora si volesse ripristinare l'ambiente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- è stato dato inizio alla procedura di creazione dell'ambiente di lavoro vuoto.

$bold("Postcondizioni: ")$
- è stato generato un ambiente di lavoro vuoto di dimensioni predefinite;
- l'ambiente così generato ha rimosso eventuali elementi precedentemente configurati.

$bold("Scenario: ")$
- l'utente crea un ambiente di lavoro vuoto con dimensioni predefinite.

= Modifica dimensioni del magazzino

#figure(
  image("./imgs/uc2.png", format: "png"),
  caption: [
    UML UC-2
  ],
)
$bold("Descrizione: ")$
il perimetro dell'ambiente di lavoro viene modificato successivamente alla sua configurazione iniziale.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- almeno una configurazione dell'ambiente deve essere avvenuta con successo;

$bold("Postcondizioni: ")$
- l'ambiente di lavoro è stato correttamente modificato in funzione delle richieste dell'utente.

$bold("Scenario: ")$
- l'utente avvia la modifica dell'ambiente di lavoro;
- l'utente regola le dimensioni dell'ambiente di lavoro.

$bold("Estensioni: ")$
- UC-2.1 Visualizzazione errore dimensioni magazzino troppo piccole;
- UC-2.2 Visualizzazione errore dimensioni troppo piccole rispetto rispetto agli elementi nell'ambiente.

== Visualizzazione errore dimensioni magazzino troppo piccole

$bold("Descrizione: ")$
l'utente vuole modificare le dimensioni dell'ambiente riducendole eccessivamente.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'utente ha creato l'ambiente di lavoro manualmente;
- l'ambiente è stato creato correttamente;
- l'ambiente di lavoro risulta vuoto.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo al fatto che le dimensioni dell'ambiente non possono essere ulteriormente diminuite.

$bold("Scenario: ")$
- l'utente vuole ridurre le dimensioni dell'ambiente oltre una soglia minima.

== Visualizzazione errore dimensioni troppo piccole rispetto rispetto agli elementi nell'ambiente

$bold("Descrizione: ")$
Dato un ambiente con elementi posizionati (come scaffali e/o bin), l'utente cerca di ridurre le dimensioni dell'ambiente in modo eccessivo, non permettendo di mantenere gli elementi precedentemente posizionati.
$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'utente ha creato l' ambiente di lavoro manualmente;
- l'ambiente è stato creato correttamente;
- l'ambiente di lavoro risulta non vuoto.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo al fatto che stia cercando di diminuire troppo le dimensioni dell'ambiente nonostante gli elementi presenti.

$bold("Scenario: ")$
- l'utente vuole ridurre la dimensione dell'ambiente nonostante l'ambiente di lavoro contenga elementi le cui posizioni non risulterebbero più valide alle nuove dimensioni ridotte.

= Gestione scaffali
#figure(
  image("./imgs/uc3.png", format: "png"),
  caption: [
    UML UC-3
  ],
)
== Creazione scaffale
$bold("Descrizione: ")$
uno scaffale viene creato in base ai valori inseriti dall'utente quali: altezza, larghezza, profondità, numero di piani e colonne in cui è suddiviso e orientamento nel piano (orizzontale o verticale).
Quindi viene aggiunto nell'ambiente in una posizione valida specificata. Successivamente vengono creati i bin contenuti dallo scaffale e posizionati in esso.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente di lavoro deve essere stato configurato con successo.

$bold("Postcondizioni: ")$
- nell'ambiente di lavoro è stato aggiunto un nuovo scaffale;
- nello scaffale creato sono stati aggiunti i bin da esso contenuti.

$bold("Scenario: ")$
- l'utente seleziona l'aggiunta di uno scaffale;
- l'utente inserisce l'altezza dello scaffale;
- l'utente inserisce la larghezza dello scaffale;
- l'utente inserisce la profondità dello scaffale;
- l'utente inserisce il numero di piani dello scaffale;
- l'utente inserisce il numero di colonne dello scaffale;
- l'utente seleziona l'orientamento dello scaffale nel piano (orizzontale o verticale);
- l'utente posiziona lo scaffale in una posizione valida nell'ambiente di lavoro.

$bold("Estensioni: ")$
- UC-5 Visualizzazione errore inserimento dati dimensionali non validi.

== Modifica scaffale
$bold("Descrizione: ")$
modifica delle caratteristiche di uno scaffale già esistente.

Le caratteristiche che definiscono lo scaffale vengono visualizzate e possono essere modificate, nello specifico i valori sono: altezza, larghezza, profondità, numero di piani e colonne in cui è suddiviso e orientamento nel piano (orizzontale o verticale).

L'utente può decidere, per ciascuno di essi, di sostituirlo specificando il nuovo valore oppure di lasciarlo inalterato.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- nell'ambiente deve essere posizionato almeno uno scaffale.

$bold("Postcondizioni: ")$
- i valori di uno scaffale scelto sono stati modificati come indicato.

$bold("Scenario: ")$
- l'utente seleziona uno scaffale nell'ambiente di lavoro;
- l'utente seleziona il comando per la modifica dello scaffale;
- l'utente può inserire una nuova altezza dello scaffale;
- l'utente può inserire una nuova larghezza dello scaffale;
- l'utente può inserire una nuova profondità dello scaffale;
- l'utente può inserire un nuovo numero di piani dello scaffale;
- l'utente può inserire un nuovo numero di colonne dello scaffale;
- l'utente può selezionare un diverso orientamento dello scaffale nel piano (orizzontale o verticale);
- l'utente conferma la nuova configurazione di valori.

$bold("Estensioni: ")$
- UC-5 Visualizzazione errore inserimento dati dimensionali non validi.

== Spostamento scaffale
$bold("Descrizione: ")$
L'utente intende spostare la posizione di uno scaffale presente nell'ambiente 3D.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- nell'ambiente deve essere posizionato almeno uno scaffale.

$bold("Postcondizioni: ")$
- lo scaffale spostato si trova nella nuova posizione scelta dall'utente.

$bold("Scenario: ")$
- l'utente seleziona uno scaffale nell'ambiente di lavoro;
- l'utente sposta lo scaffale nella nuova posizione desiderata nell'ambiente 3D.

$bold("Estensioni: ")$
- UC-3.3.1 Visualizzazione errore spostamento dello scaffale in zona non libera

=== Visualizzazione errore spostamento dello scaffale in zona non libera
$bold("Descrizione: ")$
è stata richiesto lo spostamento di uno scaffale in una zona non libera.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- avviata l'attività di spostamento dello scaffale;
- lo scaffale interessato viene posto in una zona occupata.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo allo spostamento dello scaffale.

$bold("Scenario: ")$
- l'utente ha richiesto lo spostamento di uno scaffale in una zona non libera.

== Eliminazione scaffale
$bold("Descrizione: ")$
lo scaffale selezionato presente nell'ambiente viene eliminato.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- nell'ambiente deve essere posizionato almeno uno scaffale;
- la modalità di modifica dell'ambiente deve essere attiva;
- lo scaffale da eliminare deve contenere solo bin vuoti.

$bold("Postcondizioni: ")$
- lo scaffale selezionato viene rimosso dall'ambiente;
- vengono rimossi i bin in esso contenuti.

$bold("Scenario: ")$
- l'utente seleziona uno scaffale nell'ambiente;
- l'utente seleziona il comando per la rimozione dello scaffale;
- l'utente conferma l'operazione da una finestra di conferma.

$bold("Estensioni: ")$
- UC-3.4.1 Visualizzazione errore scaffale da eliminare non vuoto.

=== Visualizzazione errore scaffale da eliminare non vuoto
$bold("Descrizione: ")$
è stata richiesta l'eliminazione di uno scaffale contenente almeno un bin non vuoto.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'attività di eliminazione di uno scaffale deve essere stata attivata;
- lo scaffale interessato contiene almeno un bin non vuoto.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo all'eliminazione di uno scaffale non vuoto.

$bold("Scenario: ")$
- l'utente ha richiesto l'eliminazione di uno scaffale non vuoto.

= Gestione bin
#figure(
  image("./imgs/uc4.png", format: "png"),
  caption: [
    UML UC-4
  ],
)

== Creazione di un bin
$bold("Descrizione: ")$
deve essere possibile creare delle aree adibite a contenere prodotti, definite nel contesto come bin. In fase di creazione deve essere possibile definire le caratteristiche che il bin dovrà avere, quali : altezza, larghezza e profondità.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato;
- deve esistere almeno un'area libera e valida.

$bold("Postcondizioni: ")$
- l'area selezionata viene classificata come bin.

$bold("Scenario: ")$
- l'utente entra nella modalità di modifica;
- l'utente seleziona un'area libera e valida.

== Modifica di un bin
$bold("Descrizione: ")$
deve essere possibile modificare le dimensioni dei bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato e deve esistere almeno un bin modificabile.

$bold("Postcondizioni: ")$
- le dimensioni del bin sono state ridefinite.

$bold("Scenario: ")$
- l'utente entra nella modalità di modifica;
- l'utente seleziona un bin;
- vengono mostrate le informazioni del bin;
- l'utente modifica le dimensioni del bin.

$bold("Estensioni: ")$
- UC-5 Visualizzazione errore inserimento dati dimensionali non validi.

== Eliminazione bin
$bold("Descrizione: ")$
deve essere possibile eliminare un bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato;
- deve esistere almeno un bin vuoto.

$bold("Postcondizioni: ")$
- il bin è tornato ad essere un'area libera.

$bold("Scenario: ")$
- l'utente entra nella modalità di modifica;
- l'utente seleziona un bin vuoto;
- l'utente chiede di eliminare il bin;
- viene richiesta la conferma dell'eliminazione.

$bold("Estensioni: ")$
- UC-4.3.1 Errore cancellazione bin non vuoto.

=== Errore cancellazione bin non vuoto
$bold("Descrizione: ")$
è stata richiesta l'eliminazione di un bin non vuoto.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'attività di eliminazione di un bin deve essere stata attivata;
- il bin interessato contiene un prodotto.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo all'eliminazione di un bin non vuoto.

$bold("Scenario: ")$
- l'utente ha richiesto l'eliminazione di un bin non vuoto.

= Visualizzazione errore inserimento dati dimensionali non validi
#figure(
  image("./imgs/uc5.png", format: "png"),
  caption: [
    UML UC-5
  ],
)
$bold("Descrizione: ")$
i dati inseriti per la modifica delle dimensioni dell'elemento interessato non sono validi.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- inseriti dati per la modifica o la creazione degli elementi dell'ambiente;
- tali dati non sono utilizzabili dal programma.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo all'inserimento di dati non validi.

$bold("Scenario: ")$
- l'utente inserisce dati relativi alla configurazione degli elementi dell'ambiente non validi.

$bold("Generalizzazioni: ")$
- UC-5.1.1 Dimensioni negative o uguali a 0;
- UC-5.1.2 Dimensioni eccessive.

== Dimensioni negative o uguali a zero
$bold("Descrizione: ")$
le dimensioni inserite per la modifica dell'elemento interessato sono minori o uguali a zero.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- inseriti dati dimensionali per la modifica o la creazione degli elementi dell'ambiente;
- le dimensioni inserite non sono valide.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo all'inserimento di dimensioni non valide.

$bold("Scenario: ")$
- l'utente inserisce dati relativi alla configurazione degli elementi dell'ambiente minori o uguali a zero.

== Dimensioni eccessive
$bold("Descrizione: ")$
le dimensioni inserite per la modifica dell'elemento interessato eccessive per il contesto di inserimento.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- inseriti dati dimensionali per la modifica o la creazione degli elementi dell'ambiente;
- le dimensioni inserite sono eccessive.

$bold("Postcondizioni: ")$
- viene visualizzato l'errore relativo all'inserimento di dimensioni eccessive.

$bold("Scenario: ")$
- l'utente inserisce dati relativi alla configurazione degli elementi dell'ambiente eccessivi.

= Caricamento dati da database

#figure(
  image("./imgs/uc6.png", format: "png"),
  caption: [
    UML UC-6
  ],
)

$bold("Descrizione: ")$
i prodotti vengono inseriti dal database nei rispettivi bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- i prodotti si trovano nei rispettivi bin.

$bold("Scenario: ")$
- l'utente configura l'accesso al database;
- l'utente inizia la procedura di caricamento dei prodotti.

$bold("Inclusioni: ")$
- UC-6.1 Configurazione collegamento al database.

$bold("Estensioni: ")$
- UC-6.2 Visualizzazione messaggio di errore.

== Configurazione collegamento al database <oo>
$bold("Descrizione: ")$
l'utente imposta i dati necessari affinché il programma possa configurarsi con il database in cui sono contenuti i dati.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato;
- il database deve essere disponibile;
- l'utente deve disporre delle credenziali per configurarsi al database.

$bold("Postcondizioni: ")$
- il sistema è correttamente configurato per accedere al database.

$bold("Scenario: ")$
- l'utente configura l'accesso al database.

== Visualizzazione messaggio di errore
$bold("Descrizione: ")$
i dati contenuti nel database sono in un formato non conforme o sono errati.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'utente ha iniziato la procedura di caricamento dati da database;
- l'accesso al database deve essere stato correttamente configurato.

$bold("Postcondizioni: ")$
- all'utente viene notificato l'errore relativo alla presenza di dati errati o non conformi all'interno del database.

$bold("Scenario: ")$
- l'utente prova a caricare i dati dal database ma questi sono errati o non conformi a quelli che il sistema può riconoscere (es. numero scaffali/bin incompatibile con le coordinate dei prodotti).

= Richiesta di spostamento di un prodotto

#figure(
  image("./imgs/uc7.png", format: "png"),
  caption: [
    UML UC-7
  ],
)

$bold("Descrizione: ")$
l'utente seleziona il prodotto di cui desidera una ricollocazione all'interno del magazzino e avvia una richiesta di spostamento verso un altro bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- devono esistere almeno due bin distinti;
- uno dei due bin deve contenere un prodotto;
- uno dei due bin deve essere vuoto.

$bold("Postcondizioni: ")$
- viene inviata una richiesta di spostamento al magazzino tramite l'uso di API;
- il bin di partenza viene evidenziato in modo da identificare il fatto che da quel bin è in atto uno spostamento;
- il bin di arrivo viene evidenziato in modo da identificare il fatto che in quel bin è in atto uno spostamento.

$bold("Scenario: ")$
- l'utente seleziona un bin che contiene un prodotto;
- l'utente sposta il prodotto all'interno di un altro bin vuoto;
- viene inviata una notifica a magazzino che segnala lo spostamento;
- i due bin, di partenza e di arrivo, vengono evidenziati per segnalare lo spostamento in corso.

= Interrogazione di un bin

#figure(
  image("./imgs/uc8.png", format: "png"),
  caption: [
    UML UC-8
  ],
)
$bold("Descrizione: ")$
deve essere possibile visualizzare il prodotto contenuto in un determinato bin.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato e deve esistere almeno un bin.

$bold("Postcondizioni: ")$
- vengono visualizzate le informazioni del bin.

$bold("Scenario: ")$
- l'utente seleziona un bin;
- vengono visualizzate le informazioni sul bin e, se presente, sul prodotto contenuto nel bin.

= Interrogazione di uno scaffale

#figure(
  image("./imgs/uc9.png", format: "png"),
  caption: [
    UML UC-9
  ],
)
$bold("Descrizione: ")$
deve essere possibile visualizzare le informazioni relative ad uno specifico scaffale.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato e deve esistere almeno uno scaffale.

$bold("Postcondizioni: ")$
- vengono visualizzate le informazioni dello scaffale.

$bold("Scenario: ")$
- l'utente seleziona uno scaffale;
- vengono visualizzate le informazioni relative a lo scaffale selezionato.

= Ricerca prodotti

#figure(
  image("./imgs/uc10.png", format: "png"),
  caption: [
    UML UC-10
  ],
)

$bold("Descrizione: ")$
l'utente ricerca un prodotto.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente visualizza la posizione del bin contenente il prodotto ricercato.

$bold("Scenario: ")$
- l'utente ricerca un prodotto;
- il bin contenente il prodotto cercato viene evidenziato.

$bold("Generalizzazioni: ")$
- UC-10.1 Ricerca per ID;
- UC-10.2 Ricerca per Nome;
- UC-10.3 Ricerca per Scaffale.

== Ricerca per ID
$bold("Descrizione: ")$
l'utente ricerca un prodotto tramite il suo ID di magazzino.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente visualizza la posizione del bin contenente il prodotto ricercato.

$bold("Scenario: ")$
- l'utente ricerca un prodotto usando come chiave l'ID univoco di magazzino;
- il bin contenente il prodotto cercato viene evidenziato.

== Ricerca per Nome
$bold("Descrizione: ")$
l'utente ricerca un prodotto tramite il nome associato al prodotto.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente visualizza la posizione del bin contenente il prodotto ricercato.

$bold("Scenario: ")$
- l'utente ricerca un prodotto usando come chiave per la ricerca il nome del prodotto;
- il bin contenente il prodotto cercato viene evidenziato;
- i prodotti associati al nome possono essere più di uno.

== Ricerca per Scaffale
$bold("Descrizione: ")$
l'utente ricerca i prodotti contenuti all'interno di uno scaffale del magazzino.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- l'ambiente deve essere correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente visualizza la posizione dei prodotti contenuti nello scaffale cercato.

$bold("Scenario: ")$
- l'utente ricerca i materiali contenuti all'interno di uno scaffale del magazzino;
- lo scaffale viene evidenziato.

= Esplorazione magazzino

#figure(
  image("./imgs/uc11.png", format: "png", width: 60%),
  caption: [
    UML UC-11
  ],
)

== Spostamento della visuale
$bold("Descrizione: ")$
Una volta che il sistema è stato configurato l'utente può visualizzare il magazzino e spostare la visuale sui tre assi.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- il sistema è stato correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente ha spostato la visuale sul magazzino nella direzione indicata.

$bold("Scenario: ")$
- l'utente visualizza il magazzino;
- l'utente sposta la visuale secondo uno dei quattro assi;
- l'utente ha cambiato la prospettiva sul magazzino.

== Rotazione della visuale
$bold("Descrizione: ")$
Una volta che il sistema è stato configurato l'utente può visualizzare il magazzino e ruotare la camera sul magazzino a destra o sinistra.

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- il sistema è stato correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente ha spostato la visuale sul magazzino nella direzione indicata.

$bold("Scenario: ")$
- l'utente visualizza il magazzino;
- l'utente ruota lavisuale a destra o a sinistra;
- l'utente ha cambiato la prospettiva sul magazzino.

== Zoom della visuale
$bold("Descrizione: ")$
Una volta che l'ambiente è stato configurato l'utente può avvicinare o allontanare la visuale dal magazzino (zoom in, zoom out).

$bold("Attore: ")$
utente.

$bold("Precondizioni: ")$
- il sistema è stato correttamente configurato.

$bold("Postcondizioni: ")$
- l'utente ha avvicinato o allontanato la visuale dal magazzino.

$bold("Scenario: ")$
- l'utente visualizza il magazzino;
- l'utente effettua uno zoom in o uno zoom out sul magazzino;
- l'utente ha cambiato la prospettiva sul magazzino.

#set heading(numbering: (..nums) => {
  let values = nums.pos();
  if (values.len() > 0){
      values.at(values.len()-1) = values.at(values.len()-1);
  }
  values.at(0) = values.at(0)-10;
  return values.map(str).join(".");
})

= Requisiti

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

== Requisiti funzionali

#figure(
  table(
    columns: 4,
    align: left,
    [*Codice*], [*Classificazione*], [*Descrizione*], [*Riferimento*],
    [FM-1], [Obbligatorio], [L'utente deve poter creare il magazzino.], [UC-1],
    [FM-1.1], [Obbligatorio], [L'utente deve poter caricare un file SVG contenente la pianta del magazzino.], [UC-1.1],
    [FM-1.1.1], [Obbligatorio], [L'utente deve sempre poter creare un magazzino tramite caricamento di un file SVG, quando possibile], [UC-1.1],
    [FD-1.1.2], [Desiderabile], [L'utente deve poter definire le altezze degli elementi del file SVG tramite trascinamento verso l'alto.], [Verbale esterno 23-12-06],
    [FM-1.1.3], [Obbligatorio], [L'utente visualizza un errore di importazione del file SVG.], [UC-1.1.1],
    [FM-1.1.3.1], [Obbligatorio], [L'utente visualizza un errore dato dal caricamento di un file SVG privo di informazioni.], [UC-1.1.1.1],
    [FM-1.1.3.2], [Obbligatorio], [L'utente visualizza un errore dato da informazioni incongruenti nel file SVG.], [UC-1.1.1.2],
    [FM-1.2], [Obbligatorio], [L'utente deve sempre poter creare un ambiente di lavoro vuoto, quando possibile.], [UC-1.2],

    [FM-2], [Obbligatorio], [L'utente deve poter modificare le dimensioni del magazzino dopo la sua creazione.], [UC-2],
    [FM-2.1], [Obbligatorio], [L'utente deve poter modificare la lunghezza del magazzino dopo la sua creazione.], [UC-2],
    [FM-2.2], [Obbligatorio], [L'utente deve poter modificare la larghezza del magazzino dopo la sua creazione.], [UC-2],
    [FM-2.3], [Obbligatorio], [L'utente deve poter modificare l'altezza del magazzino dopo la sua creazione.], [UC-2],
    [FM-2.4], [Obbligatorio], [L'utente visualizza un errore relativo alla riduzione eccessiva delle dimensioni dell'ambiente vuoto.], [UC-2.1],
    [FM-2.5], [Obbligatorio], [L'utente visualizza un errore relativo alla riduzione eccessiva delle dimensioni dell'ambiente non vuoto.], [UC-2.2],

    [FM-3], [Obbligatorio], [L'utente deve poter gestire gli scaffali.], [UC-3],
    [FM-3.1], [Obbligatorio], [L'utente deve poter creare gli scaffali.], [UC-3.1],
    [FM-3.1.1], [Obbligatorio], [L'utente deve poter definire le dimensioni degli scaffali.], [UC-3.1],
    [FM-3.1.1.1], [Obbligatorio], [L'utente deve poter definire la lunghezza degli scaffali.], [UC-3.1],
    [FM-3.1.1.2], [Obbligatorio], [L'utente deve poter definire la profondità degli scaffali.], [UC-3.1],
    [FM-3.1.1.3], [Obbligatorio], [L'utente deve poter definire l'orientamento rispetto al piano degli scaffali.], [UC-3.1],
    [FM-3.1.1.4], [Obbligatorio], [L'utente deve poter definire la larghezza degli scaffali.], [UC-3.1],
    [FM-3.1.1.5], [Obbligatorio], [L'utente deve poter definire il numero di piani degli scaffali.], [UC-3.1],
    [FD-3.1.1.6], [Desiderabile], [L'utente deve poter definire altezze diverse per ogni piano degli scaffali.], [Verbale esterno 23-12-15],
    [FM-3.1.2], [Obbligatorio], [L'utente deve poter posizionare gli scaffali creati nell'ambiente.], [UC-3.1],
    [FM-3.2], [Obbligatorio], [L'utente deve poter modificare gli scaffali.], [UC-3.2],
    [FM-3.2.1], [Obbligatorio], [L'utente deve poter modificare la lunghezza degli scaffali.], [UC-3.2],
    [FM-3.2.2], [Obbligatorio], [L'utente deve poter modificare la larghezza degli scaffali.], [UC-3.2],
    [FM-3.2.3], [Obbligatorio], [L'utente deve poter modificare la profondità degli scaffali.], [UC-3.2],
    [FM-3.2.4], [Obbligatorio], [L'utente deve poter modificare l'orientamento rispetto al piano degli scaffali.], [UC-3.2],
    [FM-3.2.5], [Obbligatorio], [L'utente deve poter modificare il numero di piani gli scaffali.], [UC-3.2],
    [FM-3.3], [Obbligatorio], [L'utente deve poter spostare gli scaffali all'interno del magazzino.], [UC-3.3],
    [FM-3.3.1], [Obbligatorio], [L'utente deve poter spostare gli scaffali in orizzontale.], [UC-3.3],
    [FM-3.3.2], [Obbligatorio], [L'utente deve poter spostare gli scaffali in profondità.], [UC-3.3],
    [FM-3.3.3], [Obbligatorio], [L'utente deve poter ruotare gli scaffali.], [UC-3.3],
    [FM-3.3.3.1], [Obbligatorio], [L'utente deve poter ruotare gli scaffali con angoli di 90°.], [UC-3.3],
    [FO-3.3.3.2], [Opzionale], [L'utente deve poter ruotare gli scaffali con angoli diversi da 90°.], [Verbale esterno 23-12-06],
    [FM-3.3.4], [Obbligatorio], [L'utente visualizza un errore riguardo lo spostamento dello scaffale in una zona non libera.], [UC-3.3.1],
    [FM-3.4], [Obbligatorio], [L'utente deve poter eliminare gli scaffali.], [UC-3.4],
    [FM-3.4.1], [Obbligatorio], [L'utente visualizza un errore riguardo l'eliminazione di uno scaffale non vuoto.], [UC-3.4.1],

    [FM-4], [Obbligatorio], [L'utente deve poter gestire i bin.], [UC-4],
    [FM-4.1], [Obbligatorio], [L'utente deve poter creare i bin.], [UC-4.1],
    [FM-4.1.1], [Obbligatorio], [L'utente deve poter definire le dimensioni dei bin.], [UC-4.1],
    [FM-4.1.1.1], [Obbligatorio], [L'utente deve poter definire la profondità dei bin.], [UC-4.1],
    [FM-4.1.1.2], [Obbligatorio], [L'utente deve poter definire la larghezza dei bin.], [UC-4.1],
    [FM-4.1.1.3], [Obbligatorio], [L'utente deve poter definire l'altezza dei bin.], [UC-4.1],
    [FM-4.2], [Obbligatorio], [l'utente deve poter modificare i bin.], [UC-4.2],
    [FM-4.2.1], [Obbligatorio], [L'utente deve poter modificare la profondità dei bin.], [UC-4.1],
    [FM-4.2.2], [Obbligatorio], [L'utente deve poter modificare la larghezza dei bin.], [UC-4.1],
    [FM-4.2.3], [Obbligatorio], [L'utente deve poter modificare l'altezza dei bin.], [UC-4.1],
    [FM-4.3], [Obbligatorio], [L'utente deve poter eliminare i bin.], [UC-4.3],
    [FM-4.3.1], [Obbligatorio], [L'utente visualizza un errore riguardo la cancellazione di un bin non vuoto.], [UC-4.3.1],

    [FM-5], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di dati dimensionali non validi.], [UC-5],
    [FM-5.1], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di dimensioni negative o uguali a zero.], [UC-5.1],
    [FM-5.1.1], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di una lunghezza negativa o uguale a zero.], [UC-5.1],
    [FM-5.1.2], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di una larghezza negativa o uguale a zero.], [UC-5.1],
    [FM-5.1.3], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di un'altezza negativa o uguale a zero.], [UC-5.1],
    [FM-5.2], [Obbligatorio], [L'utente visualizza un errore riguardo l'inserimento di dimensioni eccessive.], [UC-5.2],
    [FM-5.2.1], [Obbligatorio], [L'utente visualizza un errore per l'inserimento di dimensioni che creano collisioni tra l'oggetto modificato e altri elementi dell'ambiente.], [UC-5.2],
    [FM-5.2.2], [Obbligatorio], [L'utente visualizza un errore per l'inserimento di dimensioni che non permettono all'oggetto di essere inserito nell'ambiente.], [UC-5.2],

    [FD-6],[Desiderabile], [L'utente deve poter richiedere il caricamento dei dati da database], [UC-6],
    [FO-6.1], [Opzionale], [L'utente deve poter configurare i parametri di connessione al database], [UC-6.1],
    [FO-6.1.1], [Opzionale], [L'utente deve poter indicare il nome del database], [UC-6.1],
    [FO-6.1.2], [Opzionale], [L'utente deve poter indicare il nome utente per la connessione al database], [UC-6.1],
    [FO-6.1.3], [Opzionale], [L'utente deve poter indicare la password per la connessione al database], [UC-6.1],
    [FO-6.1.4], [Opzionale], [L'utente deve poter indicare l'indirizzo del database], [UC-6.1],
    [FO-6.1.5], [Opzionale], [L'utente deve poter indicare la porta del database], [UC-6.1],
    [FD-6.2], [Desiderabile], [L'utente deve poter testare la connessione al database], [UC-6.1],
    [FD-6.3], [Desiderabile], [L'utente visualizza un errore se i dati contenuti nel database non sono conformi], [UC-6.2],
    [FD-6.4], [Desiderabile], [L'utente visualizza un errore se i dati contenuti nel database sono errati], [UC-6.2],

    [FM-7], [Obbligatorio], [L'utente deve poter richiedere lo spostamento di un prodotto da un bin ad un altro], [UC-7],
    [FM-7.1], [Obbligatorio], [L'utente deve poter richiedere lo spostamento di un prodotto da un bin ad un altro indicando le coordinate del bin di destinazione], [UC-7],
    [FM-7.2], [Obbligatorio], [L'utente deve poter richiedere lo spostamento di un prodotto da un bin ad un altro tramite _drag and drop_], [UC-7],
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
    [FM-11.3.1], [Obbligatorio], [L'utente deve poter effettuare l'operazione di zoom in], [UC-11.3],
    [FM-11.3.2], [Obbligatorio], [L'utente deve poter effettuare l'operazione di zoom out], [UC-11.3],
    
    [FM-12], [Obbligatorio], [Il prodotto deve essere ad accesso pubblico, ovvero senza login], [Capitolato],

    [FM-13], [Obbligatorio], [Il prodotto deve prevedere una sola tipologia di utente], [Capitolato]
  ),
  caption: [Requisiti funzionali]
)

== Requisiti di qualità

#figure(
  table(
    columns: 4,
    align: left,
    [*Codice*], [*Classificazione*], [*Descrizione*], [*Riferimento*],
    [QM-1], [Obbligatorio], [Deve essere rispettato quanto previsto dalle Norme di Progetto], [Interna],
    [QM-2], [Obbligatorio], [Deve essere rispettato quanto previsto dal Piano di Qualifica], [Interna],
    [QM-3], [Obbligatorio], [Il codice sorgente deve essere consegnato utilizzando un repository GitHub pubblico], [Capitolato],
    [QM-4], [Obbligatorio], [Devono essere consegnati i diagrammi UML degli UC], [Capitolato],
    [QM-5], [Obbligatorio], [Deve essere consegnata la lista dei bug risolti], [Capitolato],
    [QM-6], [Obbligatorio], [Deve essere fornito un manuale d'uso per l'utente], [Decisione\ interna],
    [QO-7], [Opzionale], [Deve essere consegnato lo schema del DB], [Capitolato],
    [QO-8], [Opzionale], [Deve essere consegnata la documentazione delle API realizzate], [Capitolato],
  ),
  caption: [Requisiti di qualità]
)

== Requisiti di vincolo <vincoli>

#figure(
  table(
    columns: 4,
    align: left,
    [*Codice*], [*Classificazione*], [*Descrizione*], [*Riferimento*],
    [VM-1], [Obbligatorio], [Il prodotto non deve gestire la persistenza dei dati], [Capitolato],
    [VM-2], [Obbligatorio], [Il browser utilizzato per accedere al prodotto deve supportare WebGL 2.0], [Interno],
    [VM-3], [Obbligatorio], [L'hardware del client utilizzato per accedere al prodotto deve supportare OpenGL ES 3.0], [Interno],
    [VM-4], [Obbligatorio], [L'utente deve utilizzare un browser Google Chrome versione 89 o successiva], [Interno],
    [VM-5], [Obbligatorio], [L'utente deve utilizzare un browser Microsoft Edge versione 89 o successiva], [Interno],
    [VM-6], [Obbligatorio], [L'utente deve utilizzare un browser Mozilla Firefox versione 16.4 o successiva], [Interno],
    [VM-7], [Obbligatorio], [L'utente deve utilizzare un browser Apple Safari versione 108 o successiva], [Interno],
    [VM-8], [Obbligatorio], [L'utente deve utilizzare un browser Opera Browser versione 76 o successiva], [Interno],
    [VM-9], [Obbligatorio], [L'utente deve utilizzare un browser Google Chrome per Android versione 89 o successiva], [Interno],
    [VM-10], [Obbligatorio], [L'utente deve utilizzare un browser Apple Safari per iOS versione 17.1 o successiva], [Interno],
    [VM-11], [Obbligatorio], [L'utente deve utilizzare un browser Samsung Internet versione 23 o successiva], [Interno],
    [VO-12], [Opzionale], [Il prodotto deve essere eseguibile in un container Docker o Docker Compose], [VE 23-11-15]
  ),
  caption: [Requisiti di vincolo]
)

== Riepilogo requisiti

#figure(
  table(
    columns: 2,
    align: left,
    [*Tipo Requisito*], [*Numero totale*],
    [Requisiti funzionali], [92],
    [Requisiti di qualità], [8],
    [Requisiti di vincolo], [12],

  ),
  caption: [Riepilogo requisiti]
)