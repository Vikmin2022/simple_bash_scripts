#!/bin/bash

IFS=$'\n' #IFS stands for Internal Field Separator.
for user in $(cat /etc/passwd | grep "/bin/bash" | cut -d: -f1)
do
   password_expires=$(chage -l "$user" | grep "Password expires" | awk '{print $4}')
   echo "User: $user, Passowrd Expires: $password_expires " 
done
unset IFS   #he provided script, unset IFS is used to unset or reset the IFS variable to its default value after it has been temporarily changed to $'\n' (newline) at the beginning of the script. after the loop completes, it's a good practice to revert IFS back to its default value to avoid unexpected behavior in subsequent parts of the script. unset IFS