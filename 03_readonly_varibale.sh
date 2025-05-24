#!/bin/bash
#readonly variable will have constant value and its value cannot be chaged.
readonly const_var=500
echo "constant readonly value= $const_var"

const_var=200
echo " Value  of const_var=$const_var readonly variable value trying to change will give error "

echo "End of this script"

<<comment
Below is output of above script:
constant readonly value= 500
./03_readonly_varibale.sh: line 6: const_var: readonly variable
 Value  of const_var=500 readonly variable value trying to change will give error
End of this script

comment
