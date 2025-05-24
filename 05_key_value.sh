#!/bin/bash
declare -A myArray
myArray=( [name]=Ajit [age]=25 [city]="Mumbai")

echo "My name is =${myArray[name]} and my age is ${myArray[age]} and city is ${myArray[city]}"
