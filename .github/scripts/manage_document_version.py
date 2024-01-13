import sys
import glob
import re

default_version = [1, 0, 0]
current_version = default_version
updated_version = default_version
file_path = sys.argv[1]
file_name = sys.argv[2]
if len(sys.argv) > 3:
    if (re.search(r'\d+.\d+.\d+', sys.argv[3])):
        current_version = [int(v) for v in sys.argv[3].split(".")]
    else:
        print(".".join(str(version_component) for version_component in default_version))

matching_file = glob.glob("./src/" + file_path + "/" + f"{file_name}.typ")

if len(matching_file) > 0:
    new_file_content = ""
    current_file_content = ""
    updated_version = current_version

    with open("./head/" + file_path + "/" + file_name + ".typ") as file:
        new_file_content = file.read()

    with open("./src/" + file_path + "/" + file_name + ".typ") as file:
        current_file_content = file.read()

    def diff_content(current_content, new_content, version):
        if current_content != new_content:
            version[2] += 1
        if current_content.count("=") != new_content.count("="):
            version[1] += 1
            version[2]  = 0
        return version

    updated_version = diff_content(
        current_file_content,
        new_file_content,
        updated_version
    )

    print(".".join(str(version_component) for version_component in updated_version))
else:
    exit(418)