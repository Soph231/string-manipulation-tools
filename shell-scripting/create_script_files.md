# Creating Shell Script Files

Shell scripts are plain text files containing commands that are executed by the shell.

### Step 1: Open a Text Editor

Open a text editor such as:

- Sublime Text
- Visual Studio Code
- Nano
### Step 2: Create a New File

Create a new file and add the following:
```
#!/bin/bash

echo "Hello, world!"
```
The first line:

**#!/bin/bash**

is called the shebang. It tells the operating system which program should interpret the commands in the file.

### Step 3: Save the File

Save the file with the extension:

.sh

For example:

hello.sh
### Step 4: Make the Script Executable

Open a terminal and run:

chmod +x hello.sh

This gives the file permission to be executed.

### Step 5: Run the Script

Execute the script:

./hello.sh

Alternatively, run:

bash hello.sh

which does not require the file to be executable.

Expected output:

Hello, world!
Notes

Shell scripts are simply text files containing commands. They can be used to automate repetitive tasks such as:

- creating files
- renaming files
- copying files
- processing data

The examples in this folder demonstrate how shell scripts can be used to automate file creation and file renaming.

## Create the script for renaming file names
Below is the code in rename_files.sh which renames the sample files in the example_files folder.

To create the script yourself, first create your own sample files by following the instructions in create_sample_files.md. This will create 50 sample files in a folder named test_files.

Next, copy the code below into a new file, save it with a .sh extension, and make it executable.

**Code**
```
#!/bin/bash
# Move into the folder "test_files" and confirm location and presence of the sample files
cd test_files
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
```
