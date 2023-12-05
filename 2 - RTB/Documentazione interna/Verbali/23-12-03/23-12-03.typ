#import "/template.typ":*

#show: project.with(
  date: "03/12/23",
  docType: "verbale",
  authors: (
    "Todesco Mattia",
  ),
  missingMembers: (
    "Carraro Riccardo", "Zaccone Rosario",
  ),
  timeStart: "15:00",
  timeEnd: "17:00",
);

= Ordine del giorno
- Rotazione dei ruoli;
- Programmazione appuntamento con il Referente aziendale;
- Retrospettiva sprint 4;
- Presentazione degli dimostratori tecnologici realizzati;
- Pianificazione sprint 5.

== Rotazione dei ruoli

Il gruppo attua la rotazione dei ruoli secondo la programmazione stabilita nel Piano di Progetto.

== Meeting esterno con il Proponente

È stato proposto un meeting al Proponente per il giorno 06/12/2023 alle ore 16:00. Attualmente il meeting è in attesa di conferma. Il meeting verterà sulle tecnologie, sui dimostratori tecnologici realizzati e sull'individuazione di requisiti non funzionali.

== Dimostratori tecnologici

Sono stati presentati tre dimostratori tecnologici, ciascuno focalizzato sulla comprensione di una specifica funzionalità:

+ *importazione SVG*: applicazione basata su _Three.js_ che genera un ambiente 3D a partire da un file SVG standard;
+ *interrogazione di un database*: applicazione basata su _Express.js_ che mostra, sotto forma di testo, il risultato di una query eseguita su un database MySQL locale;
+ *creazione di elementi nello spazio 3D*: applicazione basata su _Three.js_ che permette all'utente di posizionare nell'ambiente 3D un numero di cubi parametrizzati e di segnalarne la collisione.

I risultati sono incoraggianti e il gruppo è entusiasta delle potenzialità di _Three.js_. Nel corso di un prossimo meeting, gli esploratori tecnologici realizzati saranno sottoposti al Referente aziendale per sostanziare la visione di progetto ed ottenere feedback. Nell'ambito dello sprint 5, il gruppo valuterà la realizzazione di esploratori tecnologici analoghi basati su tecnologie diverse (ad esempio _Unreal Engine_ o _Unity_).

== Retrospettiva sprint 4

=== Keep doing

La valutazione, supportata dalla board di retrospettiva su Miro, ha evidenziato i seguenti aspetti positivi:

+ buona suddivisione del lavoro;
+ buona autonomia dei membri del gruppo;
+ i PoC sviluppati sono incoraggianti.

=== Improvements <improvements>

Le criticità riscontrate sono:

+ le PR possono rimanere aperte per diversi giorni perché l'autore non risponde e non attua le correzioni in tempi ragionevoli a seguito di review negativa;
+ la lavorazione di un ticket sembra terminare con l'apertura della PR, non con il merge;
+ numerosi merge conflict, dovuti alla scrittura concorrente di documenti e log;
+ lavorazione opaca dei ticket: capita che il backlog non rappresenti il reale stato di avanzamento del ticket;
+ il lavoro sulla Analisi dei Requisiti è stato profondamente rivisto dopo il cambio di ruoli;
+ notifiche da GitHub, Jira copiose e spesso ridondanti;
+ il lavoro sul PoC richiede più risorse del previsto.

=== Azioni correttive <correzioni>

In riferimento ai punti descritti in @improvements, il gruppo attua le seguenti azioni correttive:

#set ref(
  supplement: none,
)

#table(
  columns: (auto, auto),
  [*Rif.*], [*Azione correttiva*],
  [@improvements\.1 \ @improvements\.2], [È stato chiarito che la lavorazione dei ticket non termina con l'apertura della relativa PR, bensì con il suo merge nel _branch_ principale. Per questa ragione deve essere cura dell'autore della PR attuare in tempi ragionevoli le correzioni richieste dal verificatore.],
  [@improvements\.3], [I _merge conflict_ non sono necessariamente segno di procedure errate. Nel corso dell'ultimo sprint documenti e registri delle modifiche sono stati oggetto di scritture concorrenti. L'amministratore è incaricato di indagare eventuali aggiornamenti delle procedure e delle automazioni per ridurre l'occorrenza di _merge conflict_.],
  [@improvements\.4], [L'assegnatario del ticket è tenuto a porre lo stato del ticket su "In corso" all'inizio della sua lavorazione.],
  [@improvements\.5], [Nella fattispecie, il documento di Analisi dei Requisiti è stato oggetto di un'azione di _refactoring_ a seguito dell'incontro con il Proponente del 23/11/2023.],
  [@improvements\.6], [Le impostazioni di notifica sono state aggiornate in modo da notificare solo i membri interessati e non l'intero gruppo. Si sottolinea l'importanza di leggere le notifiche per evitare la necessità di fare _polling_.],
  [@improvements\.7], [Nel corso del prossimo sprint saranno assegnati due programmatori.],
)

#set ref(
  supplement: auto,
)

== Pianificazione sprint 5

- Attuare le azioni correttive descritte in @correzioni\;
- Implementare l'automazione della compilazione di documenti composti da più file sorgente Typst;
- Proseguire l'adeguamento delle Norme di Progetto allo standard ISO/IEC 12207:2017;
- Proseguire l'esplorazione tecnologica tramite la realizzazione di piccoli dimostratori e lo studio di tecnologie alternative a _Three.js_;
- Richiedere un colloquio al Prof. Cardin in merito ai dubbi su alcuni UC individuati;
- Aggiornare consuntivo sprint 4 e preventivo sprint 5 in Piano di progetto.