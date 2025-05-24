#!/bin/bash
echo "How to define an array ?"
myarray=( 1 2 10.5 Hello "This is array")

echo "How to get values from an array?"
echo "${myarray[0]}"
echo "${myarray[1]}"
 
echo "To print all array elements: ${myarray[*]}"

#Length of array
echo "Length of array = ${#myarray[*]}"

#to print arrany indices
echo "Indices of array = ${!myarray[*]}"
#To print range /specific elements from an array.
echo "To print range of elemnts from array "
echo "all elements after inde 1:  ${myarray[*]:1}"
echo "3 elemnts from index 2 of array ${myarray[*]:2:3}"

#to add elements in an array 
myarray+=( 5 "add" 12.3 )
echo "Updated array elements= ${myarray[*]} and updated length = ${#myarray[*]}"

#Ignore below :we will use loop for this with filtering method.
#Don't use unset as this will create holes in array/sparse array
#to remove array element at specific index
echo "Original array: ${myarray[*]} (length: ${#myarray[*]})"
unset myarray[6]
echo "After unsetting index 6: ${myarray[*]} (length: ${#myarray[*]})"

#Removing Elements by Value requires looping 
