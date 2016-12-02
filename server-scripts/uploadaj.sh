#!/bin/bash
#by dsibenik

filepath="$1"
usrname="dsibenik"
hostname="rpisquared.ddns.net"
echo "sending $filepath to $usrname@rpisquared"

SSHPASS="$2"
sshpass -e sftp -oBatchMode=no -b - $usrname@$hostname << !
   cd http
   cd files
   put -P $filepath
   bye
!

