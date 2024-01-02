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
  - impatto: può essere lieve, medio, grave. Esprime l'effetto generato dall'evento;
  - probabilità: da 1 a 5. Esprime la probabilità del verificarsi del rischio;
  - soglie di accettazione del rischio;
  - azioni previste conseguenti alle soglie, possono includere:
    - l'eliminazione del rischio;
    - la riduzione della sua probabilità o gravità;
    - l'accettazione del rischio.

  - conseguenze relative alle azioni possibili, esse descrivono gli effetti collaterali a breve o medio termine che il rischio può comportare.

= Rischi

== Comunicazione con il proponente

I contatti con il proponente subiscono variazioni nella qualità e nella frequenza a causa di problematiche fuori dal controllo del gruppo. Questa situazione potrebbe causare un rallentamento significativo del lavoro, soprattutto durante l'analisi dei requisiti.

- Impatto: grave;
- Probabilità: 1;
- Soglie: 
  - se il periodo critico previsto è sufficientemente breve da permettere al team di continuare con un corretto avanzamento dei lavori nonostante la variazione nella comunicazione con il proponente, si adotta l'"Accettazione del rischio" mantenendo monitorata la situazione;
  - se il periodo critico previsto può mettere a rischio il corretto avanzamento dei lavori o la qualità degli stessi, si adotta l'azione correttiva di rischio: "Riduzione della sua probabilità o gravità".

=== Riduzione della sua probabilità o gravità
==== Strategia di trattamento
Si possono adottare, in accordo con il proponente, una o più tra le seguenti strategie comunicative:
  - Un uso di strumenti asincroni per facilitare lo scambio di informazioni tra gruppo e proponente;
  - Pianificazione anticipata degli incontri di revisione dell'avanzamento;
  - Programmazione di incontri periodici di aggiornamento, anche brevi.
==== Conseguenze
È prevista una modifica sostanziale, più o meno temporanea, nella comunicazione con il proponente. Questo potrebbe portare a ritardi nei lavori dovuti ad un maggior impegno da parte del team nel garantire l'adozione delle nuove pratiche.

=== Accettazione del rischio
==== Strategia di trattamento
Si attende il termine del periodo nel quale la comunicazione con il proponente risulta problematica.
Per evitare perdite di tempo il team continua a lavorare priorizzando task che non dipendono direttamente dall'intervento del proponente.

==== Conseguenze
Lo sviluppo potrebbe allontanarsi dalle linee guida o dalle aspettative del proponente, non rispettando quanto preventivato o pianificato. Tale rischio, comporterebbe dunque la produzione di un software non in linea con le richieste conducendo a perdite di tempo per analisi, progettazione e implementazione aggiuntive.


== "Effetto sottomarino"

Uno o più membri potrebbero, per motivi diversi, cessare la partecipazione attiva alle attività del gruppo. È necessario evitare che la durata di queste assenze impedisca il regolare svolgimento delle attività di progetto.

- Impatto: medio;
- Probabilità: 3;
- Soglie: 
- Conseguenze: i partecipanti che si dovessero trovare in questa situazione rischierebbero di accentuare eventuali incomprensioni nel proprio lavoro senza la possibilità di confrontarsi con gli altri accorgendosi degli errori troppo tardi;
- Mitigazione:
  - Mantenimento di un dialogo costante sulle problematiche interne al gruppo;
  - Segnalazione responsabile e preventiva di difficoltà o impedimenti da parte dei singoli membri.

== Rallentamento delle attività

Tra le difficoltà principali durante lo sviluppo del progetto è la congiunzione tra gli impegni individuali e progettuali. Tale rischio può comportare un rallentamento nel completamento di attività e task assegnate comportando un generale ritardo nello sviluppo.

- Impatto: grave;
- Probabilità: 4 (\textit{Probabilità aumentata nel periodo della sessione invernale});
- Conseguenze: attività non svolte o completate parzialmente determinerebbero uno slittamento della data di consegna e delle scadenze intermedie;
- Mitigazione:
  - Organizzazione e suddivisione del monte ore con occhio di riguardo a precise date e scadenze;
  - Incontri e comunicazione costante con i membri del gruppo al fine di rendere note eventuali indisponibilità o impegni;
  - Uso di strumenti asincroni al fine di permettere a tutti i membri un'equa divisione del lavoro da svolgere nei momenti a loro più comodi, a patto di rispettare le linee guida del Way Of Working.

== Utilizzo delle tecnologie

Le tecnologie individuate o suggerite durante i processi di analisi e progettazione potrebbero risultare complesse da comprendere e/o integrare.

- Impatto: medio;
- Probabilità: 4;
- Conseguenze: rallentamenti non preventivati che possono avere conseguenze a cascata sulle attività dipendenti;
- Mitigazione:
  - Accurata pianificazione e stesura delle norme di progetto e Way Of Working;
  - Assicurarsi che ad ogni membro del gruppo sia chiaro il funzionamento delle tecnologie e delle norme concordate.