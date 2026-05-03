Write a shell program to calculate the sum of the series  
[ 7+ 77 + 777 + 7777 ...] (up to n terms). 
#!bin/bash 
read -p "Enter value n: " n 
num="" 
sum=0 
 
for (( i=0; i<n; i++)) 
do 
 num=${num}7 
 sum=$(expr $sum + $num) 
done 
echo $sum 
