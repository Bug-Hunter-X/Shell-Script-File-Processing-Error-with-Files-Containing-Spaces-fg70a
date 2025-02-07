#!/bin/bash

# This script attempts to process a list of files,
# but it has a subtle error that can cause unexpected behavior.

files=(
"file1.txt"
"file2.txt"
"file3.txt"
)

for i in "${files[@]}"; do
  # The error is here: Using double quotes around $i can prevent word splitting
  # but also prevents expansion if $i contains spaces or special characters
  # for files named as file with spaces for example
  process_file "$i"
done

process_file() {
  echo "Processing file: $1"
  # Add your file processing logic here
}
