# BASH SCRIPT STRUCTURE
## :key: Bash scripts 3 core elements
- ***Shebang line*** : 
<br>`#!/bin/bash` – Execute the file using the Bash shell
- ***Commands*** :
<br>Commands will be task-dependent
- ***Exit statement*** :
<br>0=Success &nbsp; Non-zero=Failure
<br>:link: [Advanced Bash-Scripting Guid: Exit Codes With Special Meanings](https://tldp.org/LDP/abs/html/exitcodes.html) 

## :wrench: Bash script professional components
You can use some elements in your script to represent it in a more professional view.

```bash
# Author: Hamed Zeinalzadeh
# Created: 21th August 2022
# Last Modified: 21th August 2022

# Description:
# Creates a backup in the arbitrary directory of all files in another arbitrary directory.

# Usage:
# backup_script
```

## :heavy_check_mark: Set secure permissions
Scripts must have execute permission to run.

File permissions in Linux file system are managed in three distinct user classes: 
- user/owner
- group
- others/public 

 Each class can have read, write and execute permissions. File permission can be represented in a symbolic or numeric (octal) format.

Search your specific octal code on [www.chmod-calculator.com](https://chmod-calculator.com/)

```bash
 chmod <octal code> <file>
```


For example:  744(rwxr--r--)
## :bulb: Making scripts accessible
To make bash scripts accessible from any directory on your device, you can pass the steps below, but occasionally, it is not recommended for security reasons.
- Add your custom directory to the `PATH`  by editing your `~/.profile`. You can use any editor like `vim` or `nano` to open the `~/.profile` file and add the command below at the end of the file.

```bash
export PATH="$PATH:/custom_directory_path"
```

- Reload the &nbsp; `~/.profile` &nbsp; from your terminal 

```bash title='hello'
$ source ~/.profile
```

- Move your script to the custom directory path

```bash
$ mv my_script the_custom_directory
```
> ###:warning: ***Note***
> <br>Avoid giving your scripts names that may conflict with another command on your system.