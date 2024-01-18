#import "/template.typ": *

#show: project.with(
  title: "Lettera di Presentazione RTB",
  authors: (
    "Nardo Silvio",
  ),
  showLog: true,
  isExternalUse: true,
);

// dubbi: 
//        - va bene mettere solo me come autore o ci presentiamo a nome di tutto il gruppo ?
//        - devo mettere "isExternalUse: true,"  così facendo compare nel pdf "Uso Esterno"
//        - nel pdf compare anche "Versione 1.0.0" e "Stato Approvato", ha senso ??
//        - tra i destinatari compare anche "Gruppo Error_418", ha senso?
//        - prima del contenuto ci sono 4 pagine vuote relative a: changelog, indice dei contenuti, delle immagini e delle tabelle, ha senso?
//        - le "g" a pedice relative al glossario servono?
//        - che link gli diamo? quello del main della repo documenti o quello della cartella "2 - RTB" del main della repo documenti?
//        - ha senso mettere i ruoli dei membri nella tabella ? nella lettera di candidatura li abbiamo messi però non mi sembra un'informazione utile
//        - nella lista dei documenti in repo devo segnare il loro numero di versione? se si aspetto che siano revisionate le versioni
//        - ci sono altri documenti da aggiungere? roba della repo vecchia?
//        - possono andare bene le sezioni con cui ho diviso il documento? (Presentazione, Documentazione,Programmazione,Membri del gruppo) volete che metta i saluti finali su un'altra sezione "Conclusioni" ?
//        - per quanto riguarda la sezione Programmazione, le date di consegna e i costi di progetto stimati sono descritti in quale documento? oppure non riferisco documenti specifici ma faccio come ho visto anche in un altro gruppo del mercato nero che scrivono solo tali valori in maniera discorsiva?

= Presentazione
Con la presente, il gruppo Error-418 intende comunicarVi la volontà di candidarsi alla Requirements and Tecnology Baseline.\
Il capitolato da noi affrontato è:\
#align(center)[*"WMS3: warehouse management 3D"*]
proposto dall'azienda Sanmarco Informatica.

= Documentazione
La documentazione prodotta dal gruppo per la RTB è reperibile al link:\ 
#align(center)[#link("https://github.com/Error-418-SWE/Documenti/tree/main/2%20-%20RTB")]

All'interno di tale sezione del repository sarà possibile trovare:
  - Documentazione esterna: 
    - Verbali (esterni);
    - Analisi dei Requisiti;
    - Piano di Progetto;
    - Piano di Qualifica.

  - Documentazione interna: 
    - Verbali (interni);
    - Analisi dei Rischi;
    - Norme di Progetto.

  - Glossario

= Programmazione 
All'interno del documento ???, è preventivato il costo stimato alla realizzazione del prodotto, valore individuato a nnn€ con data di consegna prevista entro il gg-mm-aaaa.

= Membri del gruppo
#figure(
  table(
    columns: 3,
    fill: (col, row) => if row == 0 {rgb("#bbbbbb")},
    [*Nome*], [*Matricola*], [*Ruolo*],
    [Banzato Alessio],  [2042381],  [Programmatore],
    [Carraro Riccardo], [2042346],  [Progettista],
    [Gardin Giovanni],  [2010003],  [Programmatore],
    [Nardo Silvio],     [1222011],  [Responsabile],
    [Oseliero Antonio], [1226325],  [Programmatore],
    [Todesco Mattia],   [1193375],  [Amministratore],
    [Zaccone Rosario],  [2043680],  [Verificatore],
  ),
)

Cordiali saluti,\
Error_418 - Gruppo 7 di Ingegneria del Software.