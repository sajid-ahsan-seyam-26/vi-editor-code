LINUX SHELL COMMANDS - IMPORTANT CHEAT SHEET
================================================

1. BASIC COMMANDS
-----------------

pwd
# Shows current directory

ls
# Shows files and folders

ls -l
# Shows files and folders with details

ls -a
# Shows hidden files also

ls -lh
# Shows file size in readable format

clear
# Clears terminal screen

whoami
# Shows current logged-in user

date
# Shows current date and time

cal
# Shows calendar

history
# Shows previously used commands


2. DIRECTORY COMMANDS
---------------------

cd folder_name
# Go inside a folder

cd ..
# Go one directory back

cd ~
# Go to home directory

cd /
# Go to root directory

mkdir folder_name
# Create a new folder

mkdir -p folder1/folder2
# Create parent and child folders together

rmdir folder_name
# Remove empty folder only

rm -r folder_name
# Remove folder with files inside

tree
# Shows folder structure like a tree


3. FILE COMMANDS
----------------

touch file.txt
# Create an empty file

cat file.txt
# Show file content

nano file.txt
# Open file in nano editor

vi file.txt
# Open file in vi editor

cp file1.txt file2.txt
# Copy file1 to file2

cp file.txt folder_name/
# Copy file into folder

mv old.txt new.txt
# Rename file

mv file.txt folder_name/
# Move file into folder

rm file.txt
# Delete file

file file.txt
# Shows file type


4. VIEW FILE CONTENT
--------------------

cat file.txt
# Show full file content

less file.txt
# View file page by page

more file.txt
# View file page by page

head file.txt
# Show first 10 lines

tail file.txt
# Show last 10 lines

head -5 file.txt
# Show first 5 lines

tail -5 file.txt
# Show last 5 lines

wc file.txt
# Count lines, words, and characters

wc -l file.txt
# Count only lines

wc -w file.txt
# Count only words

wc -c file.txt
# Count only characters/bytes


5. SEARCH COMMANDS
------------------

grep "word" file.txt
# Search word inside file

grep -i "word" file.txt
# Search ignoring capital/small letters

grep -n "word" file.txt
# Show line number with matched word

grep -v "word" file.txt
# Show lines that do not contain the word

find . -name "file.txt"
# Find file in current directory

find /home -name "file.txt"
# Find file inside /home

find . -type f
# Find all files

find . -type d
# Find all folders


6. PERMISSION COMMANDS
----------------------

ls -l
# Check file permission

chmod 777 file.txt
# Give read, write, execute permission to everyone

chmod 755 file.txt
# Owner can read/write/execute, others can read/execute

chmod +x script.sh
# Make script executable

chown user file.txt
# Change file owner

chgrp group file.txt
# Change file group


7. REDIRECTION COMMANDS
-----------------------

echo "Hello"
# Print text

echo "Hello" > file.txt
# Write text into file and replace old content

echo "Hello again" >> file.txt
# Add text at end of file

cat file.txt > copy.txt
# Copy output into another file

command > output.txt
# Save command output into file

command >> output.txt
# Append command output into file

command 2> error.txt
# Save error message into file


8. PIPE COMMANDS
----------------

ls | wc -l
# Count number of files/folders

cat file.txt | grep "word"
# Search word from file output

history | grep "mkdir"
# Search mkdir from command history

cat file.txt | sort
# Sort file content

cat file.txt | uniq
# Remove repeated lines after sorting

cat file.txt | sort | uniq
# Sort and remove duplicate lines


9. SORT AND CUT COMMANDS
------------------------

sort file.txt
# Sort lines alphabetically

sort -r file.txt
# Sort in reverse order

sort -n numbers.txt
# Sort numbers properly

uniq file.txt
# Remove duplicate adjacent lines

cut -d "-" -f1 info.txt
# Cut first field using - as separator

cut -d "-" -f2 info.txt
# Cut second field using - as separator

cut -c 1-5 file.txt
# Cut character positions 1 to 5


10. PROCESS COMMANDS
--------------------

ps
# Show running processes

ps aux
# Show all running processes

top
# Show live process list

htop
# Better live process list, if installed

kill PID
# Stop process using process ID

kill -9 PID
# Force stop process

jobs
# Show background jobs

fg
# Bring background job to foreground

bg
# Run stopped job in background


11. SYSTEM INFORMATION COMMANDS
-------------------------------

uname
# Show operating system name

uname -a
# Show full system information

hostname
# Show computer name

uptime
# Show how long system is running

df -h
# Show disk space

du -sh folder_name
# Show folder size

free -h
# Show memory/RAM usage

lscpu
# Show CPU information

lsblk
# Show disk and partition list


12. NETWORK COMMANDS
--------------------

ping google.com
# Check internet connection

ifconfig
# Show network information, old command

ip addr
# Show IP address, modern command

ip a
# Short version of ip addr

netstat -tulnp
# Show open ports, if installed

ss -tulnp
# Show open ports, modern command

curl website.com
# Fetch website content

wget URL
# Download file from URL


13. ARCHIVE AND COMPRESSION
---------------------------

tar -cvf archive.tar folder_name
# Create tar archive

tar -xvf archive.tar
# Extract tar archive

tar -czvf archive.tar.gz folder_name
# Create compressed tar.gz file

tar -xzvf archive.tar.gz
# Extract compressed tar.gz file

zip file.zip file.txt
# Create zip file

zip -r folder.zip folder_name
# Zip full folder

unzip file.zip
# Extract zip file


14. PACKAGE INSTALLATION
------------------------

sudo apt update
# Update package list on Ubuntu/Debian

sudo apt upgrade
# Upgrade installed packages

sudo apt install package_name
# Install package

sudo apt remove package_name
# Remove package

sudo apt autoremove
# Remove unused packages


15. USER COMMANDS
-----------------

who
# Show logged-in users

w
# Show logged-in users with activity

id
# Show user ID and group ID

sudo command
# Run command as administrator

passwd
# Change password


16. VI EDITOR BASIC COMMANDS
----------------------------

vi file.txt
# Open file in vi editor

i
# Insert mode

Esc
# Exit insert mode

:w
# Save file

:q
# Quit

:wq
# Save and quit

:q!
# Quit without saving

dd
# Delete current line

yy
# Copy current line

p
# Paste copied line

/text
# Search text

n
# Go to next search result


17. SIMPLE SHELL SCRIPT FORMAT
------------------------------

#!/bin/bash

echo "Hello Linux"

# Save file as script.sh
# Then run:

chmod +x script.sh
./script.sh


18. IF ELSE EXAMPLE
-------------------

#!/bin/bash

echo "Enter file name:"
read filename

if [ -f "$filename" ]
then
    echo "File found"
else
    echo "File not found"
fi


19. LOOP EXAMPLE
----------------

#!/bin/bash

for i in 1 2 3 4 5
do
    echo "Number: $i"
done


20. WHILE LOOP EXAMPLE
----------------------

#!/bin/bash

count=1

while [ $count -le 5 ]
do
    echo "Count: $count"
    count=$((count + 1))
done


21. FILE PARSING EXAMPLE
------------------------

Info.txt format:

101:seyam:25000:dhaka
102:sabik:26000:mymensingh
103:ahsan:27000:comilla

Shell script:

#!/bin/bash

while IFS=':' read -r id name salary address
do
    echo "ID $id"
    echo "Name $name"
    echo "Salary $salary"
    echo "Address $address"
done < Info.txt


22. MOST USED COMMAND COMBINATIONS
----------------------------------

ls -la
# Show all files with details

pwd
# Check current location

cd ..
# Go back

mkdir test
# Create folder

touch file.txt
# Create file

cat file.txt
# Show file

cp file.txt copy.txt
# Copy file

mv copy.txt backup.txt
# Rename file

rm backup.txt
# Delete file

grep "hello" file.txt
# Search hello

chmod +x script.sh
# Make script executable

./script.sh
# Run shell script
