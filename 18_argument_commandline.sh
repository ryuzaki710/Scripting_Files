#/bin/bash

echo "First argument = $1"
echo "2nd argument = $2 "

echo "All arguments= $@"
echo "Number of arguments = $#"


#e.g. for loop to access arguments

for filename in $@
do
	echo "copying file $filename" #use copy logic /command
done

<<comment
Output:
bash 18_argument_commandline.sh  names.txt test.csv demo.txt

First argument = names.txt
2nd argument = test.csv
All arguments= names.txt test.csv demo.txt
Number of arguments = 3
copying file names.txt
copying file test.csv
copying file demo.txt

comment
