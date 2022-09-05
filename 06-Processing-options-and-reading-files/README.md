# PROCESSING OPTIONS & READING FILES

## ⚙️ While loops 

The `while` loop allows for repetitive execution of a list of commands, as long as the condition controlling the while loop executes successfully (exit status of ***zero***).

<br>The syntax is:
```bash
while condition; do
<commands>
done
```

<br>Example:
```bash
#!/bin/bash

read -p "Enter your number: " num

while [ "$num" -gt 0 ]; do
echo "$num"
num=$(( "$num" - 1 ))
done
```

## ⚙️ Handling Command Line Options
The `getopts` command enables bash to get the the
***options*** provided to the script on the command line.

However, `getopts` does not get all the options at once; it
only gets the ***very next option*** on the command line each
time it is run.

Therefore, the `getopts` command is often used as ***part of a
while loop***, to ensure that all command line options are
processed.

Syntax for the `getops` command:
```bash
getopts "optstring" variable
```
