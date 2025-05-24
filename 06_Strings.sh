#!/bin/bash
myVar="Hello Buddy , How are you ?"
echo "String is = ${myVar}"

#Length of string
echo "Length of string is = ${#myVar}"

#Uppercase string 
echo "Uppercase of string = ${myVar^^}"

#Lowercase of string
echo "Lowercase of string = ${myVar,,}"

#replace a string
newVar=${myVar/Buddy/Friend}
echo "New Replaced string= ${newVar}"

#To slice a string
echo "After slicing a string = ${myVar:6:5} "

<<comment
Output of above script :

String is = Hello Buddy , How are you ?
Length of string is = 27
Uppercase of string = HELLO BUDDY , HOW ARE YOU ?
Lowercase of string = hello buddy , how are you ?
New Replaced string= Hello Friend , How are you ?
After slicing a string = Buddy

comment
