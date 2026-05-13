#!/bin/bash
read -p "Enter first number: " a
read -p "Enter second number: " b
 
if (( a > b )); then
    echo "$a is larger"
elif (( b > a )); then
    echo "$b is larger"
else
    echo "Both numbers are equal"
fi
