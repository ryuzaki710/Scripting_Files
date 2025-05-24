#!/bin/bash
#Using echo and  read -echo will ask input on new line
echo "Please enter your name : "
read name
echo "Your name is ${name}"

#read -p will ask input on same  line
read -p "Enter your age :=> " age
echo "Your age is ${age}"

<<comment
Output of above script:
Please enter your name :
demo
Your name is demo
Enter your age :=> 20
Your age is 20

comment

