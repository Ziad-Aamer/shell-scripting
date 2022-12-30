## Search and format

### Sed


### AWK

awk is used to select columns or rows from a formatted file e.g: csv, tsv by specifying the sperator.

Ex1: this will use ';' as a seprator and print the first columns only of a file   

`awk -F ";" '{print $1, $2}' filename` 
