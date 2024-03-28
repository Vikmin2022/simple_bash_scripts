#!/bin/bash
quotes=("apple" "banana" "orange" "mango") #quotes are simply an array of strings containing pieces of information, phrases, or sentences that can be randomly chosen. Each element in the array represents a quote, and the script randomly selects one of these quotes to display.

random_index=$((RANDOM % ${#quotes[@]})) #${#array[@]}: This syntax is used to get the length of an array in Bash. It returns the number of elements in the array quotes
echo "Random Quote:
${quotes[$random_index]}"