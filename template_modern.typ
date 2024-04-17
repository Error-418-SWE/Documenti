#import "/common.typ": *
#let project(
  title: "",
  subTitle: "",
  authors: (),
  reviewers: (),
  showLog: false,
  showIndex: true,
  showImagesIndex: true,
  showTablesIndex: true,
  isExternalUse: false,
  body
) = {
// Document and elements styling
set text(
  font: "Inter",
  lang: "it",
)
set par(
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
  fill: (_, row) => if row == 0 { luma(220) },
  stroke: 0.5pt + luma(140),
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
let product_logo = "logo_wms3.svg"

// Import parameters
let title = title
let subTitle = subTitle
let showLog = showLog
let showIndex = showIndex
let showImagesIndex = showImagesIndex
let showTablesIndex = showTablesIndex
let authors = authors
let reviewers = reviewers
let isExternalUse = isExternalUse
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

// Handle plurals
let str_authors = "Redattore"
if (authors.len() >= 2) {
  str_authors = "Redattori"
}
let str_reviewers = "Verificatore"
if (reviewers.len() >= 2) {
  str_reviewers = "Verificatori"
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

let pat(lightness) = pattern(
  size: (20pt, 20pt),
  relative: "parent",
  place(
    dx: 5pt,
    dy: 5pt,
    rotate(45deg, square(
      size: 5pt,
      fill: luma(lightness),
    )),
  ),
)

// Cover page

set page(margin: (x: 1.5cm, y: 0cm))

v(6em)

place(
  horizon + right,
  [
    #v(20em)
    #rect(fill: pat(200), width: 10em, height: 15em, outset: 0.3em)
  ]
)

image(product_logo, width: 30%)
v(-1em)
text(2.5em, weight: "medium", title)
v(-1em)
text(1.5em,subTitle)

v(2em)

// Information table
v(1fr)
set text(size: 10pt)
text(1em, weight: "bold", "Informazioni")
line(length: 40%, stroke: 0.25pt)

// Load roles from JSON file
let jObject = json("/roles.json")
let jObjectKeys = jObject.keys()
let key = calculateKey(jObject, jObjectKeys)
let ruoli = jObject.at(key)

let summaryHeading = align.with(left)
let summaryContent = align.with(left)

// Show roles
grid(
  columns: (auto, auto),
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

)

v(6em)

line(length: 100%, stroke: 0.25pt)
grid(
  columns: (1fr, auto),
  gutter: 1em,
  align: horizon,
  stack(
    dir: ltr,
    spacing: 1em,
    image(logo, width: 4em),
    groupName
  ),
  stack(
    dir: ltr,
    spacing: 2em,
    align(horizon, link("https://github.com/Error-418-SWE/")[GitHub/Error-418-SWE]),
    align(horizon, link("mailto:error418swe@gmail.com"))
  )
)
v(1cm)
pagebreak()

set page(
  margin: (x: 2cm, y: 2.5cm),
)
set text(size: 11pt)

// Changelog
if (showLog) {
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

// Index of contents
if showIndex {
  page(numbering: none)[
    #outline(
      title: "Indice dei contenuti",
      depth: 3,
      indent: true
    )
  ]
  pagebreak()
}
// Index of images
if showImagesIndex {
  page(numbering: none)[
    #outline(
      title: "Indice delle immagini",
      target: figure.where(kind: image)
    )
  ]
  pagebreak()
}
// Index of tables
if showTablesIndex {
  page(numbering: none)[
    #outline(
      title: "Indice delle tabelle",
      target: figure.where(kind: table)
    )
  ]
  pagebreak()
}

// Prepare regex for glossary terms matching
let glossary = json("./3 - PB/Documentazione esterna/Manuale Utente/glossario_manuale_utente.json");
let glossaryRegex = ()
let regexSeparator = "(\b|$)|(\b|$)"
for term in glossary.keys() {
  glossaryRegex.push(term)
  glossaryRegex.push(lower(term))
  if glossary.at(term).acronyms.len() > 0 {
    glossaryRegex.push(glossary.at(term).acronyms.join(regexSeparator))
    glossaryRegex.push(lower(glossary.at(term).acronyms.join(regexSeparator)))
  }
  if glossary.at(term).synonyms.len() > 0 {
    glossaryRegex.push(glossary.at(term).synonyms.join(regexSeparator))
    glossaryRegex.push(lower(glossary.at(term).synonyms.join(regexSeparator)))
  }
}
glossaryRegex = glossaryRegex.dedup().sorted().rev().join(regexSeparator)
// Highlight glossary terms

show regex(
  glossaryRegex
): it => {
  it
  h(0.03em)
  text(
    fill: luma(100),
    sub(emph("G"))
  )
  h(0.02em)
}

// Body
set par(justify: true)
counter(page).update(1)

body

show regex(
  "\bG\b"
): it => {
  ""
}

set heading(
  level: 1,
  numbering: none,
  outlined: false
)

let previousTerm = glossary.keys().at(0)
heading(
  level: 1,
  previousTerm.at(0)
)
line(length: 100%)
for term in glossary.keys() {
  if (term.at(0) != previousTerm.at(0)) {
    heading(
      level: 1,
      term.at(0)
    )
    line(length: 100%)
  }
  heading(
    level: 2,
    if glossary.at(term).acronyms.len() > 0 {
      term + " (" + glossary.at(term).acronyms.join(", ") + ")"
    }
    else {
      term
    }
  )
  text(
    glossary.at(term).description
  )
  previousTerm = term
}


}