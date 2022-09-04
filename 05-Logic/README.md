# LOGIC

## 💡 Changing commands with list operators

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

| **Operator** 	|      ***Example***     	|                                                               ***Description***                                                               	|
|:------------:	|:----------------------:	|:---------------------------------------------------------------------------------------------------------------------------------------------:	|
|     **&**    	|   command1 & command2  	| Sends ***command1*** into a subshell to run “asynchronously” in the background, and continues to process ***command2*** in the current shell. 	|
|     **;**    	|   command1 ; command2  	| The shell will wait for ***command1*** to complete before starting ***command2***.                                                          	|
|    **&&**    	|  command1 && command2  	| The ***“AND”*** operator. The shell will only run ***command2*** if ***command1*** is successful (returns an exit code of 0).                 	|
|   **\|\|**   	| command1 \|\| command2 	| The ***“OR”*** operator. The shell will only run ***command2*** if ***command1*** is unsuccessful (returns a non-zero exit code).             	|

<br>

## ✅ Test Commands 
The test command compares one element against another and returns true or false.
<br>The test command takes an `Expression` as an argument. After calculating the `Expression`, the test returns a value to the bash variable `“$?”`. If the value is `0`, then the expression evaluation was ***true***. If the value is `1`, then the expression evaluation was ***false***.

<br>:link: [Bash test command](https://linuxhint.com/bash-test-command/)

syntax:
```bash
[Expression]
```

<br>

### :green_circle: Operators in use

| **Operator** 	|     ***Example***    	|                                             ***Description***                                            	|
|:------------:	|:--------------------:	|:--------------------------------------------------------------------------------------------------------:	|
|    **-eq**   	|      [ 1 -eq 1 ]     	| True if the two numbers are ***equal***                                                                 	|
|    **-ne**   	|      [ 2 -ne 2 ]     	| True if the two numbers are ***not equal***                                                             	|
|     **=**    	|      [ $a = $b ]     	| True if the two ***strings*** are ***equal***                                                           	|
|    **!=**    	|     [ $a != $b ]     	| True if the two  ***strings***  are ***not equal***                                                   	|
| **-z**       	| [ -z $a ]            	| True if a ***string*** is ***empty***                                                                    	|
| **-n**       	| [ -n $a ]            	| True if a  ***string***  is  ***not empty***                                                         	|
| **-e**       	| [ -e <file_path> ]   	| True if the ***file*** system entry file_path ***exists***                                                     	|
| **-f**       	| [ -f  <file_path>  ] 	| True if the file system entry file_path  ***exists*** and is a ***file***                              	|
| **-d**       	| [ -d  <file_path>  ] 	| True if the file system entry file_path  ***exists*** and is a ***directory***                         	|
| **-x**       	| [ -x  <file_path>  ] 	| True if the file system entry file_path  ***exists*** and is a  ***executable by the current user*** 	|

<br>

## 📍 If Statement
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

## 🔰 Case Statement
The bash `case` statement is generally used to simplify complex conditionals when you have multiple different choices. Using the `case` statement instead of creating `elif` statements makes bash scripts more readable and easier to maintain.

> :warning: <b>Note</b>
> <br>`case` statements can only
work with ***1 variable***.

Syntax:
```bash 
case Expression in

  Pattern_1)
    STATEMENTS
    ;;

  Pattern_2)
    STATEMENTS
    ;;

  Pattern_N)
    STATEMENTS
    ;;

  *)
    STATEMENTS
    ;;
esac
```

Example:
```bash
#!/bin/bash

read -p "Please enter a number: " number
case "$number" in
"") echo "You didn't enter anything!"
[0-9]) echo "you have entered a single digit number" ;;
[0-9][0-9]) echo "you have entered a two digit number" ;;
[0-9][0-9][0-9]) echo "you have entered a three digit number" ;;
*) echo "you have entered a number that is more than three digits" ;;
esac
```

> :warning: <b>Note</b>
> <br>Key points: 
> - Remember to use a `$` in front of the ***variable name***. 
> - Wrap the expansion of the variable name in ***double quotes*** to avoid word splitting issues. 
> - Patterns are evaluated from ***top to bottom***.
> - `*)` is used as a ***“default”*** case.




