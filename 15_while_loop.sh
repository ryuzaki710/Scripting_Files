#!/bin/bash

#while loop example

count=1
num=5
while [ $count -le $num ]
do
	echo "$count"
	let count++ #Need to add let here for arithmetic operation
done

<<comment

OUTPUT:
1
2
3
4
5

comment

