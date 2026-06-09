# String Manipulation with Text Editors

This folder contains a sample text file and exercises demonstrating how text editors such as Sublime Text and Visual Studio Code can be used for text processing.

Topics include:

- previewing changes
- find and replace
- batch editing
- regular expression search and replace

#### Files

example_data.txt

#### Exercise 1.
Use regex to transform species names:
The example data contains species names separated by underscores (Carex_secta). For standard species names      (Carex secta), we can replace the underscores with spaces using find and replace.
1. In the text editor choose **Find and Replace**
2. In the **Find** field enter: _
3. In the **Replace** field enter a space 
4. Finally choose **Replace All**

#### Exercise 2.
Use regex to Replace Patterns:
The columns in the example data are separated by 'space' '|' 'space'. We can create a comma separated file by replaceing the space|space pattern with comma then saving the file as .csv
1. In the text editor choose **Find and Replace**
2. Make sure the **Regular Expression** (.*) mode is selected 
3. In the **Find** field enter the regex:
    \s\|\s
4.  In the **Replace** field enter:
    ,
5. Finally choose **Replace All**

#### Exercise 3.
Preview a change:
Enter a string in the **Find** field, notice how the matching strings will be highlighted.
This allows previewing before applying any changes, helping us avoid irreversible mistakes.

### Related Articles
[Using Text Editors for String Manipulation](https://sophiabrauning.com/using-text-editors-for-string-manipulation/ "Go to article")
### Videos
- [Find and Replace Text in Sublime Text](https://youtu.be/UYm-C6aVkBI "Watch")
- [Regex Find and Replace in Sublime Text](https://youtu.be/QCqaS5uV9Zc "Watch")
- [Previewing a Change in a Text Editor](https://youtu.be/UrJ1R9R3ILE "Watch")

### Next

Regular Expressions are a powerful tool for cleaning and manipulating text data. We cover the basics of regex and pattern-based thinking in the [regex/](https://github.com/Soph231/string-manipulation-tools/tree/main/regex) forlder and in the accompanying [article](https://sophiabrauning.com/regular-expressions-regex-thinking-in-patterns/ "Regular Expression: thinking in patterns")
