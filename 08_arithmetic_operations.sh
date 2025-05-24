#!/bin/bash
echo "Below are arithmetic operations"

x=10
y=2

#This will return string  as it will be treated as string 
mul=$x*$y
echo "Multiplication of $x and $y will  return string = $mul"

#Method 1 :with let command
let mul=$x*$y
echo "Multiplication of $x and $y using let command = $mul"

#Method 2 : without let command
echo "Multiplication of $x and $y without using let command = $(($x*$y))"

<<comment
Output of above script:

Below are arithmetic operations
Multiplication of 10 and 2 will  return string = 10*2
Multiplication of 10 and 2 using let command = 20
Multiplication of 10 and 2 without using let command = 20

comment

