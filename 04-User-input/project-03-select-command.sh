#!/bin/bash

read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname

PS3="What type of phone do you have?: "

select phone in headset handheld; do
    echo "You chose $phone"
    break
done

PS3="What department do you work in?: "

select department in finance sales engineering "customer service"; do
    echo "You chose $department"
    break
done

read -N 4 -p "What is your extension? (must be 4 digits): " ext
echo # for formatting
read -N 4 -s -p "What access code would you like to use when dialling in (must be 4 digits)?: " access
echo # for formatting

echo "$firstname,$lastname,$phone,$department,$ext,$access" >> extensions.csv