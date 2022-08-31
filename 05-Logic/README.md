# LOGIC

## ⚙️ Changing commands with list operators

Key definitions:
- ***List:*** put one or
more commands in a
line.
- ***List operators:*** Types of control
operators that enable
us to create lists of
commands that
operate in different
ways

<br>

### :large_blue_circle: List Operators

<br>

## :: Test Commands 
The test command compares one element against another and returns true or false.
<br>The test command takes an `Expression` as an argument. After calculating the `Expression`, the test returns a value to the bash variable `“$?”`. If the value is `0`, then the expression evaluation was ***true***. If the value is `1`, then the expression evaluation was ***false***.

<br>:link: [Bash test command](https://linuxhint.com/bash-test-command/)

syntax:
```bash
[Expression]
```

<br>

### :large_blue_circle: Operators in use



<br>

## :: If Statement
`if` statements allow us to make decisions in our Bash scripts. They allow us to decide whether or not to run a piece of code based upon conditions that we may set.
- start and end using the reserved words `if` and `fi`
- check the ***exit status*** of a ***test command*** and only runs the command if the certain condition is true.

<br>Syntax:

```bash
if test1 ; then
<Commands> # only run if test1 passes
elif test2 ; then
<Commands> # only run if test1 fails and test2 passes

...

elif testN ; then
<Commands> # only run if all previous tests fail, but testN passes
else
<Commands> # only run if all tests fail
fi
```

<br>Example: If `file1.txt` equals `file2.txt` and `file3.txt`, then ***delete*** `file2.txt` and `file3.txt`.

```bash
#!/bin/bash

file1_content=$(cat file1.txt) # "file1_content" equals contents of file1.txt
file2=$(cat file2.txt) # "file2_content" equals contents of file2.txt
file3=$(cat file3.txt) # "file3_content" equals contents of file3.txt
if [ "$file1_content" = "$file2_content" ] && [ "$file1_content" = "$file3_content" ] ; then
rm file2.txt file3.txt
else
echo "File1.txt did not match both files"
fi
```

<br>

## :: Case Statement



