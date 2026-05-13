#!/bin/bash
read -p "Enter marks: " marks
 
if (( marks >= 80 )); then
    echo "Grade: A"
elif (( marks >= 70 )); then
    echo "Grade: B"
elif (( marks >= 60 )); then
    echo "Grade: C"
elif (( marks >= 50 )); then
    echo "Grade: D"
else
    echo "Fail"
fi
