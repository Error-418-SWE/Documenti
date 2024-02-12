// Common use entities
#let versions = json("/documents.json");

#let err418 = text("Error_418", style: "italic")
#let cardin = "Professor Cardin"
#let vardanega = "Professor Vardanega"

#let adr = "Analisi dei Requisiti"
#let adr_v = adr + " v" + versions.at(adr)

#let ris = "Analisi dei Rischi"
#let ris_v = ris + " v" + versions.at(ris)

#let glo = "Glossario"
#let glo_v = glo + " v" + versions.at(glo)

#let ndp = "Norme di Progetto"
#let ndp_v = ndp + " v" + versions.at(ndp)

#let pdp = "Piano di Progetto"
#let pdp_v = pdp + " v" + versions.at(pdp)

#let pdq = "Piano di Qualifica"
#let pdq_v = pdq + " v" + versions.at(pdq)

#let lastVisitedOn(day, month, year) = {
  if (year < 99) { year += 2000 }
  text("(ultimo accesso " + datetime(year: year, month: month, day: day).display("[day]/[month]/[year]") + ")", size: 0.8em, style: "italic", fill: luma(100))
}