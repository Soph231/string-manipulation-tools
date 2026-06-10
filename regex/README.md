# Regular Expressions

This folder contains a sample text file, cheat sheet, and exercises introducing regular expressions (regex) and pattern-based thinking.

Regular expressions allow us to describe patterns in text rather than searching for individual strings.

Topics include:
- basic regex syntax
- combining patterns
- common mistakes
- additional learning resources
### Files
- Example_data.txt
- Regex_cheat_sheets.md

#### Exercise 1
Match Digits

The following regex:

\d

matches a single digit.

To match one or more digits, use:

\d+

Examples:
|String| Regex|	Meaning|	Example Match|
|---|---|---|---|
|Plot01| \d|	Match a single digit|	0, 1|
|Plot2024| \d+|	Match one or more digits|	2024|
|Plot03| \d*|	Match zero or more digits|	03|
|Plot| \d*|	Match zero or more digits| empty string|

Unlike +, the * operator can also match zero digits. For example, in the string Plot, the pattern \d* matches an empty string.

#### Exercise 2
Match Dates

Dates in the example data follow the pattern:

2024-01-03

Regex:

\d{4}-\d{2}-\d{2}

matches dates with four digits, followed by two groups of two digits separated by hyphens.

#### Exercise 3
Match Plot IDs

Example:

Plot01

Regex:

Plot\d+

matches the word "Plot" followed by one or more digits.

#### Exercise 4

Combine Patterns

Suppose we want to match:

Plot01_Carex_secta_2024-01-03

Regex:

Plot\d+_[A-Za-z]+_[A-Za-z]+_\d{4}-\d{2}-\d{2}

combines several smaller patterns into one.

#### Exercise 5
Use Groups by surrounding the pattern of interest in parenthesis. This allows us to capture parts of a match separately so that they can be rearranged or reused.


Regex:

([A-Za-z]+)_([A-Za-z]+)

captures:

Carex_secta

into two groups:

Carex

secta

which can then be rearranged or replaced.

#### Exercise 6
Notice the common Mistakes in the following table. Can you think of other mistakes?

| Mistake | What happens | Example task | Wrong approach | Better approach |
|---|---|---|---|---|
| Forgetting to escape `.` | `.` matches any character, not a literal dot | Match `file.fastq` exactly | `file.fastq` could also match `file-fastq` or `fileXfastq` | Use `file\.fastq` to match a real dot |
| Using `*` when meaning `+` | `*` allows zero matches, so it can match an empty string | Match one or more digits | `\d*` can match an empty string when no digits are present, such as in `Plot` | Use `\d+` to require at least one digit, such as in `Plot123` |
| Not anchoring with `^` when needed | The pattern can match anywhere in the string | Match digits only at the start of a string | `\d+` matches `123` in both `123Sample_data` and `Sample123_data` | Use `^\d+` to match digits at the start only. This matches `123` in `123Sample_data`, but not in `Sample123_data` |
| Trying to write regex in one go | Leads to errors and hard-to-debug patterns | Extract the species and month from `Plot12 \| Carex_secta \| 2024-01-03` | Writing one complex unreadable regex immediately | Build step by step: match small parts, test them, then combine |

### Related Article
[Regular Expressions (Regex): Thinking in Patterns](https://sophiabrauning.com/regular-expressions-regex-thinking-in-patterns/)
#### Video
[YouTube](https://youtu.be/GY3jbGr-ykM "Watch")

### Resources
[RegexLearn](regexlearn.com)
[RegexOne](regexone.com)
[Regex101](https://regex101.com/)
[RexExr](https://regexr.com/)

### Next

Once patterns become repetitive, we can automate tasks using shell scripts. Examples are provided in the [shell-scripting/](https://github.com/Soph231/string-manipulation-tools/tree/main/shell-scripting) folder and accompanying [article](https://sophiabrauning.com/what-is-scripting-a-practical-introduction-using-the-command-line/).
