# String Manipulation with Shell Scripting

This folder contains sample files and exercises demonstrating how shell scripts can be used to automate repetitive tasks.

Topics include:

- creating shell scripts
- creating files automatically
- loops and variables
- batch file renaming
- simple automation
## Files
- example_files/ (folder)
  - The folder example_files/ contains 50 empty text files used in the exercises.
- create_sample_files.md
- create_script_files.md
- rename_files.sh
### Exercise 1
Create a Shell Script

Shell scripts are plain text files containing commands.

See:

create_script_files.md

to learn how to create, save, and run shell scripts.

### Exercise 2
Create Sample Files Automatically

The file:

create_sample_files.md

explains how to create a script called "create_files.sh", which creates

a folder named:

test_files

and populates it with 50 files:

sample_1.txt
sample_2.txt
...
sample_50.txt

Follow the instruction in:

create_sample_files.md

to create the files yourself.

### Exercise 3
Automate File Renaming

The script:

rename_files.sh

uses loops to rename:

sample_1.txt
...
sample_25.txt

to:

control_1.txt
...
control_25.txt

and:

sample_26.txt
...
sample_50.txt

to:

treatment_1.txt
...
treatment_25.txt

This demonstrates how repetitive tasks can be automated instead of performed manually.

### Running the Scripts

Make a script executable:

```
chmod +x script_name.sh
```

Run it:

```
./script_name.sh
```

Alternatively:

```
bash script_name.sh
```

### Safety

It is good practice to:

- work on copies of files
- test scripts in an empty folder
- use mv -i to avoid accidentally overwriting files
### Related Articles
[What Is Scripting? A Practical Introduction Using the Command Line](https://sophiabrauning.com/what-is-scripting-a-practical-introduction-using-the-command-line/)
#### Video
[Automating File Renaming with Bash](https://youtu.be/yGIz0K7LAIE)

### Next
These examples demonstrate how shell scripts can automate repetitive tasks. Similar ideas can later be applied using Python and other programming languages.
