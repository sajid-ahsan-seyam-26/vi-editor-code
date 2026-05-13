#!/bin/bash

read -p "Enter a character: " ch

case $ch in
    a|e|i|o|u|A|E|I|O|U )
        echo "$ch is a vowel"
    ;;
    * )
        echo "$ch is a consonant"
    ;;
esac