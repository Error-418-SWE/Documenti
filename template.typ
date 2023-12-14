#let project(
  title: "",
  subTitle: "",
  docType: "doc",
  date: "",
  externalParticipants: (),
  authors: (),
  reviewers: (),
  missingMembers: (),
  location: "Discord",
  timeStart: "",
  timeEnd: "",
  showLog: false,
  showIndex: true,
  isExternalUse: false,
  body
) = {
// Document and elements styling
set text(
  font: "New Computer Modern",
  lang: "it",
)
set par(
  first-line-indent: 1em,
  leading: 0.85em,
)
set page(
  numbering: "1",
  number-align: center,
  paper: "a4",
  margin: (x: 2cm, y: 2.5cm),
)
set heading(
  numbering: "1.1",
)
set list(
  marker: ([•], [--]),
)
set enum(
  numbering: "1a)",
)
set table(
  fill: (_, row) => if row == 0 { luma(240) },
)
show link: set text(fill: blue)
show heading.where(
  level: 1
): it => {
  it
  v(1em, weak: true)
}
show heading.where(
  level: 2
): it => {
  v(0.5em, weak: false)
  it
  v(1em, weak: true)
}
show heading.where(
  level: 3
): it => {
  it
  v(1em, weak: true)
}

show outline.entry.where(
  level: 1
): it => {
  strong(it)
}
show "WIP": it => [
  #text(it, fill: red)
]
show "TODO": it => [
  #box(
    stroke: red,
    inset: 0.15em,
    text("Riferimento assente", fill: red, weight: "bold")
  )
]

// Define constants
let groupName = "Error_418"
let groupMembers = ("Banzato Alessio","Carraro Riccardo", "Gardin Giovanni" ,"Nardo Silvio", "Oseliero Antonio", "Todesco Mattia", "Zaccone Rosario")
let recipients = ("Gruppo " + groupName, "Vardanega Tullio", "Cardin Riccardo")
let changelogData = csv("log.csv")
let logo = "logo.png"

// Import parameters
let title = title
let subTitle = subTitle
let docType = docType
let date = date
let location = location
let timeStart = timeStart
let timeEnd = timeEnd
let showLog = showLog
let showIndex = showIndex
let missingMembers = missingMembers
let externalParticipants = externalParticipants
let authors = authors
let reviewers = reviewers
let isExternalUse = isExternalUse or externalParticipants.len() > 0
let documentVersion = "WIP"

// Check members validity
for author in authors {
  if (author not in groupMembers) {
    panic("Controlla lo spelling dei redattori.")
  }
}
for reviewer in reviewers {
  if (reviewer not in groupMembers) {
    panic("Controlla lo spelling dei verificatori, o rimuovili per caricare automaticamente il verificatore designato.")
  }
}
for member in missingMembers {
  if (member not in groupMembers) {
    panic("Controlla lo spelling degli assenti.")
  }
}

// Handle plurals
let str_authors = "Redattore"
if (authors.len() >= 2) {
  str_authors = "Redattori"
}
let str_reviewers = "Verificatore"
if (reviewers.len() >= 2) {
  str_reviewers = "Verificatori"
}
let str_representatives = "Referente"
if (externalParticipants.len() >= 2) {
  str_representatives = "Referenti"
}

// Setup titles
if docType == "verbale" {
    title = "Verbale interno " + date
    if isExternalUse {
      title = "Verbale esterno " + date
    }
}

// Define version
if (changelogData.flatten().len() > 0) {
  documentVersion = changelogData.flatten().at(0)
}

// Set the document's basic properties
set document(
  author: "Error_418",
  title: title,
  date: auto
)

// Insert company to recipients list
for externalParticipant in externalParticipants {
  if externalParticipant.role.contains("Referente aziendale") {
    recipients.insert(1, "Sanmarco Informatica")
    break
  }
}

// Page header
set page(
  header: locate(loc => {
    text(
      0.75em,
      if counter(page).at(loc).first() > 1 [
        #upper(title) v#documentVersion
        #h(1fr)
        #groupName
        #line(length: 100%, stroke: 0.25pt)
      ]
    )
  })
)

// Extract Json data based on date
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

// Cover page
page(numbering: none)[

  #set align(center)

  // Group heading
  #grid(
    rows: auto,
    image(logo, width: 50%),
    v(0.5em),
    text(2em, groupName + "\n"),

    v(0.5em)
  )
  #grid(
    columns: (30%, 30%),
    column-gutter: 1em,
    link("https://github.com/Error-418-SWE/")[GitHub/Error-418-SWE],
    link("mailto:error418swe@gmail.com")
  )

  #v(2em)
  #line(length: 100%, stroke: 1pt)

  // Title and subtitle
  #align(center,text(2.5em, weight: "medium", title))
  #v(-1em)
  #if subTitle.len() != 0 {
    align(center,text(1.5em,subTitle))
  }

  #v(1em)
  #line(length: 100%, stroke: 1pt)
  #v(2em)

  #v(2em)

  // Participants table
  #set align(center)
  #v(1fr)
  #align(center, text(1em, weight: "bold", "Informazioni"))
  #line(length: 50%, stroke: 0.25pt)

  // Load roles from JSON file
  #let jObject = json("/roles.json")
  #let jObjectKeys = jObject.keys()
  #let key = calculateKey(jObject, jObjectKeys)
  #let ruoli = jObject.at(key)
  #for other in externalParticipants {
    ruoli.ruoli.insert(other.name, other.role)
  }

  #let summaryHeading = align.with(right)
  #let summaryContent = align.with(left)

  // Show roles
  #grid(
    columns: (25%, 25%),
    gutter: 15pt,
    // Versione
    summaryHeading[*Versione*],
    summaryContent[
      #documentVersion
    ],

    // Destinazione d'uso
    summaryHeading[*Uso*],
    summaryContent[
        #if isExternalUse {
          text("Esterno")
        } else {
          text("Interno")
        }
    ],

    // Stato di approvazione
    summaryHeading[*Stato*],
    summaryContent[Approvato],

    // Responsabile del gruppo
    summaryHeading[*Responsabile*],
    summaryContent[
      #let responsabile = "n/a"
      #for role in ruoli.ruoli {
        if role.contains("Responsabile") {
          responsabile = role.flatten().at(0)
        }
      }
      #responsabile
    ],

    // Redattori documento
    summaryHeading[*#str_authors*],
    summaryContent[
      #authors.join("\n")
    ],

    // Verificatori documento
    summaryHeading[*#str_reviewers*],
    summaryContent[
      #let verificatore = "n/a"
      #if (reviewers.len() > 0) {
        verificatore = reviewers.join("\n")
      } else {
        for role in ruoli.ruoli {
          if role.contains("Verificatore") {
            verificatore = role.flatten().at(0)
          }
        }
      }
      #verificatore
    ],

    // Destinatari documento
    summaryHeading[*Destinatari*],
    summaryContent[
      #recipients.join("\n")
    ],

    if (isExternalUse and docType == "verbale") [
      #summaryHeading[*#str_representatives*]
    ],
    if (isExternalUse and docType == "verbale") [
      #summaryContent[
        #let str_participants = ""
        #for participant in externalParticipants {
          str_participants += participant.name + "\n"
        }
        #str_participants
      ]
    ],
  )

  #v(2fr)
]

pagebreak()

// Changelog
if (showLog and docType != "verbale") {
  page(numbering: "I")[
    #counter(page).update(1)
    #align(center, text(weight: "bold", "Registro delle modifiche"))
    #show par: set par(leading: 0.65em)
    #table(
      align: left,
      columns: (1fr, 1.5fr, 0.8fr, 5fr, 2.1fr, 2.1fr),
      [*Ver.*],[*Data*],[*PR*],[*Titolo*],[*Redattore*],[*Verificatore*],
      ..changelogData.flatten(),
    )
  ]
  pagebreak()
}

// Table of contents
if showIndex and docType != "verbale" {
  page(numbering: none)[
    #outline(
      title: "Indice dei contenuti",
      depth: 3,
      indent: true
    )
  ]
  pagebreak()
}

// Body
set par(justify: true)
counter(page).update(1)
if docType == "verbale" [
  // Build participants list
  #let allParticipants = ()
  #for member in groupMembers {
    if not missingMembers.contains(member) {
      allParticipants.push(member)
    }
  }
  #for other in externalParticipants {
    allParticipants.insert(0, other.name)
  }

  = Informazioni generali
  - Luogo: #location
  - Data e ora: #date \@ #timeStart \~ #timeEnd
  - Partecipanti (#allParticipants.dedup().len()):
    #for participant in allParticipants.dedup().sorted() {
      list.item(participant)
    }
  #if (missingMembers.len() > 0){[
  - Assenti (#missingMembers.dedup().len()):
    #for participant in missingMembers.dedup().sorted() {
      list.item(participant)
    }
  ]}
]
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