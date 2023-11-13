website_branch="website"
url_prefix="https://github.com/$REPOSITORY/tree/docs"
folder_root_path="$1" # 1-Candidatura
markdown_file="$2" # candidatura.md
markdown_title="$3" # Candidatura

cd "./$folder_root_path" || exit

file_content="---\nlayout: default\ntitle: $markdown_title\n---\n### $markdown_title\n"

# Funzione ricorsiva per aggiungere il nome delle sottocartelle e il loro contenuto
function add_folder_content {
  local current_folder="$1"
  local indent="$2"
  for item in "$current_folder"/*; do
    if [ -f "$item" ]; then
      # Se è un file, aggiungi un link al file nel Markdown
      folder_relative_path=$(echo "$current_folder" | cut -c 3-)
      local url=$folder_root_path/$folder_relative_path/$(basename "$item")
      local encoded_url=$(encodeURL "$url")
      file_content+="${indent}- [$(basename "$item")]($url_prefix/$encoded_url)\n"
    elif [ -d "$item" ]; then
      # Se è una sottocartella, aggiungi il nome e poi chiamata ricorsiva
      folder_name=$(basename "$item")
      file_content+="${indent}- **$folder_name**\n"
      add_folder_content "$item" "  $indent" # Aggiungi uno spazio di indentazione
    fi
  done
}

function encodeURL {
  local dataLength="${#1}"
  local index

  for ((index = 0;index < dataLength;index++)); do
    local char="${1:index:1}"
    case $char in
      [a-zA-Z0-9\/.~_-])
        printf "$char"
        ;;
      *)
        printf "%%%02X" "'$char"
        ;;
    esac
  done
}

# Esegui la funzione ricorsiva sulla cartella principale
add_folder_content . ""

git config user.email "actions@github.com"
git config user.name "GitHub Actions"
git config pull.rebase false
git pull origin $website_branch --allow-unrelated-histories
git checkout $website_branch

cd ..
echo -e "$file_content" > "$markdown_file"
mv "$markdown_file" "./_pages/"
git add "./_pages/$markdown_file"
git commit -m "Update file $markdown_file"
git push origin $website_branch