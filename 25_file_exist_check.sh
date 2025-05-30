#/bin/bash
echo "Script name= $0"

FILEPATH="/home/ec2-user/Scripting_Files/redirect.log"
if [[ -f $FILEPATH ]]
then
	echo "file already exists"
	echo "Adding line = $(date)">>$FILEPATH
else
	echo "File does  not exist "
	echo "creating  a file now"
	touch $FILEPATH
	echo "First time  line = $(date)">>$FILEPATH

fi
<<comment
OUTPUT:
 bash 25_file_exist_check.sh
Script name= 25_file_exist_check.sh
File does  not exist
creating  a file now
[ec2-user@ip-172-31-80-16 Scripting_Files]$ bash 25_file_exist_check.sh
Script name= 25_file_exist_check.sh
file already exists
[ec2-user@ip-172-31-80-16 Scripting_Files]$ bash 25_file_exist_check.sh
Script name= 25_file_exist_check.sh
file already exists
[ec2-user@ip-172-31-80-16 Scripting_Files]$ cat redirect.log
First time  line = Wed May 28 19:41:37 UTC 2025
Adding line = Wed May 28 19:41:42 UTC 2025
Adding line = Wed May 28 19:41:44 UTC 2025

comment

