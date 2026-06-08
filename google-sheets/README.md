# String Manipulation with Google Sheets

This folder contains a small dataset and several exercises demonstrating common string manipulation tasks in Google Sheets and Excel.

The examples use species observation records and show how text can be split, cleaned, extracted, and classified.

## Files
example_data.csv

Columns:

* plot
* species_name
* date
* sample_id

Example:

plot	species_name	date	sample_id
Plot01	Carex_secta	2024-01-03	Control_01
Exercise 1: Split Text into Columns

Suppose we first combine several pieces of information into one column:

=A2&" | "&B2&" | "&C2

which produces:

Plot01 | Carex_secta | 2024-01-03

To separate these values again:

Select the column.
Go to:
Data → Split text to columns
Choose:
Custom separator
Enter:
|

Expected result:

Plot01    Carex_secta    2024-01-03
Exercise 2: Replace Text

Species names in the dataset use underscores.

Example:

Carex_secta

To replace underscores with spaces:

=SUBSTITUTE(B2,"_"," ")

Expected result:

Carex secta
Exercise 3: Extract Text

After replacing the underscores, we may want to extract only the genus name.

Example:

Carex secta

Formula:

=LEFT(E2,FIND(" ",E2)-1)

Expected result:

Carex
Exercise 4: Identify Patterns

Sample IDs begin with either:

Control_

or

Sample_

To classify them:

=IF(LEFT(D2,7)="Control","Control","Sample")

Expected result:

sample_id	Group
Control_01	Control
Sample_01	Sample
Related Articles
Split Text into Columns in Google Sheets
Replace Text in Strings
Extract Text from Strings
Identify Patterns in Text
Next

After becoming comfortable with these spreadsheet techniques, the same ideas can be applied using text editors, regular expressions, and shell scripting.
