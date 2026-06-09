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
