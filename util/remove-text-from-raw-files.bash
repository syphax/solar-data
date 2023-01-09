#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: replace_text.sh old_text new_text"
  exit 1
fi

old_text=$1
new_text=$2

# This is a version that should work with both BSD and GNU sed:
# Per https://stackoverflow.com/questions/5694228/sed-in-place-flag-that-works-both-on-mac-bsd-and-linux

for file in ../data/*.csv; do
    sed -i.bak "s/$old_text/$new_text/g" "$file"
done

# Remove the backup files we just made
rm ../data/*.csv.bak
