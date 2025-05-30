#/bin/bash
echo "Script name= $0"

echo "Script to monitor RAM"

FREESPACE=$(free -mt|grep Total| awk '{print $4}')
THRESHOLD=500
if [[ $FREESPACE -lt $THRESHOLD ]]
then
	echo "!!ALERT!! LOW RAM- Current free RAM Space= $FREESPACE <$THRESHOLD"
else
	echo "No issues , Current Free RAM= $FREESPACE < $THRESHOLD "
fi
<<comment
OUTOUT:
Script name= 30_ram_monitor.sh
Script to monitor RAM
!!ALERT!! LOW RAM- Current free RAM Space= 470 <500

comment

