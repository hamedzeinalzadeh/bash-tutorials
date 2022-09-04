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