import sys
import glob
import re
import subprocess

repo_url = "https://github.com/Error-418-SWE/Documenti"
target_directory = "./tmp_main"
branch_name = "main"
subprocess.run(
    ["git", "clone", "--branch", branch_name, repo_url, target_directory, "--quiet"],
    check=True,
)

repo_url = "https://github.com/Error-418-SWE/Documenti"
target_directory = "./tmp_src"
branch_name = "src"
subprocess.run(
    ["git", "clone", "--branch", branch_name, repo_url, target_directory, "--quiet"],
    check=True,
)

file_path = sys.argv[1]
file_name = sys.argv[2]
str_version = "1.0.0"

search_pattern = f"{file_name}*.pdf"
matching_file = glob.glob("./tmp_main/" + file_path + "/" + search_pattern)
re_pattern = r"_v(\d+\.\d+\.\d+)\.pdf"

match = False
if len(matching_file) != 0:
    match = re.search(re_pattern, "./tmp_main/" + file_path + "/" + matching_file[0])

if match:
    str_version = match.group(1)

    version_components = str_version.split(".")
    x = int(version_components[0])
    y = int(version_components[1])
    z = int(version_components[2])

    new_file_content = ""
    old_file_content = ""

    with open(file_path + "/" + file_name + ".typ") as file:
        new_file_content = file.read()

    with open("./tmp_src/" + file_path + "/" + file_name + ".typ") as file:
        old_file_content = file.read()

    def diff_letters(first, second, x, y, z):
        if first != second:
            z = z + 1
        if first.count("=") < second.count("="):
            y = y + 1
            z = 0
        return str(x) + "." + str(y) + "." + str(z)

    new_version = diff_letters(old_file_content, new_file_content, x, y, z)

    print(new_version)
else:
    print(str_version)
