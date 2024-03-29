// Common use entities
#let versions = json("/documents.json");

#let err418 = text("Error_418", style: "italic")
#let cardin = "Professor Cardin"
#let vardanega = "Professor Vardanega"

#let adr_key = "Analisi dei Requisiti"
#let adr     = text(adr_key, style: "italic")
#let adr_v   = text(adr_key + " v" + versions.at(adr_key), style: "italic")
#let adr_vo  = versions.at(adr_key)

#let ris_key = "Analisi dei Rischi"
#let ris     = text(ris_key, style: "italic")
#let ris_v   = text(ris_key + " v" + versions.at(ris_key), style: "italic")
#let ris_vo  = versions.at(ris_key)

#let glo_key = "Glossario"
#let glo     = text(glo_key, style: "italic")
#let glo_v   = text(glo_key + " v" + versions.at(glo_key), style: "italic")
#let glo_vo  = versions.at(glo_key)

#let man_key = "Manuale Utente"
#let man     = text(man_key, style: "italic")
#let man_v   = text(man_key + " v" + versions.at(man_key), style: "italic")
#let man_vo  = versions.at(man_key)

#let ndp_key = "Norme di Progetto"
#let ndp     = text(ndp_key, style: "italic")
#let ndp_v   = text(ndp_key + " v" + versions.at(ndp_key), style: "italic")
#let ndp_vo  = versions.at(ndp_key)

#let pdp_key = "Piano di Progetto"
#let pdp     = text(pdp_key, style: "italic")
#let pdp_v   = text(pdp_key + " v" + versions.at(pdp_key), style: "italic")
#let pdp_vo  = versions.at(pdp_key)

#let pdq_key = "Piano di Qualifica"
#let pdq     = text(pdq_key, style: "italic")
#let pdq_v   = text(pdq_key + " v" + versions.at(pdq_key), style: "italic")
#let pdq_vo  = versions.at(pdq_key)

#let st_key = "Specifica Tecnica"
#let st     = text(st_key, style: "italic")
#let st_v   = text(st_key + " v" + versions.at(st_key), style: "italic")
#let st_vo  = versions.at(st_key)

#let grafana = "https://error418swe.grafana.net/public-dashboards/9392efccc5a5427c850fc9ec81df7dff"

#let azienda = "Sanmarco Informatica S.p.A."

#let lastVisitedOn(day, month, year) = {
  if (year < 99) { year += 2000 }
  text("(ultimo accesso " + datetime(year: year, month: month, day: day).display("[day]/[month]/[year]") + ")", size: 0.8em, style: "italic", fill: luma(100))
}

#let TODO = [
  #box(
    stroke: red,
    inset: 0.15em,
    text("Riferimento assente", fill: red, weight: "bold")
  )
]

#let glo_paragrafo = [
  Al fine di agevolare la comprensione del presente documento, viene fornito un glossario che espliciti il significato dei termini di dominio specifici del progetto. I termini di glossario sono evidenziati nel testo mediante l'aggiunta di una "_G_" a pedice degli stessi:

  #align(center, {
    text("Termine di glossario")
    h(0.03em)
    text(
      fill: luma(100),
      sub(emph("G"))
    )
    h(0.02em)
  })

  Le definizioni sono diponibili nel documento #glo_v.
]

#let infobox(type, message) = {
  let icon = ""
  let color = rgb("#FFFFFF")
  let colors = ()
  if (type == "notice") {
    icon = "i"
    colors = (
      boxFill: rgb("#93C5FD"),
      boxStroke: rgb("#60A5FA"),
      iconFill: rgb("#60A5FA"),
      iconStroke: rgb("#3B82F6"),
      iconGlyph: rgb("#1D4ED8"),
      textFill: rgb("#172554")
    )
  } else if (type == "warning") {
    icon = "!"
    colors = (
      boxFill: rgb("#FDE047"),
      boxStroke: rgb("#FACC15"),
      iconFill: rgb("#EAB308"),
      iconStroke: rgb("#CA8A04"),
      iconGlyph: rgb("#A16207"),
      textFill: rgb("#422006")
    )
  } else {
    panic("Type must be [notice | warning]")
  }
  rect(
    width: 100%,
    radius: 0.25em,
    inset: 1.5em,
    fill: colors.boxFill,
    stroke: 0.75pt + colors.boxStroke,
    stack(
      dir: ltr,
      spacing: 1.5em,
      circle(
        stroke: colors.iconStroke,
        fill: colors.iconFill
      )[
        #set align(center + horizon)
        #text(weight: "bold", fill: colors.iconGlyph, icon)
      ],
      box(width: 90%)[
        #text(fill: colors.textFill, message)
      ]
    )
  )
}