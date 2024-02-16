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

#let grafana = "https://error418swe.grafana.net/public-dashboards/9392efccc5a5427c850fc9ec81df7dff"

#let lastVisitedOn(day, month, year) = {
  if (year < 99) { year += 2000 }
  text("(ultimo accesso " + datetime(year: year, month: month, day: day).display("[day]/[month]/[year]") + ")", size: 0.8em, style: "italic", fill: luma(100))
}