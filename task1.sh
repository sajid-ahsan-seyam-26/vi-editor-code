#!/bin/bash
read -p "Enter a number: " num
 
if (( num > 0 )); then
    echo "Positive number"
elif (( num < 0 )); then
    echo "Negative number"
else
    echo "Zero"
fi
