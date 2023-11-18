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