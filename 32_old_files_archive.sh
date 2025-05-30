#/bin/bash
#$Revision=001$ Adding revision numbers to track changes
echo "Script name= $0"
#Variables
BASE=/home/ec2-user/Scripting_Files
DAYS=5
DEPTH=1 #Used in find command for subdirectory levels
RUN=0

#check if the directory is present or not
if [ ! -d $BASE ]
then
	echo "Directory does not exist"
	exit 1
fi

#create archive folder if not present
if [ ! -d $BASE/archive ]
then
	mkdir $BASE/archive
fi

#find the list of files larger than 5MB
for i in `find $BASE -maxdepth $DEPTH -type f -size +5M -o -mtime +$DAYS`
do
	if [ $RUN -eq 0 ]
	then
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==>$BASE/archive"
		gzip $i || exit 1
		mv $i.gz $BASE/archive || exit 1
	fi
done

<<comment
Before running script:
1.check files having size >5MB
[ec2-user@ip-172-31-80-16 Scripting_Files]$ find /home/ec2-user/Scripting_Files -maxdepth 1 -type f -size +5M
/home/ec2-user/Scripting_Files/statsd_exporter-0.28.0.linux-amd64.tar
/home/ec2-user/Scripting_Files/node_exporter-1.9.1.darwin-amd64.tar

2.Check files older than 5 days
[ec2-user@ip-172-31-80-16 Scripting_Files]$ find /home/ec2-user/Scripting_Files -maxdepth 1 -type f -mtime +5
/home/ec2-user/Scripting_Files/01_hello.sh
/home/ec2-user/Scripting_Files/statsd_exporter-0.28.0.linux-amd64.tar
/home/ec2-user/Scripting_Files/node_exporter-1.9.1.darwin-amd64.tar

3.Check files satisfying either of above conditions using -o (OR)
[ec2-user@ip-172-31-80-16 Scripting_Files]$ find /home/ec2-user/Scripting_Files -maxdepth 1 -type f -size +5M -o -mtime +5
/home/ec2-user/Scripting_Files/01_hello.sh
/home/ec2-user/Scripting_Files/statsd_exporter-0.28.0.linux-amd64.tar
/home/ec2-user/Scripting_Files/node_exporter-1.9.1.darwin-amd64.tar

Output:
[ec2-user@ip-172-31-80-16 Scripting_Files]$ bash 32_old_files_archive.sh
Script name= 32_old_files_archive.sh
[2025-05-30 07:48:56] archiving /home/ec2-user/Scripting_Files/01_hello.sh ==>/home/ec2-user/Scripting_Files/archive
[2025-05-30 07:48:56] archiving /home/ec2-user/Scripting_Files/statsd_exporter-0.28.0.linux-amd64.tar ==>/home/ec2-user/Scripting_Files/archive
[2025-05-30 07:48:57] archiving /home/ec2-user/Scripting_Files/node_exporter-1.9.1.darwin-amd64.tar ==>/home/ec2-user/Scripting_Files/archive

[ec2-user@ip-172-31-80-16 Scripting_Files]$ ls archive/
01_hello.sh.gz
node_exporter-1.9.1.darwin-amd64.tar.gz
statsd_exporter-0.28.0.linux-amd64.tar.gz

comment

