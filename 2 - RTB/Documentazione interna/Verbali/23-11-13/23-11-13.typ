#import "template.typ": *

#show: project.with(
  title: "Verbale **13/11/23**",
  subTitle: "***Subtitle***",
  docType: "verbale",        
  partecipants: (
    (name: "Banzato Alessio", role: "Verificatore"),
    (name: "Carraro Riccardo", role: "Verificatore"),
    (name: "Gardin Giovanni",  role: "Redattore"),
    (name: "Nardo Silvio",   role: "Redattore"),
    (name: "Oseliero Antonio",   role: "Amministratore"),
    (name: "Todesco Mattia",  role: "Verificatore"),
    (name: "Zaccone Rosario",  role: "Amministratore"),
  ),
  oraInizio: "15:30",
  oraFine:  "17:30",
)

#set text(font:"New Computer Modern", size: 1.3em)
#set align(left)



= Ordine del giorno
  - Aggiornamento del gruppo in merito alle nuove automazioni adottate;
  - Retrospettiva dello sprint 2;
  - Discussione in merito alle tecnologie adottate;
  - Ripartizione dei ruoli per il nuovo sprint;
  - Pianificazione sprint 3;

= Automazioni e nuova repository
  Il gruppo che si è dedicato nel precedente sprint ad automatizzare la repository ha 
  finalizzato il lavoro e ha aggiornato il gruppo riguardo alle nuove funzionalità.
  La vecchia repository è stata abbandonata in favore di una nuova (questo perchè riorganizzare 
  la vecchia repository avrebbe richiesto troppo tempo) con una nuova organizzazione dei branch, 
  differente rispetto alla precedente. La differenza fondamentale è prima si aveva 
  un branch main per le release, un branch develop comune da cui si aprivano poi i vari branch feature 
  di lavoro; ora abbiamo un branch main che racchiude tutti i pdf dei file, un branch orfano website 
  che contiene un piccolo sito del gruppo e un altro branch orfano src contenente tutti i sorgente 
  dei file (.typ).  


= Retrospettiva sullo sprint 
  Segue quindi la discussione in merito ai miglioramenti da attuare nei seguenti sprint e quello 
  attuale. Lo sprint passato ha avuto due criticità fondamentali: una generale confusione da 
  parte del team di documentazione in merito alla priorità da dare ai vari documenti da redigere 
  e cosa riportarvi all'interno; l'impossibilità di utilizzare la nuova repository bloccata dai 
  rallentamenti subiti dal sottovalutare la mole di lavoro riguardo l'attuazione delle automazioni  

= Nuove tecnologie
  Il gruppo ha continuato la riunione facendo una panoramica sulle nuove tecnologie adottate:
  - Jira: ITS sostitutivo a github, scelto per le molte possibilità che offre come i 
  diagrammi di Gantt o la possibilità di definire macro obbiettivi (epic) oltre le normali 
  task. Un altro pregio fondamentale di Jira è la possibilità di definire sprint settimanali 
  che permettono di definire obbiettivi da raggiungere entro l'arco di, appunto, una settimana.
  Questa feature è fondamentale per definire la qualità del lavoro svolto, se il ritmo di 
  lavoro è stato opportunamente calcolato/rispettato, dove risiedono le criticità della 
  pianificazione del lavoro;
  - Miro: Una board che verrà utilizzata durante i meeting interni per supportare processi di 
  brainstorming o per riportare concetti o criticità durante l'analisi dello sprint appena terminato.

= Ripartizione dei ruoli
  In seguito al diario di bordo della mattina abbiamo seguito i suggerimenti del professore e ripartito 
  la forza lavoro in 3 gruppi: 
  - un gruppo per definire il Way of Working lavorerà alla stesura del documento "norme di progetto";
  - un gruppo (quello composto da più persone) dedicato alla stesura del documento "analisi dei requisiti";
  - un gruppo per la stesura del "piano di progetto".

= Conclusioni
  Le conclusioni sono state:
  - la necessità di cominciare a redigere un glossario dei termini;
  - la necessità di definire delle modalità di lavoro precise da utilizzare con Jira e un 
    workshop per allineare le conoscenze del gruppo in merito al suo utilizzo;
  - la necessità di contattare l'azienda per domande in merito all'analisi dei requisti
    (confermata per mercoledì 15/11/23).





