#!/bin/sh

# Check if both arguments are provided
if [ $# -ne 2 ]; then
  echo "Error: Missing arguments. Usage: $0 <writefile> <writestr>"
  exit 1
fi

# Set variables
writefile="$1"
writestr="$2"

# Create the directory if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the string to the file
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ ! -f "$writefile" ]; then
  echo "Error: Could not create file '$writefile'."
  exit 1
fi

exit 0


