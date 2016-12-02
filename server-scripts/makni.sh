#!/bin/bash
#by dsibenik


#filename is filepath
filename="$1"
usrname="dsibenik"
hostname="rpisquared.ddns.net"
echo "removing $filename"

SSHPASS="$2"
sshpass -e ssh -o StrictHostKeyChecking=no $usrname@$hostname << !
   cd http
   cd files
#  rm $(basename $filename)
   rm $filename
   exit
!

