#!/bin/sh
echo "\n Start compile domains.lst\n"
./domains.sh
echo "\n End compile domains.lst\n"
echo "\n Start compile ip.lst\n"
./ip.sh
echo "\n End compile ip.lst\n"
echo "\n Start compile domains_tp-link.lst\n"
./domains_tp-link.sh
echo "\n End compile domains_tp-link.lst\n"
echo "\n Start compile ip_tp-link.lst\n"
./ip_tp-link.sh
echo "\n End compile ip_tp-link.lst\n"