#!/bin/bash

#Script/Command to extract list of IP's along with count from a logfile
echo "Script Name= $0"

grep -E -o "([0-9]{1,3}[/.]){3}[0-9]{1,3}" IP_logfile |sort|uniq -c|sort -nr
<<comment
e.g. Let's say for  IP = 9.67.116.98
-E for regular expressions 
-o for  matching only lines 
[0-9] Regular expresion for numbers e.g. 9 67 116
{1,3} for 3 characters e.g. 116 for 3rd byte
[/.] separated by . e.g. seprated by 3 dots
{3} 3 times above pattern  e.g. 9.67.116.
[0-9]{1,3} After that ,we will check last byte e.g.98

IP_LOGFILE =>Filename
sort => will sort above  input which is needed for uniq command
uniq => uniq command will remove duplicates (input must be sorted first)
uniq -c =>This will give count for number of times that particular IP is found in file
sort -r or sort -nr => To print output in reverse order as per count
OUTPUT:
Script Name= IP_extract_logfile.sh
     29 9.67.116.98
     28 9.67.116.99
      7 0.0.0.0
      2 9.67.117.98
      2 9.67.101.1
      2 9.67.100.1
      2 9.37.65.139
      2 129.1.1.1
      2 127.0.0.1

comment

