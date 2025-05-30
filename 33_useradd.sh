#/bin/bash
echo "Script name= $0"
flag=0

#Take username and description as comment variable
echo "User to be added = $1" #Only first argument will be taken as Username
USERNAME=$1
shift 
echo "User description = $@" #remaining arguments will be taken as description
COMMENT=$@

echo
if [ $UID -eq 0 ]
then
	echo "Root user verified, user can be added "
	flag=1
else
	flag=0
	echo "Not a root user,You are Unauthorized "
	exit 1
fi

#create a password
PASSWORD=$(date +%s%N)
echo "$PASSWORD"

#Create a User
#Use varibale comment in double quotes to identify it as string -to avoid error
useradd -c "$COMMENT" -m $USERNAME


#check if user is successfully created or not

if [[ $? -eq 0 ]]
then
	echo "The user has been successfully created "
else
	echo "The account could not be created"
	exit 1
fi

#set password for the user

#passwd $PASSWORD $USERNAME =>error as only on euser should be specified

echo $PASSWORD | passwd --stdin $USERNAME
if [[ $? -ne 0 ]]
then
	echo "Password Error - unable to set password"
	exit 1
fi

#Force password change on first login
passwd -e $USERNAME

#Display username ,password, and hostname where user was created.
echo
echo "Username= $USERNAME"
echo 
echo "Password=$PASSWORD"
echo
echo "Hostname = $(hostname)"

<<comment

Output:
[root@ip-172-31-80-16 Scripting_Files]# ./33_useradd.sh  Atul This is test User Script name= ./33_useradd.sh
User to be added = Atul
User description = This is test User

Root user verified, user can be added
1748643185008200790
The user has been successfully created
Changing password for user Atul.
passwd: all authentication tokens updated successfully.
Expiring password for user Atul.
passwd: Success

Username= Atul

Password=1748643185008200790

Hostname = ip-172-31-80-16.ec2.internal


l@ip-172-31-80-16 ~]$ su Atul
Password:
You are required to change your password immediately (administrator enforced).
Current password:
New password:
BAD PASSWORD: The password contains the user name in some form
New password:
Retype new password:
[Atul@ip-172-31-80-16 ~]$ cd /home/Atul/
[Atul@ip-172-31-80-16 ~]$ pwd
/home/Atul

comment
