import sys
import re
from datetime import datetime
file_path = sys.argv[1]
file_name = sys.argv[2]

file = open(file_path + "/" + file_name)
file_content = file.read()
file.close()

params = file_content.split("=")[0]
params = params.replace("#import \"/template.typ\": *\n","")
params = params.replace("#show: project.with(", "")
params = params.replace("# project(", "")
params = params.strip()

for line in params.split("\n"):
    if "//" in line:
        params = params.replace("//" + line.split("//")[1], "")
    if "#set" in line:
        params = params.replace("#set" + line.split("#set")[1], "")
    if "#show" in line:
        params = params.replace("#show" + line.split("#show")[1], "")

params = params.split("\n")

def compose_array(all_text, str_to_split):
    result = ""
    split_text = "".join(all_text).split(str_to_split)[1]
    for i in range(len(split_text)):
        if split_text[i] != ")":
            result += split_text[i]
        else:
            result += "]"
            break
    result = result.replace("(", "[")
    return result

def handle_dictionary(all_text, str_to_split):
    if "".join(all_text).strip()[0] == ")":
        return ""
    parts = "".join(all_text).split(str_to_split, 1)
    return parts[0] + ")" + handle_dictionary("".join(parts[1:]), ",")

fields = {
    "title": "title: ",
    "subTitle": "description: ",
    "lastUpdated": "lastUpdated: ",
    "date": "date: ",
    "externalParticipants": "externalParticipants: ",
    "authors": "authors: ",
    "reviewers": "reviewers: ",
    "missingMembers": "missingMembers: ",
    "location": "location: ",
    "timeStart": "timeStart: ",
    "timeEnd": "timeEnd: ",
    "showLog": "showLog: ",
    "showIndex": "showIndex: ",
    "isExternalUse": "isExternalUse: "
}

need_array_compose = ["authors","reviewers","missingMembers"]
for line in params:
    for key in fields.keys():
        if key in line:
            if key in need_array_compose:
                fields[key] += compose_array(params, key + ":")
            elif "time" in key:
                fields[key] += ":".join(line.split(":")[1:]).strip()[:-1]
            elif key != "externalParticipants":
                fields[key] += line.split(":")[1].strip()[:-1]
            else:
                first_part_to_iterate = "".join(params).split("externalParticipants:")[0]
                external_participants_str = handle_dictionary(first_part_to_iterate,",") + ")"
                external_participants_str = external_participants_str.split("externalParticipants :")[1]
                external_participants_str = external_participants_str.replace("\")", ",").replace(",)","\")")
                external_participants_str = external_participants_str.replace("    ", ",")
                external_participants_str = external_participants_str.replace(", role", "\", role")
                external_participants_str = "[" + external_participants_str[3:-1] +",]"
                matches = re.findall(r'name: "(.*?)",\s*role: "(.*?)"', external_participants_str)
                output_list = [f'{name} ({role})' for name, role in matches]
                output_text = f'{output_list}'
                fields[key] += output_text


#azioni aggiuntive di pulizia e dettaglio
#composizione del titolo se verbale (il titolo è generato a compile time e non presente nel preambolo)
if fields["date"].strip()[-1] != ":":
    fields["title"] = "title: Verbale " + fields["date"].split(":")[1].strip()
#per mostrare la data, essa deve essere nel formato yyyy-mm-dd
if fields["date"].strip()[-1] != ":":
    split_date = fields["date"].split(":")[1].replace("\"","").strip().split("/")
    fields["date"] = "date: " + str(int(split_date[2])+2000) + "-" + split_date[1] + "-" + split_date[0]
#definizione del lastUpdated
fields["lastUpdated"] = "lastUpdated: " + datetime.now().date().strftime("%Y-%m-%d")

fields["title"] = fields["title"].replace("\"", "")
output = "---\n"
for key in fields.keys():
    if fields[key].strip()[-1] != ":":
        output += fields[key] + "\n"
output += "---"
print(output)