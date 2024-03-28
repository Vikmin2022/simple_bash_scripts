#!/bin/bash
username="tory"
if  id "$username" &>/dev/null 
then
   echo "User $username alredy  exist"
else
   useradd -m "$username"
   echo "user $username created" 
fi   
