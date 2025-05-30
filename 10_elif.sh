#!/bin/bash
read -p "Enter your marks = " marks

if [[ $marks -ge 80 && $marks -le 100 ]]
then
	echo "Class A "
elif [[ $marks -ge 40 && $marks -lt 80 ]]
then
	echo "Class B"
elif [[ $marks -lt 0 || $marks -gt 100 ]]
then
	echo "Invalid Marks , enter in range between 1-100"
else
	echo "Failed !!!!!!"
fi

<<comment

Output:

Enter your marks = 85
Class A

Enter your marks = 103
Invalid Marks , enter in range between 1-100

Enter your marks = 30
Failed !!!!!!


comment

