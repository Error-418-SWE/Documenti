#import "template.typ": *

#show: project.with(
  title:"Norme di Progetto",
  subTitle: "", 
  docType: "doc",
  partecipants: (
  (name: "Banzato Alessio", role: "Verificatore"),
  (name: "Carraro Riccardo", role: "Redattore"),
  (name: "Gardin Giovanni",  role: "Redattore"),
  (name: "Nardo Silvio",   role: "Verificatore"),
  (name: "Oseliero Antonio",   role: "Responsabile"),
  (name: "Todesco Mattia",  role: "Verificatore"),
  (name: "Zaccone Rosario",  role: "Amministratore"),
  ),
  showIndex: true,
  showLog: true
);
#set text(font:"New Computer Modern")
#set align(left)
#show "link": word => text[#text(fill:blue, word)]

= Introduzione

== Scopo del documento
La funzione principale del presente documento è quella di raccogliere le regole del _way of working_ che disciplineranno le attività di ogni membro del gruppo _Error_418_ durante l'intero periodo di sviluppo. Queste norme mirano a garantire coerenza, uniformità e efficacia nel processo collaborativo, promuovendo un ambiente di lavoro strutturato e efficiente.
L'approccio adottato per la redazione di questo documento è di natura incrementale. Ciò significa che il testo è suscettibile ad aggiornamenti e revisioni continue al fine di integrare progressivamente le nuove norme, le best practices e i cambiamenti che emergono nel corso dello sviluppo del progetto. Questa flessibilità consente al gruppo di adattarsi prontamente alle dinamiche di lavoro e alle esigenze specifiche del contesto, garantendo un documento sempre allineato alle necessità attuali del team.
== Scopo del progetto
Il capitolato C5, denominato _WMS3: Warehouse Management 3D_, assegnato al team ha come obiettivo la realizzazione di un sistema di gestione di magazzino in tre dimensioni. L'applicazione sviluppata consentirà all'utente di accedere a un ambiente virtuale tridimensionale, dove potrà navigare all'interno di un magazzino e visualizzare gli oggetti presenti nelle scaffalature.
L'utente avrà la possibilità di cercare specifici prodotti all'interno del magazzino, sfruttando la visualizzazione 3D per individuare rapidamente la posizione degli articoli desiderati, potrà modificare l'assetto del magazzino e inviare una notifica verso l'esterno in caso ci sia il bisogno di prelevare un articolo.

== Glossario
Al fine di eliminare possibili ambiguità durante la consultazione dei documenti, verrà introdotto un glossario, che rappresenta una raccolta delle definizioni dei termini più rilevanti, fornendo chiarimenti sui significati particolari associati a ciascun termine.

== Riferimenti

=== Riferimenti normativi

- Capitolato d'appalto C5: _WMS3_
#link("https://www.math.unipd.it/~tullio/IS-1/2023/Progetto/C5.pdf")

=== Riferimenti informativi

- Documentazione Typst
#link("https://typst.app/docs/")

- Documentazione Git
#link("https://git-scm.com/docs")

- Documentazione Jira
#link("https://confluence.atlassian.com/jira")

- Documentazione Three.js
#link("https://threejs.org/docs/")

= Processi di supporto
== Documentazione
=== Scopo e descrizione
  Il processo di documentazione del lavoro ha molteplici obbiettivi, il primo è quello di 
  tenere traccia di cio che è stato svolto e delle decisioni prese nell'ambito del progetto, il secondo 
  è quello di normare le attività in modo che i componenti del gruppo possano lavorare 
  in maniera uniforme ed ordinata.\
  La documentazione è quindi un processo di supporto all’attività di gestione di progetto, essendo un mezzo che, tramite versionamento e integrazione continua, norma attività di codifica, progettazione, analisi ed integrazione.\
  In questa sezione si và ad elencare e descrivere tutte le norme riguardanti la stesura, il mantenimento e l'aggiornamento della documentazione prodotta da Error 418 per ogni fase del ciclo di vita del software. 
=== Aspettative
  - Definire una serie di regole per la stesura di documenti o per metodi di lavoro in modo che ogni attività svolta da un membro del gruppo sia valutabile secondo criteri di correttezza decisi a priori.
  - Documentare come svolgere un lavoro in modo che un membro del gruppo possa lavorare in maniera uniforme al resto del gruppo. 
=== Typst
  Il team Error 418 ha deciso di utilizzare Typst come linguaggio per redarre la documentazione. Questo è un linguaggio di markup che permette molte delle funzionalità offerte da strumenti come LaTeX, richiedendo però molto meno sforzo durante la procedura di creazione e di compilazione del file.\  Questo permette di evitare l'apprendimento della sintassi LaTeX che può risultare ostica ai novizi e consentendo al team di concentrarsi esclusivamente sul corpo del file evitando perdite di tempo e frustrazione data da errori che non si capisce come risolvere o che richiederebbero molto tempo per essere risolti. 
=== Ciclo di vita
  La creazione e il versionamento di un documento è stato automatizzato quanto più possibile in modo da ridurre l'impatto dell'errore umano.\
  Le modalità che permetto di creare un documento sono:
  + creare un nuovo branch a partire dal branch che raccoglie i sorgenti (src);
  + creare una nuova cartella rinominata con lo stesso nome del sorgente che si andrà a creare;
  + creare un nuovo file .typ a partire da uno dei template che sono stati creati appositamente dal team (per scopo e struttura dei template controllare la sezione @template);
  + scrivere il corpo del documento modificando eventualmente alcuni specifici campi del template (titolo, data, ecc..);
  + accertarsi che il documento rispetti tutte le norme definite nelle "Norme di progetto"; 
  + salvare e creare la pull request per integrare il sorgente all'interno del branch src;
  + scegliere un nome della pull request aderente alle norme definite nelle "Norme di progetto";
  + una volta creata la pull request avvierà una serie di action che provvederanno a verificare la correttezza la presenza o meno di alcuni campi del documento, creare o aggiornare il changelog, compilare il documento e integrare il risultante file .pdf all'interno del branch main;
=== Template <template>
  Il team ha creato dei template per la creazione di documenti, questo facilita il lavoro di compilazione e verifica da parte delle github. \
  Possono essere trovate nella root della repository github nel branch src. \
  I template sono:
  - template.typ: per la creazione di documenti interni o esterni;
  - quickstart.typ:  per la creazione di verbali interni o esterni;
=== Struttura dei documenti
  Esistono due tipi di documenti fondamentali: "documento" e "verbali" e hanno alcune differenze a livello di struttura. \
  Ogni documento è formato da un file Typst e da un file log.csv creato automaticamente dalle github action (e che si occupano anche di aggiornarlo). Questi due file vengono automaticamente compilati insieme e il .pdf risultante viene inserito all'interno del branch main.
  Ogni documento dovrà presentare:
==== Verbali
Un verbale è la documentazione di un meeting svolto tra i membri del gruppo (verbale interno) o con un referente esterno (verbale esterno). Documentare le riunioni permette di tenere traccia delle decisioni prese dal gruppo in un dato momento e permette a chi non riesce a presenziare di tenersi al passo con il gruppo in maniera asincrona. \
I verbali devono essere rinominati nel seguente modo "yy-mm-dd.typ" e nello stesso modo deve essere chiamata la sottocartella in cui è inserito.
===== Struttura dei verbali
Ogni verbale, interno o esterno, deve presentare:
- intestazione:\
  + logo del gruppo (logo.png disponibile nella root del branch src);
  + nome del gruppo: Error 418;
  + titolo del documento: standardizzato nella forma "Verbale"+"interno/esterno"+"data del verbale nella forma dd/mm/yy";
  + eventuale sottotitolo: specifica se una riunione ha avuto uno specifico argomento di discussione, è opzionale;
  + referente: referente dell'azienda proponente che ha partecipate alla riunione in caso di verbale esterno;
  + redattori e destinatari;
  + partecipanti: chi ha partecipato alla riunione e il ruolo che ha ricoperto;
  + ora di inizio meeting, ora di fine meeting e durata del meeting (calcolata automanticamente).
===== Corpo del verbale
L'effettivo contenuto del documento dove vengono riportati i dettaglio gli argomenti trattati nel meeting, il corpo è così organizzato:
- section "Ordine del giorno": riporta gli argomenti da trattare nel meeting;
- subsection: ogni subsection riporta l'effettivo resoconto dell'incontro con evetuali dubbi e soluzioni a cui si è arrivati durante il meeting;
- section "Azioni da intraprendere": riporta le operazioni che andranno svolte a seguito del meeting per risolvere problemi emersi durante il meeting o per continuare il lavoro.
- firme esterne: per verbali esterni, firma del referente esterno che approva il resoconto stilato del gruppo.
==== Struttura dei documenti