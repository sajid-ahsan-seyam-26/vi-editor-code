Write a shell script to display the following pattern: 
A 
AA 
AAA 
AAAA 
AAAAA 
  #!/bin/bash 
 
rows=5 
for ((i=1; i<=rows; i++))  
do 
    for ((j=1; j<=i; j++))  
    do 
        echo -n "A" 
    done 
    echo 
done 
