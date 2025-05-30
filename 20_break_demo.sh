#/bin/bash
read -p "Enter number to search in range of 1-10 = " num

if [[ $num -lt 1 || $num -gt 10 ]]
then
	echo "Wrong input!! Please enter number in range 1-10 !"
	exit 1
fi
for (( i=1;i<=10;i++ ))
do
	echo "Current Iteration= $i "
	if [[ $i -eq $num ]]
	then
		 echo "Number found= $i"
		 break
	fi
done

<<comment
Output:
Enter number to search in range of 1-10 = 50
Wrong input!! Please enter number in range 1-10 !

Enter number to search in range of 1-10 = 0
Wrong input!! Please enter number in range 1-10 !

Enter number to search in range of 1-10 = 5
Current Iteration= 1
Current Iteration= 2
Current Iteration= 3
Current Iteration= 4
Current Iteration= 5
Number found= 5

comment

