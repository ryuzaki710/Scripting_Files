#/bin/bash
echo "Script name= $0"

#print odd numbers between 1 -10
echo "Print Odd numbers 1-10"
for (( i=1;i<=10;i++ ))
do
	if [[ $i%2 -eq 0 ]]
	then
		continue
	fi
	echo "$i"
done

<<comment
Output:
Script name= 21_continue_demo.sh
Print Odd numbers 1-10
1
3
5
7
9

comment
