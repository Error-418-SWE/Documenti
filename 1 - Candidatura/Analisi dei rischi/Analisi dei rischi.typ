#import "/template.typ": *

#show: project.with(
  title: "Analisi dei rischi",
  subTitle: "",
  authors: (
    "Banzato Alessio",
    "Nardo Silvio",
    "Oseliero Antonio",
  ),
  showLog: true,
);

= Profili di rischio

A ciascun rischio individuato si associano:
  - informazioni descrittive sul suo contesto;
  - impatto: può essere lieve, medio o grave. Esprime l'ordine di grandezza dell'effetto generato dall'evento;
  - probabilità: da 1 a 5. Esprime la probabilità di verificarsi del rischio;
  - soglie di accettazione del rischio;
  - azioni previste in funzione delle soglie, possono includere:
    - l'eliminazione del rischio;
    - la riduzione della sua probabilità o gravità;
    - l'accettazione del rischio.

  - conseguenze relative a ciuascuna delle azioni possibili, esse descrivono gli effetti collaterali a breve o medio termine che il rischio può comportare.

= Rischi

== Comunicazione con il Proponente
I contatti con il Proponente subiscono variazioni nella qualità e nella frequenza a causa di problematiche fuori dal controllo del gruppo. Questa situazione potrebbe causare un rallentamento significativo del lavoro, soprattutto durante l'analisi dei requisiti.

- Impatto: grave;
- Probabilità: 1;
- Soglie: 
  - se il periodo critico previsto è sufficientemente breve da permettere al gruppo di continuare con un corretto avanzamento dei lavori nonostante la variazione nella comunicazione con il Proponente, si adotta l'"Accettazione del rischio" mantenendo monitorata la situazione;
  - se il periodo critico previsto può mettere a rischio il corretto avanzamento dei lavori o la qualità degli stessi, si adotta l'azione correttiva di rischio: "Riduzione della sua probabilità o gravità".

=== Opzioni di trattamento del rischio
==== Riduzione della sua probabilità o gravità
*Strategia di trattamento* \
Si possono adottare, in accordo con il Proponente, una o più tra le seguenti strategie comunicative:
  - uso di strumenti asincroni per facilitare lo scambio di informazioni tra gruppo e Proponente;
  - pianificazione anticipata degli incontri di revisione dell'avanzamento;
  - programmazione di incontri periodici di aggiornamento, anche brevi.
\ *Conseguenze* \
È prevista una modifica sostanziale, più o meno temporanea, nella comunicazione con il Proponente. Questo potrebbe portare a ritardi nei lavori dovuti ad un maggior impegno da parte del gruppo nel garantire l'adozione delle nuove pratiche.

==== Accettazione del rischio
*Strategia di trattamento* \
Si attende il termine del periodo nel quale la comunicazione con il Proponente risulta problematica.
Per evitare perdite di tempo il gruppo continua a lavorare priorizzando task che non dipendono direttamente dall'intervento del Proponente.
In caso di Accettazione del rischio è importante tenere monitorata nel tempo la situazione per accertarsi che le circostanze non richiedano una modifica nell'approccio di risoluzione.

\ *Conseguenze* \
Lo sviluppo potrebbe allontanarsi dalle linee guida o dalle aspettative del Proponente, non rispettando quanto preventivato o pianificato. Tale rischio, comporterebbe dunque la produzione di un software non in linea con le richieste conducendo a perdite di tempo per analisi, progettazione e implementazione aggiuntive.


== "Effetto sottomarino"
Uno o più membri cessano temporaneamente la partecipazione attiva alle attività del gruppo. È necessario evitare che la durata di queste assenze impedisca il regolare svolgimento delle attività di progetto.
È da considerare ulteriormente grave la situazione in cui è mancata totalmente una segnalazione responsabile e preventiva di difficoltà o impedimenti da parte dei singoli membri coinvolti.

- Impatto: medio;
- Probabilità: 3;
- Soglie: 
  - se la cessazione della partecipazione da parte di uno o più membri del gruppo può causare un rallentamento nell'avanzamento dei lavori è necessario discutere con i diretti interessati al fine di inquadrare al meglio la situazione. Nel caso in cui tale dialogo rivelasse un'impossibilità nella ripresa delle attività in breve termine oppure nel caso in cui non sia possibile contattare i diretti interessati, è necessario attuare la "Riduzione della sua probabilità o gravità";
  - in caso contrario, se contattando i membri coinvolti emerge la previsione certa di una corretta ripresa delle attività in breve tempo, si attua l'"Accettazione del rischio".

=== Opzioni di trattamento del rischio
==== Riduzione della sua probabilità o gravità
*Strategia di trattamento* \
Le attività di lavoro assegnate ai membri coinvolti che non hanno una corretta conclusione nei tempi e nelle modalità previste possono essere riassegnate ad altri membri del gruppo. 
Viene sollecitato il dialogo con i membri coinvolti per capire la situazione e programmare al meglio le attività da svolgere.

\ *Conseguenze* \
Vengono ridotti, seppur non eliminati, i ritardi nell'avanzamento dei lavori.
Le task svolte senza una chiara condivisione di informazioni da parte dei membri coinvolti possono portare a risultati non conformi con le decisioni prese dal gruppo di lavoro quindi possono risultare in parte o totalmente inutilizzabili.

==== Accettazione del rischio
*Strategia di trattamento* \
Si attende il termine del periodo nel quale la partecipazione dei membri interessati risulti insufficiente.
In caso di Accettazione del rischio è importante tenere monitorata nel tempo la situazione per accertarsi che le circostanze non richiedano una modifica nell'approccio di risoluzione.

\ *Conseguenze* \
I partecipanti che si dovessero trovare in questa situazione rischierebbero di accentuare eventuali incomprensioni nel proprio lavoro senza la possibilità di confrontarsi con gli altri accorgendosi degli errori troppo tardi.
Lo stato di avanzamento dei lavori potrebbe subire ulteriori rallentamenti.


== Rallentamento delle attività dovuto a cause esterne
Rallentamento nel completamento di attività e task assegnate derivato dalla congiunzione tra gli impegni individuali e progettuali.
Esso comporta un generale ritardo nello sviluppo.

- Impatto: grave;
- Probabilità: 4 _Probabilità aumentata nel periodo della sessione invernale_;
- Soglie: se i rallentamenti previsti possono ridurre l'efficienza lavorativa del gruppo, si attua il trattamento "Riduzione della sua probabilità o gravità".

=== Opzioni di trattamento del rischio
==== Riduzione della sua probabilità o gravità
*Strategia di trattamento* \
Implementazione di una pianificazione più flessibile decisa in sede di meeting, per adattarsi agli impegni individuali e progettuali. 
Questo prevede una priorizzazione nell'uso di strumenti di lavoro asincroni, al fine di permettere a tutti i membri un'equa divisione del lavoro da svolgere nei momenti a loro più comodi, a patto di rispettare le linee guida delle Norme di Progetto.
Assegnazione chiara delle responsabilità in luce dei rallentamenti previsti e monitoraggio costante dello stato di avanzamento.
Inoltre è richiesta comunicazione costante con i membri del gruppo al fine di rendere note eventuali indisponibilità o impegni.


\ *Conseguenze* \
Miglioramento dell'efficienza nel completamento dei compiti nonostante i rallentamenti inevitabili.
Le attività non svolte o completate parzialmente possono determinare uno slittamento della data di consegna e delle scadenze intermedie prefissate.


== Utilizzo problematico delle tecnologie
Le tecnologie individuate o suggerite durante i processi di analisi e progettazione potrebbero risultare complesse da comprendere e/o integrare.

- Impatto: medio;
- Probabilità: 4;
- Soglie:
  - se, compreso un ragionevole rallentamento dovuto all'apprendimento di nuove competenze, la complessità delle tecnologie risulta gestibile con le competenze attuali del gruppo e non compromette significativamente la tempistica del progetto, si adotta l'"Accettazione del rischio";
  - se la complessità delle tecnologie supera significativamente le competenze attuali del gruppo e potrebbe quindi causare gravi ritardi nell'avanzamento dei lavori, si adotta l'azione correttiva di rischio: "Riduzione della sua probabilità o gravità".

=== Opzioni di trattamento del rischio
==== Riduzione della sua probabilità o gravità
*Strategia di trattamento* \
Viene considerata in sede di meeting la necessità di individuare tecnologie sostitutive che rimpiazzeranno quelle coinvolte, esse dovranno essere studiate ed implementate al fine di soddisfare i requisiti rimasti irrisolti a causa dell'occorrenza del rischio.
Se si ritiene necessario, si richiede una maggiore partecipazione da parte degli altri membri del gruppo, con conseguente riassegnazione di attività e/o ruoli, per integrare le nuove tecnologie nel minor tempo possibile.

\ *Conseguenze* \
Le analisi tecnologiche precedentemente fatte devono essere riviste in luce delle nuove opzioni individuate. Queste ultime possono essere a loro volta totalmente o parzialmente sconosciute al gruppo, il quale dovrà dedicare tempo, non preventivato precedentemente, alla loro comprensione ed integrazione.
Le nuove tecnologie individuate possono potenzialmente generare nuovamente questo rischio portando ad un rallentamento grave nell'avanzamento dei lavori.

==== Accettazione del rischio
*Strategia di trattamento* \
Il gruppo accetta la complessità delle tecnologie e si impegna a risolvere eventuali problemi nell'implementazione e utilizzo delle stesse.
Se si ritiene necessario, si richiede una maggiore partecipazione da parte degli altri membri del gruppo, con conseguente riassegnazione di attività e/o ruoli, alla risoluzione degli eventuali problemi riscontrati.
In caso di Accettazione del rischio è importante tenere monitorata nel tempo la situazione per accertarsi che le circostanze non richiedano una modifica nell'approccio di risoluzione.


\ *Conseguenze* \
Rallentamenti non preventivati che possono avere conseguenze a cascata sulle attività dipendenti e che possono coinvolgere più membri del gruppo per un periodo di tempo difficilmente prevedibile.
