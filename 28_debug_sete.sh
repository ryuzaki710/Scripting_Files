#/bin/bash
#set -e =>If any  command in script fails , then will exit the scipt

set -e
echo "Script name= $0"
pwd
date
cd /root
hostname

<<comment
Output without set -e commented:
]$ bash 28_debug_sete.sh
Script name= 28_debug_sete.sh
/home/ec2-user/Scripting_Files
Wed May 28 20:24:37 UTC 2025
28_debug_sete.sh: line 6: cd: /root: Permission denied
ip-172-31-80-16.ec2.internal

Output with set -e used:
]$ bash 28_debug_sete.sh
Script name= 28_debug_sete.sh
/home/ec2-user/Scripting_Files
Wed May 28 20:25:52 UTC 2025
28_debug_sete.sh: line 8: cd: /root: Permission denied
[ec2-user@ip-172-31-80-16 Scripting_Files]$ vi 28_debug_sete.sh


comment
