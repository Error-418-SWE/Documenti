#let project(
  title: "",
  subTitle: "",
  docType: "doc",
  date: "",
  externalParticipants: (),
  authors: (),
  logo: "logo.png",
  timeStart: "",
  timeEnd: "",
  showLog: false,
  showIndex: true,
  body
) = {
// Set the document's basic properties
set document(author: "Error_418", title: title)
set text(font: "Inter", lang: "it")
set text(font: "New Computer Modern")
set page(numbering: "1", number-align: center)
set heading(numbering: "1.1")

// Define constants
let groupName = "Error_418"
let groupMembers = ("Banzato Alessio","Carraro Riccardo", "Gardin Giovanni" ,"Nardo Silvio", "Oseliero Antonio","Todesco Mattia","Zaccone Rosario")
let recipients = ("Vardanega Tullio", "Cardin Riccardo")

// Import parameters
let title = title
let subTitle = subTitle
let docType = docType
let date = date
let timeStart = timeStart
let timeEnd = timeEnd
let showLog = showLog
let showIndex = showIndex
let externalParticipants = externalParticipants
let authors = authors

// Asses if document is for external use
let isExternalUse = externalParticipants.len() > 0

// Setup titles
if docType == "verbale" {
    title = "Verbale " + date
    if isExternalUse {
      title = "Verbale esterno " + date
    }
}

// Page header
set page(header: locate(loc => {
  if counter(page).at(loc).first() > 1 [
    #smallcaps(title)
    #h(1fr)
    #groupName
  ]
}))

/////////////////////////////////////
// FUNCTIONS
/////////////////////////////////////

let addZeroes(value) = {
  if(str(value).len() == 1) {
    return text("0" + str(value))
  }
}

let calcolateDuration(timeStart, timeEnd) = {
  // given the start and the end time it returns the duration
  let startTimeHours;
  let startTimeMinutes;
  let dotsPassed = false;
  for character in timeStart {
    if(character == ":") {
      dotsPassed = true;
    }
    else {
      if(dotsPassed) {
        startTimeMinutes = startTimeMinutes + (character)
      }
      else {
        startTimeHours = startTimeHours + (character)
      }
    }
  }
  let endTimeHours;
  let endTimeMinutes;
  dotsPassed = false;
  for character in timeEnd {
    if(character == ":") {
      dotsPassed = true;
    }
    else {
      if(dotsPassed){
        endTimeMinutes = endTimeMinutes+(character)
      }
      else {
        endTimeHours = endTimeHours+(character)
      }
    }
  }
  let resultTimeHours = int(endTimeHours) - int(startTimeHours)
  let resultTimeMinutes = int(endTimeMinutes) - int(startTimeMinutes)
  return  text(addZeroes(resultTimeHours) + ":" + addZeroes(resultTimeMinutes));
}

let calculateKey(jObject, jObjectKeys) = {
  let dateToFind = ""
  if docType != "verbale" {
    let today = datetime.today()
    let year  = str(today.year()-2000)
    let month = str(today.month())
    let day   = str(today.day())

    if month.len() == 1 {
      month = "0" + month
    }

    if day.len() == 1 {
      day = "0" + day
    }

    dateToFind = year + "-" + month + "-" + day

  }
  else { //verbale
    dateToFind = date.split("/").rev().join("-")
  }

  let i = 0
  while i < jObject.keys().len()-1 {
    if jObjectKeys.at(i) <= dateToFind and dateToFind < jObjectKeys.at(i + 1) {
      return jObject.keys().at(i)
    }
    i = i + 1
  }
  //check se è l'ultimo elemento
  let lastKey = jObject.keys().at(jObject.keys().len() - 1)
  if dateToFind >= lastKey {
    return lastKey
  }
}
////////////////////
// END FUNCTIONS
///////////////////

// Cover page
page(numbering: none)[

  #v(0.6fr)
  #set align(center)

  // Group heading
  #grid(
    rows: auto,
    align(center, image(logo, width: 50%)),
    v(0.75em),
    align(center, text(2em, groupName + "\n"))
  )

  #v(2em)
  #line(length: 100%, stroke: 1pt)

  // Title and subtitle
  #align(center,text(2.5em, weight: "medium", title))
  #v(-1em)
  #if subTitle.len() != 0{ align(center,text(1.5em,subTitle)) }

  #if isExternalUse {
    let str_participants = ""
    let str_intro = "Referente esterno"
    for part in externalParticipants {
      str_participants += part.name + " "
    }
    if externalParticipants.len() > 1 {
      str_intro = "Referenti esterni"
    }
    align(center,text(1.5em, str_intro + ": " + str_participants))
  }

  #v(1em)
  #line(length: 100%, stroke: 1pt)
  #v(1em)

  // Authors and recipients
  #grid(
    columns: (50%, 50%),
    align(center,text(1.7em, "Redattori:\n " + text(0.8em, authors.join("\n")))),
    align(center,text(1.7em, "Destinatari:\n" + text(0.8em, recipients.join("\n"))))
  )

  #v(1em)
  #line(length:100%, stroke: 1pt)
  #v(1em)

  // Participants table
  #set align(center)
  #if docType == "verbale" {
    v(1fr)
    align(center, text(1.2em, weight: "bold", "Partecipanti"))
    v(1fr)
  }

  // Load roles from JSON file
  #let jObject = json("/roles.json")
  #let jObjectKeys = jObject.keys()
  #let key = calculateKey(jObject, jObjectKeys)
  #let ruoli = jObject.at(key)
  #for other in externalParticipants {
    ruoli.ruoli.insert(other.name, other.role)
  }

  #table(
    align: center,
    columns: (25%, 25%),
    [*Membro*],[*Ruolo*],
    ..ruoli.ruoli.pairs().flatten()
  )

  #v(2fr)

  // Time info
  #if docType == "verbale"{
    grid(
      columns: 3,
      column-gutter: 1.2em,
      text(1.1em, "Inizio Meeting: " + timeStart),
      text(1.1em, "Fine Meeting: "   + timeEnd),
      text(1.1em, "Durata Meeting: " + calcolateDuration(timeStart, timeEnd) + "h")
    )
    v(5fr)
  }

  // Document version
  #if docType != "verbale" {
    let changesData = csv("log.csv")
    text("Versione " + changesData.flatten().at(0))
  }

]

pagebreak()

// Changelog
if docType != "verbale" {
  page(numbering: "I")[
    #counter(page).update(1)
    #if (showLog and docType != "verbale"){
      let changesData = csv("log.csv")
      table(
        align: left,
        columns: (1fr, 1.5fr, 0.8fr, 5fr, 2.1fr, 2.1fr),
        [*Ver.*],[*Data*],[*PR*],[*Titolo*],[*Redattore*],[*Verificatore*],
        ..changesData.flatten(),
      )
    }
  ]
  pagebreak()
}

// Table of contents
if showIndex and docType != "verbale" {
  page(numbering: none)[
    #outline(depth: 3, indent: true)
  ]
  pagebreak()
}

// Body
show "link": word => text[#text(fill:blue, word)]
set par(justify: true)
counter(page).update(1)
body

//Signatures
if isExternalUse {
  align(
    end+bottom,
    grid(
      columns: 2,
      column-gutter: 1em,
      text(1em,"Firma partecipanti esterni: "),
      line(length: 100%),
      v(1em)
    ),
  )
}

}