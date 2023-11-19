#import "/template.typ": *

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.
#show: project.with(
  title: "Verbale 05/11/23",
  subTitle: "Automazioni, norme di progetto e pianificazione meeting",
  docType: "verbale",
  //  Nome        //Ruolo          
  partecipants: (
    (name: "Banzato Alessio", role: "Verificatore"),
    (name: "Carraro Riccardo", role: "Amministratore"),
    (name: "Gardin Giovanni",  role: "Amministratore"),
    (name: "Nardo Silvio",   role: "Redattore"),
    (name: "Oseliero Antonio",   role: "Responsabile"),
    (name: "Todesco Mattia",  role: "Analista"),
    (name: "Zaccone Rosario",  role: "Analista"),
  ),
  oraInizio: "14:30",
  oraFine: "15:30"
)

#set text(font:"New Computer Modern", size: 1.3em)
#set align(left)

= GitHub Actions
Sono state discusse le automazioni introdotte tramite GitHub Actions:
    - item Sito internet per la visualizzazione ordinata della documentazione il quale viene  automaticamente aggiornato con la modifica del repository;
    - item Compilazione automatica dei file .tex con conseguente generazione nel repository dei file pdf corrispondenti.


= Meeting di Retrospettiva
Sono stati discussi i meeting di retrospettiva, fissati ogni domenica alle ore 15:00.
\ Per definire ordinatamente alcuni argomenti da trattare in tali meeting, come i "keep doing" e i problemi riscontrati durante la settimana, è stato deciso di utilizzare lo strumento "Miro", la quale bacheca va aggionata prima del meeting domenicale.

= Norme di progetto
Il documento relativo alle norme di progetto è stato revisionato e discusso dal gruppo.
\ Sono stati proposti degli strumenti per la realizzazione di grafici UML:
   - StarUML;
   - Eraser;
   - Draw.io.
 È stato discusso l'utilizzo di Latex in maniera più specifica analizzando l'utilizzo del template e degli include.
\ È stato deciso che i file .tex saranno posti in un branch dedicato del repository.

= To do
    - Sono emersi dubbi riguardo alle tecnologie e le pratiche da adottare per la fase di test della parte grafica da realizzare. È di conseguenza emersa la necessità di organizzare un meeting esterno con il proponente per discutere tali dubbi. Ciascuno deve quindi pensare alle domande da porre in tale occasione;
    - Stabilire con precisione il criterio di versionamento dei file;
    - Ricontrollare le norme di progetto;
    - Prendere confidenza con le tecnologie scelte (Miro, Jira, ecc), e con quelle proposte così da prendere scelte consapevoli;
    - Iniziare a pensare all'analisi dei requisiti.
