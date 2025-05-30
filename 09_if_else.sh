#!/bin/bash
read -p "Enter your marks = " marks

if [[ $marks -gt 40 ]]
then
	echo "You are passed"
else
	echo "Failed !!!!!!"
fi

<<comment

Output:
Enter your marks = 30
Failed !!!!!!

Enter your marks = 48
You are passed

comment

