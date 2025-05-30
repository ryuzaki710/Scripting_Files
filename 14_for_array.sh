#!/bin/bash

#Listing array elements with for

myArr=( 10 2.4 Naman "How are you" 20 )

length_myArr=${#myArr[*]}

#(()) indicates arithmetic operation , 
#so you can also use $myarr[i] instead of ${myArr[{$i}}
echo "Array elements are as below: "
for (( i=0;i<$length_myArr;i++ ))
do
	echo "${myArr[$i]}"
done

<<comment
Output:

Array elements are as below:
10
2.4
Naman
How are you
20

comment

