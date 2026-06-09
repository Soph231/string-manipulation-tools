# Regex Cheat Sheets
## Basic character types
Each pattern matches one character at a time.
|Pattern|Meaning|Example Match|Example String|
|---|---|---|---|
|.|any character|C, _, 1|Carex_secta|
|\d|digit|1, 2|Plot12|
|\w|word character (letters, digits, _)|P, l, 1, _|Plot12|
|\s|whitespace|space, tab|Carex secta|
|[A-Za-z]|letters only|S, a, t|Sample_A_01.fastq|
|[0-9]|digits|0, 1|Sample_A_01.fastq|

## Quantifiers (how many?)
Quantifiers specify how many times a pattern repeats. For example, \d matches one digit, while \d+ matches a sequence of digits.
|Pattern|	Meaning|	Example|	Example String|
|---|---|---|---|
|+|	one or more|	\d+ → 123|	Plot123|
|*|	zero or more|	\d* → “”, 123|	Plot, Plot123|
|?|	optional|	colou?r → color, colour|	color, colour|
|{3}|	exactly 3|	\d{3} → 123|	ID123|
|{2,5}|	between 2–5|	\d{2,5} → 12, 123, 12345|	Sample12, Sample1234|

## Anchor positions
Anchors define positions in a string, not characters. For example, ^\d ensures the digit is at the start, while \d$ requires it at the end.
|Pattern|	Meaning|	Example Match|	Pattern|
|---|---|---|---|
|^\d|	digit at the start|	1	|1Sample|
|\d$|	digit at the end|	4	|ID2024|

## Special characters (escaping)
Special characters like | must be escaped (\|) in regex because they have built-in meanings. The actual text does not include the backslash.

## Groups and Capture
We create groups using parentheses ( ). Each pair of parentheses marks a separate group, numbered by the order in which its opening parenthesis appears.
|Example string| Regex with groups| Group 1| Group 2| Group 3|
|---|---|---|---|---|
|Sample_A_01| (\w+)_(\w+)_(\d+)| Sample| A| 01+|

## Combining Patterns (Where Regex Becomes Powerful)

|String	|Regex	|Meaning	|Regex Building Blocks Combined|
|---|---|---|---|
|Plot12\|Carex secta\|2024-01-03|\|\s([A-Za-z]+\s[A-Za-z]+)\s\||Extract the species name between the pipes|escaped pipe \| , whitespace \s , capture group ( ) , letters [A-Za-z]+ , quantifier +|
|2024-01-03|\d{4}-\d{2}-\d{2}|Match a date in YYYY-MM-DD format|Match a date in YYYY-MM-DD format|digit \d , quantifiers {} , literal hyphen –|
|Sample_A_01.fastq|[A-Za-z]+_[A-Za-z]_\d+\.fastq|Match a filename with letters, underscore, one letter, underscore, digits, and the .fastq extension|character class [A-Za-z], quantifier + , literal underscore _ , digit \d , escaped dot \.| 
|Sample_A_01|([A-Za-z]+)_([A-Za-z])_(\d+)|Capture the sample name, group letter, and number separately|capture groups ( ), character class [A-Za-z] , digit \d , quantifier + , literal underscore _|
|Control_Replicate_3|^Control_\w+_\d$|Match a string that starts with Control, followed by a word section and a final digit|anchor ^ , literal text , word character \w , quantifier + , digit \d , anchor $|

