#!/bin/bash

remote_server="user@remote_server"
remote_script="/path/to/reote/script"
ssh "$remote_server" bash -s < "$remote_script"
#The -s option in bash -s stands for "stdin." When used in conjunction with the < operator as in bash -s < "$remote_script", it tells the bash shell to read 
#commands from standard input (stdin), which is redirected from the specified file ("$remote_script"). This allows you to execute a script remotely on another machine via SSH.


echo "Remote  script executed"