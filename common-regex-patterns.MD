# Regular Expression Common Patterns

## Log files searching:

### any character not 0, occurs at least once
[^0]+

### one or more digits and add quotes ot them
(\d+)
replace with:
"\1"

e.g. [123, 462, 0213] => ["123", "462", "0213"]