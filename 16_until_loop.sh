#/bin/bash
#until loop example

count=1
until [ $count -ge 6 ]
do
	echo "$count"
	let count++
done

<<comment
Output:
1
2
3
4
5
comment


