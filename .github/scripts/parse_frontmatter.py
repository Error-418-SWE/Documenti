import sys
import re
from datetime import datetime
file_path = sys.argv[1]
file_name = sys.argv[2]
file_version = sys.argv[3]

file = open(file_path + "/" + file_name)
preamble = file.read().strip().split(");")[0]
file.close()

string_fields = [
    "title",
    "subTitle",
    "externalParticipants",
    "authors",
    "reviewers",
    "missingMembers",
    "location",
    "timeStart",
    "timeEnd",
]

boolean_fields = [
    "isExternalUse",
    "showLog",
]

array_fields = [
    "authors",
    "reviewers",
    "missingMembers",
]

def get_document_date(text):
    match = re.findall(r'\d\d\/\d\d\/\d\d', text)
    date_format = "%d/%m/%y"
    return datetime.strptime(match[0], date_format)

frontmatter = ""

date_match = re.search(r'date: \"\d\d\/\d\d\/\d\d\"', preamble)
if date_match:
    date = get_document_date(date_match.group(0))
    frontmatter += "title: Verbale " + date.strftime("%d/%m/%y") + "\n"
    frontmatter += "date: " + date.strftime("%Y-%m-%d") + "\n"

for field in string_fields:
    match = re.search(fr'{field}: "(.*?)"', preamble)
    if match:
        frontmatter += field + ": \"" + match.group(1) + "\"\n"

for field in boolean_fields:
    match = re.search(fr'{field}: (true|false)', preamble)
    if match:
        frontmatter += field + ": " + match.group(1) + "\n"

for field in array_fields:
    match = re.search(fr'{field}: \((.*?)\)', preamble, re.DOTALL)
    if match:
        items = [item.strip() for item in match.group(1).split(',')]
        frontmatter += field + ": [\n\t" + f"{',\n\t'.join(items)},\n" + "]\n"

if re.search(r'externalParticipants: \((.*?)\)', preamble, re.DOTALL):
    matches = re.findall(r'name: "(.*?)",\s+role: "(.*?)"', preamble, re.DOTALL)
    results = ""
    for match in matches:
        (name, role) = match
        results += f'\t\"{name} ({role})\",\n'
    frontmatter += field + ": [\n" + results + "]\n"

frontmatter += "version: " + file_version + "\n"

url = "\"https://error-418-swe.github.io/Documenti/" + file_path + "_v" + file_version + ".pdf\""
frontmatter += "url: " + url + "\n"

frontmatter += "lastUpdated: " + datetime.now().date().strftime("%Y-%m-%d") + "\n"

print("---\n" + frontmatter + "---")
