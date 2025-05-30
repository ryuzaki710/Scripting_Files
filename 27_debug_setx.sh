#/bin/bash

set -x
echo "Script name = $0"
echo "Print Even numbers "
#print even numbers in 1-5
for (( i=1;i<=5;i++ ))
do
	if [[ $i%2 -eq 0 ]]
	then
		echo "$i"
	else
		continue
	fi
done
	
<<comment
Output:
$ bash 27_debug_setx.sh
+ echo 'Script name = 27_debug_setx.sh'
Script name = 27_debug_setx.sh
+ echo 'Print Even numbers '
Print Even numbers
+ (( i=1 ))
+ (( i<=5 ))
+ [[ 1%2 -eq 0 ]]
+ continue
+ (( i++  ))
+ (( i<=5 ))
+ [[ 2%2 -eq 0 ]]
+ echo 2
2
+ (( i++  ))
+ (( i<=5 ))
+ [[ 3%2 -eq 0 ]]
+ continue
+ (( i++  ))
+ (( i<=5 ))
+ [[ 4%2 -eq 0 ]]
+ echo 4
4
+ (( i++  ))
+ (( i<=5 ))
+ [[ 5%2 -eq 0 ]]
+ continue
+ (( i++  ))
+ (( i<=5 ))

comment

