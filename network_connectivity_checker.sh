#!/bin/bash

host="google.com"
if ping -c1 "$host" &>/dev/null
then 
   echo "Network is  up"
else 
   echo "Network is  down"

fi      