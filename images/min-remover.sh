#!/bin/bash
# Remove '-min' from all filenames in the current directory

for file in *-min.*; do
  # Check if the file actually exists (in case no matches)
  [ -e "$file" ] || continue
  newname="${file//-min/}"
  mv -v "$file" "$newname"
done
