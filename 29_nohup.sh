#!/bin/bash

for i in  1 2 3 4 5
do
        echo "Number is = $i "
	sleep 3s
done

#since no option was mentioned , so command output will be stored to nohup.out by default

<<comment
Output:

[ec2-user@ip-172-31-80-16 Scripting_Files]$ nohup ./29_nohup.sh &
[1] 15213
[ec2-user@ip-172-31-80-16 Scripting_Files]$ nohup: ignoring input and appending output to 'nohup.out'


cat nohup.out
Number is = 1
Number is = 2
Number is = 3
Number is = 4
Number is = 5

comment

