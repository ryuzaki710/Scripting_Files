#!/bin/bash
#Script to print the given number in Reverse order.
#e.g. 1234 =>4231
echo "Script Name= $0"

read -p "Enter number you want to reverse =>" num

<<comment
#Method 1
#This counts the number of characters in the variable num.
length_num=${#num}
echo "Length=${length_num}"

revnum=0

for ((i=0;i<$length_num;i++))
do
	remainder=$((num%10))
	revnum=$((remainder + revnum*10))
	num=$((num/10))
done
echo "Reverse number of given number =>$revnum"

comment
#METHOD 2
revnum_2=0
for ((i=0;$num;i++))
do
	remainder_2=$((num%10))
	revnum_2=$((remainder_2 + revnum_2 * 10))
	num=$((num/10))
done
echo "Reverse number = $revnum_2 "

<<comment
OUTPUT:
Script Name= Reverse_number.sh
Enter number you want to reverse =>12345
Reverse number = 54321

comment

