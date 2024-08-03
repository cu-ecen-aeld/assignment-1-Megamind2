#!/bin/sh

# Check if both arguments are provided
if [ $# -ne 2 ]; then
  echo "Error: Missing arguments. Usage: $0 <filesdir> <searchstr>"
  exit 1
fi

# Check if filesdir is a directory
if [ ! -d "$1" ]; then
  echo "Error: '$1' is not a directory."
  exit 1
fi

# Set variables
filesdir="$1"
searchstr="$2"

# Count files in the directory and subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Count matching lines
num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the result
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"

exit 0

