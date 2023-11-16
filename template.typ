// The project function defines how your document looks.
// It takes your content and some metadata and formats it.
// Go ahead and customize it to your liking!
#let project( title: "",
            subTitle: "",
            docType: "",
            firmeEsterne:"",
            partecipants: (),
            recipients: "Vardanega Tullio \n Cardin Riccardo",
            logo: "logo.png",
            oraInizio:"",
            oraFine:"",
            showLog: false,
            showIndex: true,
            body) = {

// Set the document's basic properties.
set document(author: "Error_418", title: title)
set page(numbering: "1", number-align: center)
set text(font: "Source Sans Pro", lang: "it")
set heading(numbering: "1.1")
let groupMembers = ("Oseliero Antonio","Banzato Alessio","Gardin Giovanni","Nardo Silvio","Carraro Riccardo","Zaccone Rosario","Todesco Mattia");
let title = title;
let subTitle = subTitle;
let docType = docType;
let oraInizio = oraInizio;
let oraFine = oraFine;
let esterno = false;
let recipients = recipients;
let firmeEsterne = firmeEsterne;
let showLog = showLog;
let showIndex = showIndex;
let changesData = ();
if showLog {
  changesData = csv("log.csv");
}
let partecipants = partecipants;
let externalParticipants = ()
// Title page.
// The page can contain a logo if you pass one with `logo: "logo.png"`.
v(0.6fr)


let isEsterno()={
  let esternoTmp = false
  let isRecognised
  //let externalParticipants = ()
  //sets the "Esterno" value in function of partecipants
  for partecipant in partecipants{
    isRecognised = false
    for member in groupMembers{
      if(member == partecipant.name){
        // this partecipant is a group member
        isRecognised = true;
        break
      }
    }
    if isRecognised == false{
      // this partecipant is not a group member
        esternoTmp = true
        return esternoTmp
      //externalParticipants.push(partecipant.name)
    }
  }
  return esternoTmp
}

esterno = isEsterno()

let addZeroes(value)={
  // given a value, if it has only one character a "0" is added in front of it
  if(str(value).len()==1){
    return text("0"+str(value))
  }
}

let calcolateDuration(oraInizio,oraFine)={
  // given the start and the end time it returns the duration
  let startTimeHours;
  let startTimeMinutes;
  let dotsPassed = false;
  for character in oraInizio{
      if(character == ":"){
        dotsPassed = true;
      }else{
        if(dotsPassed){
          startTimeMinutes = startTimeMinutes + (character)
          }else{
          startTimeHours = startTimeHours + (character)
          }
      }
  }
  let endTimeHours;
  let endTimeMinutes;
  dotsPassed = false;
  for character in oraFine{
      if(character == ":"){
        dotsPassed = true;
      }else{
        if(dotsPassed){
          endTimeMinutes = endTimeMinutes+(character)
          }else{
          endTimeHours = endTimeHours+(character)
          }
      }
  }
  let resultTimeHours = int(endTimeHours) - int(startTimeHours)
  let resultTimeMinutes = int(endTimeMinutes) - int(startTimeMinutes)
  return  text(addZeroes(resultTimeHours)+":"+addZeroes(resultTimeMinutes));
}

let durata = ""
if docType == "verbale"{
  durata = calcolateDuration(oraInizio,oraFine);
}

//Capire se si tratta di un verbale per condizionare il layout
if docType != "verbale"{
  //layout documento
  set align(center)
  grid(
    rows: 2,
    align(center, image(logo, width: 60%)),
    align(center, text(font:"New Computer Moder", 3.5em,weight: "extralight","Error_418\n"))
  )
}else{
  //layout verbale
  set align(left)
  grid(
    columns: 2,
    row-gutter: 30pt,
    align(center, image(logo, width: 50%)),
    align(center)[
      \
      #text(font:"New Computer Moder", 4em,weight: "extralight","     Error_418\n")
      #v(3em)
    ],
  )
}

//sezione Titolo e Sottotitolo
v(20pt)
line(length: 100%)
align(center,text(font:"New Computer Modern",2.5em, weight: "medium",title))
if subTitle.len() != 0{
    align(center,text(font:"New Computer Modern",1.5em, weight: "extralight",subTitle))
}
if esterno {
    align(center,text(font:"New Computer Modern",1.5em, weight: "extralight","Referente aziendale: Matteo Bassani (Sanmarco Informatica)"))
}
line(length: 100%)
v(2em)

//sezione Redattori e Destinatari
let writers = "";
let findWriters()={
  let writersTmp = "";
  for partecipant in partecipants{
    if(partecipant.role == "Redattore"){
      writersTmp = text(writersTmp +"\n"+ str(partecipant.name))
    }
  }
  return writersTmp
}

writers = text(0.8em,findWriters());
recipients = text(0.8em,recipients);

grid(
  columns: (50%,50%),
  align(center,text(font:"New Computer Modern",1.7em, weight: "extralight", "Redattori: "+writers)),
  align(center,text(font:"New Computer Modern",1.7em, weight: "extralight", "Destinatari:\n" + recipients))
  )
v(2fr)
line(length:100%)
v(1fr)

// tabella
set align(center)
if docType == "verbale"{
  v(1fr)
  align(center, text(font:"New Computer Modern",1.5em, weight: "bold", "Partecipanti"))
  v(1fr)
}

let partecipantValues = ()
for partecipant in partecipants{
    partecipantValues.push((partecipant.name, partecipant.role))
}

table(
columns: (2fr, 2fr),
column-gutter: 0.2em,
align: center,
inset:7pt ,
[*Membro*], [*Ruolo*],
..partecipantValues.flatten())

//time info
v(2fr)

if docType == "verbale"{
  grid(
    columns: 3,
    column-gutter: 1.2em,
    text(font:"New Computer Modern",1.35em, weight: "extralight", "Inizio Meeting:  "+oraInizio),
    text(font:"New Computer Modern",1.35em, weight: "extralight", "Fine Meeting: "+oraFine),
    text(font:"New Computer Modern",1.35em, weight: "extralight", "Durata Meeting: "+durata+"h")
  )
  v(5fr)
}

pagebreak()

if (showLog and docType != "verbale"){
  // Changelog
  table(
    align: left,
    columns: 6,
    [*Ver.*],[*Data*],[*PR*],[*Titolo*],[*Redattore*],[*Verificatore*],
  )
  pagebreak()
}

if showIndex and docType != "verbale"{
  // Table of contents.
  outline(depth: 3, indent: true)
  pagebreak()
}

// Main body.
set par(justify: true)
body

// External signature.
if esterno {
  align(bottom+left,
    text(font:"New Computer Modern",(
      text(weight: "bold",1.4em,"Firme partecipanti esterni: ") +
      text(1.35em,""+firmeEsterne))
    )
  )
}
}
