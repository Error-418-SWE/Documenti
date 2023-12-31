#import "/template.typ": *

#show: project.with(
  title:"Glossario",
  authors: (
    "Todesco Mattia",
  ),
  reviewers: (
    "Gardin Giovanni",
  ),
  showIndex: false, //overridden
  showImagesIndex: false,
  showTablesIndex: false
);

#let glossary = json("/Glossario.json");

#outline(depth: 1)

#pagebreak()

#set heading(
  level: 1,
  numbering: none,
)

#let previousTerm = glossary.keys().at(0)
#heading(
  level: 1,
  previousTerm.at(0)
)
#line(length: 100%)
#for term in glossary.keys() {
  if (term.at(0) != previousTerm.at(0)) {
    pagebreak()
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