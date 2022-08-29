# USER INPUT

## ⚙️ Positional Parameters
Positional parameters  are the arguments given to your scripts when it is invoked. It could be from `$1` to `$N`.
<br>The variable `$0` is the basename of the program as it was called.

> :warning: <b>Note</b>
> <br>When ***N*** consists of ***more than a single digit***, it must be enclosed in braces like `${N}`.

<br>Example:
```bash
#!/bin/bash

echo “My Name is $1”
echo “My favourite os is $2”
echo “My favourite color is $3”
```

```bash
myscript Hamed linux green
# Hamed --> $1
# linux --> $2
# green --> $3
```

## :: Special Parameters
The shell treats several parameters specially. These parameters may only be referenced; assignment to them is not allowed.

### :green_circle: Some Common Shell Variables

| **Variable Name** 	| **Description**                                                                       	|
|-------------------	|---------------------------------------------------------------------------------------	|
| **Special Parameter**          	| Indicates the home directory of the current user                                      	|
| **PATH**          	| Includes the necessary directories only that shell should search for executable files 	|
| **USER**          	| The current user's username                                                           	|
| **HOSTNAME**      	| The host-name of the current machine                                                  	|

## :: The Read Command
`read` is a bash built-in command that reads a line from the standard input (or from the file descriptor) and split the line into words. The first word is assigned to the first name, the second one to the second name, and so on.
<br>Syntax for `read` command:

```bash
read [options] [name...]
```

<br>Example:
```bash
$ read $var1 $var2
Hello, World!
```

```bash
$ echo $var1
$ echo $var2
```
Output:
```bash 
Hello,
World!
```

### :blue_circle: Read Options

| **Option Name** 	| **Description**                                                                       	|
|-------------------	|---------------------------------------------------------------------------------------	|
| **-p \<prompt\>**          	| Outputs the prompt string ***before*** reading user input.                                      	|
| **-s**          	| 	Does ***not*** echo the user's input. 	|
| **-t \<time\>**          	| The command ***times out*** after the specified time in seconds.                                                           	|
| **-N \<number\>**      	| 	Returns after reading the specified ***number*** of chars, ignoring the delimiter.                                                  	|
| **-n \<number\>**      	| 	Limit the user's response to a ***maximum*** number of
chars.                                                	|

<br>:link: [Bash read built-in](https://linuxize.com/post/bash-read/)


<br>Example:
```bash
#!/bin/bash

read -t 5 -p "Input your first name within 5 seconds: " name
read -n 2 -p "Input your age (max 2 digits): " age
read -s -N 5 -p "Enter your password (exactly 5 digits): " password
echo "$name, $age, $password" >> data.csv
```

## :: The Select Command
The `select` command provides a dropdown
menu to select. The user may select an option from
the list of options.

It is also possible to provide a ***prompt*** using the
`PS3` shell variable.

Syntax for the `select` command:
```bash
PS3="Please select an option: "
select variable in options ; do
<commands>
break
done
```
<br>Example:
```bash
#!/bin/bash

PS3="What is your operating system?: "
select os in linux mac windows ; do
echo "The operating system is $os"
break
done
```
