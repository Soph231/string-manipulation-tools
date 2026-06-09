# String Manipulation with Google Sheets

This folder contains a small dataset and several exercises demonstrating common string manipulation tasks in Google Sheets and Excel.

The examples use species observation records and show how text can be split, cleaned, extracted, and classified.

## Files
example_data.csv

Columns headers:

* plot
* species_name
* date
* sample_id

Example:

- plot|species_name|date|sample_id
- Plot01|Carex_secta|2024-01-03|Control_01

#### Exercise 1: Split Text into Columns

The columns of the example file are reperesented by the symbol |. To create a tabular data with each columns separated, we can split the values by the separateor |

To separate these values:

Select the column containing the values (Column A).
Go to:
Data → Split text to columns
Choose:
Custom separator
Enter:
|

Expected result:

plot|species_name|date|sample_id
|---|---|---|---|
Plot01|Carex_secta|2024-01-03|Control_01

#### Exercise 2: Replace Text

Species names in the dataset use underscores.

Example:

Carex_secta

To replace underscores with spaces in column E cell 2 (E2) enter:

=SUBSTITUTE(B2,"_"," ")

Expected result:
Carex secta
Drag the formula down to apply to all entries.

#### Exercise 3: Extract Text

After replacing the underscores, we may want to extract only the genus name.

For example, in cell E2 we have (Carex secta
), use the formula below to extract genus name:

Formula:

=LEFT(E2,FIND(" ",E2)-1)

Expected result:

Carex

#### Exercise 4: Identify Patterns

Sample IDs begin with either:

Control_

or

Sample_

To classify them:

=IF(LEFT(D2,7)="Control","Control","Sample")

Expected result:

|sample_id|Group|
|---|---|
|Control_01|Control|
|Sample_01|Sample|

## Related Article
[Using Google Sheets for String Manipulation](https://sophiabrauning.com/using-google-sheets-for-string-manipulation/ "Go to article")
### Videos
- [Split Text into Columns in Google Sheets](https://youtu.be/ac07uPtApFs "Watch")
- [Replace Text in Strings](https://youtu.be/i4TqgZALpZc "Watch")
- [Extract Text from Strings](https://youtu.be/Ewwhfhj1wDc "Watch")
- [Identify Patterns in Text](https://youtu.be/0xVc9XW9FFI "Watch")

## Next
After becoming comfortable with these spreadsheet techniques, the same ideas can be applied using text editors, regular expressions, and shell scripting.
