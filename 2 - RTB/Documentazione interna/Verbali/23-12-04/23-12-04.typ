#import "/template.typ": *

#show: project.with(
  date: "04/12/23",
  subTitle: "Meeting di Context Switch relativo al PoC",
  docType: "verbale",
  authors: (
    "Nardo Silvio",
  ),
  missingMembers: (
    "Banzato Alessio",
    "Gardin Giovanni",
    "Zaccone Rosario",
    "Todesco Mattia"
  ), 
  timeStart: "15:00",
  timeEnd: "16:00",
);

= Ordine del giorno
- spiegazione del lavoro svolto sul PoC;
- analisi dei dubbi emersi;
- organizzazione dei lavori da svolgere durante lo sprint attuale relativamente al PoC.

== Spiegazione del lavoro svolto sul PoC
I lavori svolti durante lo sprint precedente sono stati esposti e spiegati, nello specifico è stato mostrata l'implementazione del sistema di posizionamento degli scaffali nell'ambiente di lavoro, il funzionamento di meccaniche base di Three.js, l'implementazione della lettura dei file SVG e del database.
Sono stati analizzati i moduli e le tecnologie utilizzate (dat.gui, OrbitControls, Vite, Parcel, MySQL).

== Analisi dei dubbi emersi
Tramite l'analisi dei lavori svolti sono emersi dubbi da esporre al proponente: 
- definire se sia più opportuno precaricare il database in blocco oppure interrogarlo ad ogni interazione che necessita le sue informazioni;

- definire come dovrebbe essere gestita l'altezza degli scaffali dopo aver configurato l'ambiente di lavoro tramite file SVG.

= Azioni da intraprendere

Le azioni da intraprendere si concentrano sullo sviluppo del PoC:
- studiare l'utilizzo di Docker e la containerizzazione dell'applicativo;
- esplorare le tecnologie alternative a Three.js, nello specifico Unreal Engine (appena terminato il lavoro attualmente iniziato sulle Norme di Progetto);
- implementare i bin e il loro rapporto con gli scaffali (appena terminato il lavoro attualmente iniziato sulle action di GitHub);
- esplorare i diversi modi di implementare l'interfaccia utente (nel caso qualcuno terminasse anzitempo il lavoro assegnato).

























