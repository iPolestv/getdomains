#!/bin/sh
SP=./source
DP=./destination

DOMAINS=https://raw.githubusercontent.com/itdoginfo/allow-domains/refs/heads/main/Categories/geoblock.lst
curl -f $DOMAINS --output $SP/geoblock.txt
DOMAINS_META=https://raw.githubusercontent.com/itdoginfo/allow-domains/refs/heads/main/Services/meta.lst
curl -f $DOMAINS_META --output $SP/meta.txt
DOMAINS_TELEGRAM=https://raw.githubusercontent.com/itdoginfo/allow-domains/refs/heads/main/Services/telegram.lst
curl -f $DOMAINS_TELEGRAM --output $SP/telegram.txt
DOMAINS_TIKTOK=https://raw.githubusercontent.com/itdoginfo/allow-domains/refs/heads/main/Services/tiktok.lst
curl -f $DOMAINS_TIKTOK --output $SP/tiktok.txt
DOMAINS_YOUTUBE=https://raw.githubusercontent.com/itdoginfo/allow-domains/refs/heads/main/Services/youtube.lst
curl -f $DOMAINS_YOUTUBE --output $SP/youtube.txt


#awk 'NF && !/\[|\]/ && !/#/ {print "nftset=/" $1 "/4#inet#fw4#vpn_domains"}' $SP/mydomains_tp-link.txt $SP/geoblock.txt $SP/meta.txt $SP/tiktok.txt $SP/telegram.txt $SP/hosts-google.txt $SP/youtube.txt  >$SP/domains_tp-link.lst
awk 'NF && !/\[|\]/ && !/#/ {print "nftset=/" $1 "/4#inet#fw4#vpn_domains"}' $SP/mydomains_tp-link.txt $SP/geoblock.txt $SP/meta.txt $SP/tiktok.txt $SP/telegram.txt $SP/hosts-google.txt $SP/youtube.txt  >$DP/domains_tp-link.lst 

echo "\n OK \n"