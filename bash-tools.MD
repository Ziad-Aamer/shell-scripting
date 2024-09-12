## Search and format

### Sed
sed is a stream editor, used to change text through its commands.
It is usually used to process line by line.

Ex1: find and extract a key value from json file.

`$ sed 's/"Start_Date_and_time":[[:digit:]]*/\n&\n/' filename.json`

* s/ => substitue the string (or RE) found after the '/'  
* [[:digit:]]* => means any number that is exist 0 or more times.
* \n&\n => replace the find with a new line before + the found string itsef (&) + a line.


### AWK

awk is used to select columns or rows from a formatted file e.g: csv, tsv by specifying the sperator.

Ex1: this will use ';' as a seprator and print the first columns only of a file   

`$ awk -F ";" '{print $1, $2}' filename` 


### Nano

* Copy: 
	* set mark to highlight the text: `ctl+6`
	* Copy highlighted `alt+6`
	* Paste copied `ctl+u`
* undo/redo:
	* undo: `alt+u`
	* redo: `alt+e`

