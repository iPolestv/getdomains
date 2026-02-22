#!/bin/sh
SP=./source
DP=./destination

IP_TXT=myip_tp-link.txt
IP_LST=myip_tp-link.lst

awk 'NF && !/\[|\]/ && !/#/ {print $1}' $SP/$IP_TXT > $DP/$IP_LST

echo "\n OK \n"