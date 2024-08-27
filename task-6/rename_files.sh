#!/bin/bash
directory="$1"

if [[ ! -d "$directory" ]]; then
  echo "Directory $directory does not exist."
  exit 1
fi

for file in "$directory"/*.txt; do
  if [[ -f "$file" ]]; then
    filename=$(basename "$file")
    mv "$file" "$directory/old_$filename"
  fi
done

echo "done"
