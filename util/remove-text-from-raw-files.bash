#!/bin/bash

# Command line utility to replace specific text in a set of files
# Used to remove PID from raw solar files

# Copy this to the util folder that is adjacent to the GMP folder that contains the raw data

print_usage() {
  echo "Usage: remove-text-from-raw-files.bash old_text new_text"
  echo "  -h, --help     Display this help and exit"
  echo "  -v, --version  Display the script version and exit"
}

flag_exit=0

# Parse the command-line options
while [[ $# -gt 0 ]]; do
  case "$1" in
    -h|--help)
      print_usage
      #exit 0
      shift
      flag_exit=1
      ;;
    -v|--version)
      echo "Version 1.0"
      #exit 0
      shift
      flag_exit=1
      ;;
    *)
      echo "Here we go: Replacing $1 with $2"
      break
  esac
  
done

if [ $flag_exit -eq 1 ]; then
  exit 0
fi

if [ $# -ne 2 ]; then
  echo "Usage: remove-text-from-raw-files.bash old_text new_text"
  exit 1
fi

old_text=$1
new_text=$2

# This is a version that should work with both BSD and GNU sed:
# Per https://stackoverflow.com/questions/5694228/sed-in-place-flag-that-works-both-on-mac-bsd-and-linux

for file in ../GMP/*.csv; do
    sed -i.bak "s|$old_text|$new_text|g" "$file"
done

mv ../GMP/*.csv.bak ../GMP/bak/ 

# Remove the backup files we just made
# Do this MANUALLY once you've checked your work
# rm ../GMP/bak/*.csv.bak

