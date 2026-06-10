# Creating the Sample Files

The examples in this folder use 50 text files named:

sample_1.txt

sample_2.txt

...

sample_50.txt

These files can be created automatically in a folder named `test_files` using a shell script.

To create the script copy the highlighted lines below into a file and save it as create_files.sh
### Script for creating sample files
```
#!/bin/bash

mkdir -p test_files
cd test_files

for i in {1..50}
do
    touch "sample_${i}.txt"
done
```
**Save the script as:**

create_files.sh

**Make it executable:**

chmod +x create_files.sh

**Run the script:**

./create_files.sh

Alternatively, you can run it directly with:

bash create_files.sh

After running the script, the example_files directory will contain:

sample_1.txt

sample_2.txt

...

sample_50.txt

**Check that the files are created**

To check if the files have been successfully created use:

ls

This should list all the files.

These files can then be renamed using the 'rename_files.sh' script with slight modification.

change the folder name in the script (rename_files.sh):


from example_files to test_files in the following line:
```
cd example_files
```
to 
```
cd test_files
```
