#!/bin/bash
#by dsibenik

filename="$1"
usrname="dsibenik"
hostname="rpisquared.ddns.net"
echo "removing $filename"

SSHPASS="$2"
sshpass -e ssh -o StrictHostKeyChecking=no $usrname@$hostname << !
   cd http
   rm -r $filename
   exit
!

