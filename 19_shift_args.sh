#/bin/bash

echo "Script name = $0"
echo "Without Shift :"
echo "First argument=$1"
echo "All  argument= $@"

shift 

echo "After shift :"
echo "First Argument=$1"
echo "All arguments after shift= $@"

<<comment
Output:
bash 19_shift_args.sh 14 Hello 40.23 Nice great

Script name = 19_shift_args.sh
Without Shift :
First argument=14
All  argument= 14 Hello 40.23 Nice great
After shift :
First Argument=Hello
All arguments after shift= Hello 40.23 Nice great

comment
