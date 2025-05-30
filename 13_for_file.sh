#!/bin/bash

FILE_PATH="/home/ec2-user/Scripting_Files/names.txt"

for name in $(cat $FILE_PATH)
do
	echo "$name"
done

<<comment
Output:

Raju
Shyam
Baburao
Rahul
Pratik

comment
