target="Paper Memories"

if [ ! -d "${target}" ]; then
  echo "Error: \"${target}\" ディレクトリと同じ階層に設置してください"
  exit 1
fi

directories=(
  "2. Misc. Artwork"
)
for directory in "${directories[@]}"; do
  find "${target}/${directory}" -type f | while read src;
  do
    dst="output/${src}"
    overlay="ja/${src}"
    overlay=${overlay//jpg/png}
    mkdir -p "$(dirname "${dst}")"
    if [ -e "${overlay}" ]; then
      convert "${src}" "${overlay}" -composite "${dst}"
    else
      cp "${src}" "${dst}"
    fi
  done
done
