#!/bin/bash
read -p "Enter age: " age
 
if (( age >= 18 && age <= 30 )); then
    echo "Eligible"
else
    echo "Not eligible"
fi
