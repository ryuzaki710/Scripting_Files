#!/bin/bash
echo "How to use variables"
var1=10
var2= Ajit
var3="This is String varable in double quotes"
echo  "var1= $var1 , var2= $var2 var3=$var3"

#Storing hostname command output in variable -You can give any name to variable
HOSTNAME=$(hostname)
echo "Hostname = $HOSTNAME"

var1=15
echo "Var1 updates value =$var1"

#readonly variable will have constant value and its value cannot be chaged.
readonly const_var=500
echo "costant readonly value= $const_var"
