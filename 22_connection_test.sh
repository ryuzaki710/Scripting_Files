#/bin/bash
echo "Script name = $0 "
read -p "Enter site you want to test connection for= " sitename
ping -c 1 $sitename

if [[ $? -eq 0 ]]
then
	echo "Connection successful for  $sitename "
else
	echo "!!!Error connecting to $sitename !!!"
fi
<<comment
Output:
Script name = 22_connection_test.sh
Enter site you want to test connection for= google.com
PING google.com (142.251.167.100) 56(84) bytes of data.
64 bytes from ww-in-f100.1e100.net (142.251.167.100): icmp_seq=1 ttl=106 time=1.67 ms

--- google.com ping statistics ---
1 packets transmitted, 1 received, 0% packet loss, time 0ms
rtt min/avg/max/mdev = 1.673/1.673/1.673/0.000 ms
Connection successful for  google.com

[ec2-user@ip-172-31-80-16 Scripting_Files]$ bash 22_connection_test.sh
Script name = 22_connection_test.sh
Enter site you want to test connection for= localhost.com
PING localhost.com (74.125.224.72) 56(84) bytes of data.

--- localhost.com ping statistics ---
1 packets transmitted, 0 received, 100% packet loss, time 0ms

!!!Error connecting to localhost.com !!!

comment
