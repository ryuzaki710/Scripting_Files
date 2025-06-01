#!/bin/bash
#$REVISON=001$

DIRPATH=/home/ec2-user/Scripting_Files/TestingFiles
BUCKETNAME=script-backup-cronjob
LOGFILE=/home/ec2-user/Scripting_Files/Devops_Scripts/demo.log

if [ ! -d $DIRPATH ]
then
	echo "ERROR:Directory Does not exist ">>$LOGFILE
	exit 1
fi

if [ ! -f $LOGFILE ]
then
	echo "ERROR:Log File does not exist">>$LOGFILE
	exit 1
fi

echo "Script  Name =$0 Triggered at $(date)">>$LOGFILE

#Taking backup
aws s3 sync $DIRPATH s3://$BUCKETNAME >>$LOGFILE 2>&1

SYNC_STATUS=$?

if [ $? -eq 0 ]
then
	echo "Backup taken successfully with exit code $SYNC_STATUS ">>$LOGFILE
else
	echo "s3 sync failed with exit status code $SYNC_STATUS">>$LOGFILE
fi
echo "Script finished at $(date)">>$LOGFILE

