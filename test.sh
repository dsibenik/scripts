#!/bin/bash

temp=$(cmus-remote -Q | grep 'status')
echo $temp
echo "bananko1"
if [[ $(cmus-remote -Q | grep 'status') != "status playing"  ]];then
       	echo "bananko"
else
	echo "bananko2"
fi


