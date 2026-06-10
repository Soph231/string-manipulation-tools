#!/bin/bash
# Move into the folder "example_files" and confirm location and presence of the sample files
cd example_files
pwd
ls
# Rename the first 25 files as control files
for file in sample_{1..25}.txt
do
  mv "$file" "${file/sample/control}"
done

# Rename files 26–50 as treatment files (renumbered 1–25)
i=1
for file in sample_{26..50}.txt
do
  mv "$file" "treatment_$i.txt"
  ((i++))
done
