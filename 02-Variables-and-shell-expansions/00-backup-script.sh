#!/bin/bash

# Author: Hamed Zeinalzadeh
# Created: 21th August 2022
# Last Modified: 21th August 2022

# Description:
# Creates a backup in the arbitrary directory of all files
# in another arbitrary directory.

# Usage:
# backup_script

# read source and destination path from user
echo "Username: ${USER^}"    # ^ capitalize the username
read -p "Original directory/file path: " original_dir
read -p "Destination absolute path: " destination_dir 
echo "Back up your $original_dir directory to $destination_dir"
read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

tar -cf "$destination_dir/my_backup_$(date +%d-%m-%Y_%H-%M-%S).tar" $original_dir 2>/dev/null

echo "Backup completed successfully"

exit 0