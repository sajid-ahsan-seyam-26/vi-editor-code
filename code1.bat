Write a shell script to display the following pattern: 
##### 
#### 
## 
# 


#!/bin/bash 
 
rows=5 
 
for ((i=rows; i>=1; i--)) 
do 
    if [ $i -eq 3 ] 
    then 
        continue 
    fi 
 
    for ((j=1; j<=i; j++)) 
    do 
        echo -n "#" 
    done 
    echo 
done 
