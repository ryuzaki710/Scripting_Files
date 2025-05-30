#!/bin/bash

#method 1
for i in  1 2 3 4 5
do
	echo "Number is = $i "
done

#e.g 2
for name in shyam raju baburao
do
	echo "$name"
done

#Method 2
for i in {1..5}
do
	echo "$i"
done
