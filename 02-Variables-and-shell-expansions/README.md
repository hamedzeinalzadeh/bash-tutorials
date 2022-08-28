# VARIABLES AND SHELL EXPANSIONS

## ⚙️ Parameters
There are 3 types of parameters:
- Variables
- Positional parameters
- Special parameters

## 🧮 Variable
A variable is a parameter that can have a value change depending on conditions or information passed to the program.
<br>2 types if variables: 
- User-defined variables
- Shell variables
    - Bourne shell variable
    - Bash shell variable

### :large_blue_circle: Setting the Value of a variable

```name=value```

> :warning: <b>Note</b>
> <br>There should be no spaces around the equals sign and it is recommended to use lowercase names for user-defined variables.

### :green_circle: Some Common Shell Variables

| **Variable Name** 	| **Description**                                                                       	|
|-------------------	|---------------------------------------------------------------------------------------	|
| **HOME**          	| Indicates the home directory of the current user                                      	|
| **PATH**          	| Includes the necessary directories only that shell should search for executable files 	|
| **USER**          	| The current user's username                                                           	|
| **HOSTNAME**      	| The host-name of the current machine                                                  	|

<br>:link: [list of Bourne shell variables](https://www.gnu.org/software/bash/manual/html_node/Bourne-Shell-Variables.html#Bourne-Shell-Variables)
<br>:link: [list of Bash shell variables](https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#Bash-Variables)

## :mag_right: Shell Parameter Expansion
The basic form of parameter expansion is `$parameter`. The value of parameter is substituted. 

Advanced syntax is `${parameter}`. The braces are required when parameter is a positional parameter with more than one digit, or when parameter is followed by a character that is not to be interpreted as part of its name.

### :purple_circle: Parameter Expansion Tricks

| **Trick** 	| **Description**                                                                       	|
|-------------------	|---------------------------------------------------------------------------------------	|
| **${parameter^}**          	| Convert the first character of the parameter to uppercase                                      	|
| **${parameter^^}**          	| Convert all characters of the parameter to uppercase 	|
| **${parameter,}**          	| Convert the first character of the parameter to lowercase                                                           	|
| **${parameter,,}**          	| Convert all characters of the parameter to lowercase                                                           	|
| **${#parameter}**      	| Illustrate the number of  the parameter value characters                                                   	|
| **${parameter : offset : length}**      	| Expand the parameter value starting at character number defined by “offset " and expand up to a length of “length”   |

> :warning: <b>Note</b>
> <br>None of the tricks alter the original parameter value.

<br>:link: [Bash parameter extension (bash reference manual)](https://www.gnu.org/software/bash/manual/html_node/Bash-Variables.html#Bash-Variables)


## :hash: Command Substitution
Command substitution allows the output of a command to replace the command itself. Command substitution occurs when a command is enclosed as follows:
```bash
$(command)
```

## :1234: Arihtmetic Expansion
Arithmetic expansion can be used to perform simple integer arithmetic operations, and uses the syntax:
```bash 
$(( expression ))
```

### :yellow_circle: Arithmetic Operators Ranked in Order of Precedence 

| **Operator** | **Description**                                                                 	|
|--------------	|-------------------------------------------------------------------------------	|
| **( &nbsp; )**    	| Anything placed in parentheses has the highest precedence                    	|
| **\*\***     	| Exponentiation. 3**2 means 3 to the power of 2, which is 9                    	|
| **\* &nbsp; / &nbsp;%** 	| Multiplication, Division, and Modulo(calculates the remainder of a division) 	|
| **\+ &nbsp; \-**    	| Addition and substraction                                                     	|

## :bulb: bc Command
`BC`, which stands for `Basic Calculator`, is a command in `Bash` that is used to provide the functionality of a scientific calculator within a Bash script. This can be useful for scripting with various arithmentic use cases and scenarios.
<br>Syntax for bc command:
```bash
echo “expression” | bc
```

The value of the `scale` function is the number of digits after the decimal point in the expression. 
```bash
echo “scale=value; expression” | bc
```
For example:
```bash
echo “scale=2; 5/2” | bc  

# The answer is 2.50
```
## :orange_circle: Tilde Expansion
The tilde expansion is used to expand several specific pathnames:

- Home directories
- Current/previous working directory
- Directories from directory stack.

| **Syntax** | **Description**                                                                 	|
|--------------	|-------------------------------------------------------------------------------	|
| **~**    	| The value of $HOME                    	|
| **~username**     	| If the given username exists, return the path to the user's home directory      	|
| **~+** 	| The value of $PWD (current working directory)	|
| **~-**    	| The value of $OLDPWD (previous working directory)                                       	|

## :green_circle: Brace Expansion
Brace expansion is a mechanism by which arbitrary strings may be generated.

| **Syntax** | **Description**                                                                 	|
|--------------	|-------------------------------------------------------------------------------	|
| **{0,1,2,3}**    	| 0 1 2 3                    	|
| **{0..3}**     	| 0 1 2 3      	|
| **{a..d}** 	| a b c d	|
| **day{01..07}**    	|   day01 day02 day03 day04 day05 day06 day07                                      	|
| **file{1..4}.txt** 	| file1.txt &nbsp; file2.txt &nbsp; file3.txt &nbsp; file4.txt	|
| **{directory1,directory2}/file{1..2}.txt** 	| directory1/file1.txt &nbsp;directory1/file2.txt <br>directory2/file1.txt &nbsp; directory2/file2.txt	|