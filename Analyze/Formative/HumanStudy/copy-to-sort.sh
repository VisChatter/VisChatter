#!/bin/bash

# Create the new folder "sort-pngs" if it doesn't exist
mkdir -p sort-pngs

# Iterate over all PNG files in the current directory
for file in *.png; do
  # Check if the file exists to avoid issues with no matches
  if [ -e "$file" ]; then
    # Create new filename with "Sort-" prefix
    new_filename="Sort-$file"
    # Copy and rename the file to the new folder
    cp "$file" "sort-pngs/$new_filename"
  fi
done

echo "Files copied and renamed successfully."
