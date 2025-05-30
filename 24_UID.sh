#/bin/bash
echo "Script name= $0"
if [[ $UID -eq 0 ]]
then
	echo "You are a root user ,UID= $UID"
else
	echo "Not a root user ,You are unauthoized to perform action,UID=$UID "
fi
<<comment
OUTPUT:
[root@ip-172-31-80-16 ec2-user]# bash /home/ec2-user/Scripting_Files/24_UID.sh
Script name= /home/ec2-user/Scripting_Files/24_UID.sh
You are a root user ,UID= 0

[ec2-user@ip-172-31-80-16 ~]$ bash /home/ec2-user/Scripting_Files/24_UID.sh
Script name= /home/ec2-user/Scripting_Files/24_UID.sh
Not a root user ,You are unauthoized to perform action ,UID= 1000
comment
