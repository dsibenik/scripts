#!/bin/bash
#by dsibenik

filepath="$1"
usrname="dsibenik"
hostname="rpisquared.ddns.net"
tempdir="tempdir"


echo "sending $filepath to $usrname@rpisquared"

#~/scripts/server/maknid.sh $filepath


SSHPASS="$2"
#ssh -o StrictHostKeyChecking=no
#sshpass -e ssh "-oBatchMode=no $usrname@$hostname" << !
sshpass -e ssh -oBatchMode=no $usrname@$hostname "
   cd http
   if [ -d "$(basename $filepath)" ]; then
   	#will enter if directory doesnt exist
   	mv "$(basename $filepath)" tempdir
   fi"
#!

sshpass -e sftp -oBatchMode=no -b - $usrname@$hostname << !
   cd http
   mkdir $(basename $filepath)
   put -Pr $filepath
   bye
!

sshpass -e ssh -oBatchMode=no $usrname@$hostname "
   cd http
   if [ -d "$tempdir" ]; then
   	#will enter if directory doesnt exist
   	mv $tempdir/* $(basename $filepath)
	rmdir $tempdir
   fi"


