#!/bin/bash

length=12

password=$(openssl rand -base64 "$length")
echo "Ganerated password: "$password" "




