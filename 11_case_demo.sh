#!/bin/bash

echo "Provide an option from  below"
echo "a -to print a date"
echo "b to list files/scripts in current working directory"
echo "c to check current working location directory path"

read -p "Enter choice from above options : " choice

case $choice in
	a) 
		echo "Today's date is ="
		date
		echo "End of multiline case statement"
		;;
	b) ls;;
	c) pwd;;
	*) echo "Please enter valid input"
esac

<<comment
Output:

[ec2-user@ip-172-31-80-16 Scripting_Files]$ bash 11_case_demo.sh
Provide an option from  below
a -to print a date
b to list files/scripts in current working directory
c to check current working location directory path
Enter choice from above options : a
Today's date is =
Sun May 25 10:24:36 UTC 2025
End of multiline case statement
[ec2-user@ip-172-31-80-16 Scripting_Files]$ bash 11_case_demo.sh
Provide an option from  below
a -to print a date
b to list files/scripts in current working directory
c to check current working location directory path
Enter choice from above options : b
01_hello.sh              05_key_value.sh              09_if_else.sh
02_variable_demo.sh      06_Strings.sh                10_elif.sh
03_readonly_varibale.sh  07_readCommand.sh            11_case_demo.sh
04_array_demo.sh         08_arithmetic_operations.sh
[ec2-user@ip-172-31-80-16 Scripting_Files]$ bash 11_case_demo.sh
Provide an option from  below
a -to print a date
b to list files/scripts in current working directory
c to check current working location directory path
Enter choice from above options : c
/home/ec2-user/Scripting_Files
[ec2-user@ip-172-31-80-16 Scripting_Files]$ bash 11_case_demo.sh
Provide an option from  below
a -to print a date
b to list files/scripts in current working directory
c to check current working location directory path
Enter choice from above options : k
Please enter valid input

comment

