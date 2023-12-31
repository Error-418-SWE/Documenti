#import "/template.typ": *

#show: project.with(
  date: "05/11/23",
  subTitle: "Automazioni, Norme di Progetto e pianificazione meeting",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),
  timeStart: "14:30",
  timeEnd: "15:30",
);

= Ordine del giorno
- Automazioni di GitHub Actions;
- Organizzazione meeting di Retrospettiva;
- Revisione Norme di Progetto;
- Organizzazione attività da svolgere.

== GitHub Actions
Sono state discusse le automazioni introdotte tramite GitHub Actions:
    - Sito internet per la visualizzazione ordinata della documentazione il quale viene automaticamente aggiornato con la modifica del repository;
    - Compilazione automatica dei file .tex con conseguente generazione nel repository dei file pdf corrispondenti.


== Meeting di Retrospettiva
Sono stati discussi i meeting di retrospettiva, fissati ogni domenica alle ore 15:00.
\ Per definire ordinatamente alcuni argomenti da trattare in tali meeting, come i "keep doing" e i problemi riscontrati durante la settimana, è stato deciso di utilizzare lo strumento "Miro", la cui bacheca va aggionata prima del meeting domenicale.

== Norme di Progetto
Il documento relativo alle Norme di Progetto è stato revisionato e discusso dal gruppo.
\ Sono stati proposti degli strumenti per la realizzazione di grafici UML:
   - StarUML;
   - Eraser;
   - Draw.io.
 È stato discusso l'utilizzo di LaTeX in maniera più specifica analizzando l'utilizzo del template e degli include.
\ È stato deciso che i file .tex saranno posti in un branch dedicato del repository.

= Azioni da intraprendere
    - Organizzazione di un meeting esterno con il proponente per discutere i dubbi relativi alle tecnologie e alle pratiche da adottare per i test della parte grafica da realizzare. Ciascun membro deve quindi pensare alle domande da porre in tale occasione;
    - Stabilire con precisione il criterio di versionamento dei file;
    - Ricontrollare le Norme di Progetto;
    - Prendere confidenza con le tecnologie scelte (Miro, Jira, ecc), e con quelle proposte così da prendere scelte consapevoli;
    - Iniziare a pensare all'Analisi dei Requisiti.
