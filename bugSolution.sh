#!/bin/bash

# This script correctly processes a list of files,
# even if filenames contain spaces.

files=(
"file1.txt"
"my file with spaces.txt"
"file3.txt"
)

for i in "${files[@]}"; do
  # Correct way to handle filenames with spaces using array expansion
  process_file "$i"
done

process_file() {
  echo "Processing file: $1"
  # Add your file processing logic here
}
