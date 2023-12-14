#import "/template.typ": *

#show: project.with(
  title:"Glossario",
  authors: (
    "Todesco Mattia",
  ),
  reviewers: (
    "Gardin Giovanni",
  ),
  showIndex: false //overridden
);

#let glossary = json("Glossario.json");

#outline(depth: 2)

#pagebreak()

#set heading(
  level: 1,
  numbering: none,
)

#heading(
  level: 1,
  glossary.keys().at(0).at(0)
)
#line(length: 100%)

#for i in range(glossary.keys().len()-1){
  heading(
    level: 3,
    glossary.keys().at(i)
  )
  text(
    glossary.values().at(i)
  )
  if (glossary.keys().at(i).at(0) != glossary.keys().at(i+1).at(0)) {
    pagebreak()
    heading(
      level: 1,
      glossary.keys().at(i+1).at(0)
    )
    line(length: 100%)
  }
}
#text(glossary.values().last())