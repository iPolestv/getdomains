#!/bin/sh
SP=./source
DP=./destination
IP_TXT=myip.txt
IP_LST=myip.lst

awk 'NF && !/\[|\]/ && !/#/ {print $1}' $SP/$IP_TXT > $DP/$IP_LST

echo "\n OK \n"