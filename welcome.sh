#!/bin/bash

# get user's name from entry in GECOS information

PERSON=`getent passwd | grep $USER | cut -d: -f 5 | cut -d, -f 1`

# silently get public ipv4 and ipv6 addresses from ip.me

IPV4=`curl -s -4 ip.me`
IPV6=`curl -s -6 ip.me`

# display welcome message with preferred formatting. edit tput values to change color schemes

echo `tput bold``tput setaf 8`"========================================================================"
echo `tput setaf 15`"This server's public IPv4 address is:" `tput bold``tput setaf 45`$IPV4
echo `tput setaf 15`"This server's public IPv6 address is:" `tput bold``tput setaf 45`$IPV6
echo `tput bold``tput setaf 8`"========================================================================"
neofetch
echo `tput bold``tput setaf 8`"========================================================================"
echo "welcome," $PERSON"!!"| figlet-toilet -f future -F border -F metal

