<img alt="Logo di Error_418" src="https://github.com/Error-418-SWE/Documenti/blob/7778de3e750a90db96204acb8b7942b2876769a8/logo.png" width="128"/>

# Sorgenti della documentazione di Error_418

Il branch `src` contiene i file sorgente della documentazione di **Error_418** (gruppo 7). I documenti sono prodotti nell'ambito del corso di **Ingegneria del Software** del corso di Laurea in Informatica dell'Università degli Studi di Padova (A.A. 2023/2024).

## Documenti

I documenti sono redatti in italiano con [Typst](https://typst.app).

### Caratteristiche dei documenti

Il preambolo di ciascun file sorgente contiene i parametri di configurazione del modello (`/template.typ`).
Il contenuto del documento segue il preambolo.

### Categorizzazione dei documenti

I file sorgente, così come i documenti compilati (PDF), sono organizzati per milestone. Ciascun file sorgente risiede in una sottocartella dedicata, assieme al proprio registro delle modifiche (`./log.csv`).

## Modalità di modifica

Ogni modifica ai documenti deve essere soggetta a *pull request*, secondo le modalità previste dalle Norme di Progetto del Gruppo.

### Generazione automatica del changelog

All'apertura di una PR, un automatismo aggiorna il registro delle modifiche e assegna un numero di versione secondo i criteri definiti dalle Norme di Progetto del Gruppo.

### Compilazione automatica del documento

All'apertura di una PR e dopo l'aggiornamento automatico del registro delle modifiche, un automatismo compila il documento `.typ` per verificare l'assenza di errori nel markup.
Il documento prodotto è scaricabile in formato PDF da:

- pagina della PR;
- pagina di report dell'esecuzione della GitHub Action.

### Pubblicazione automatica del documento

Una PR che superi i controlli automatici e del verificatore può essere chiusa. Con la chiusura, il file sorgente confluisce nel branch `src` e il documento compilato viene pubblicato nel branch `main`.