#!/usr/bin/env bash
 
lang=$(setxkbmap -query | grep layout | awk -F: '{print $2}' | xargs)
 
if [[ $lang == "hr" ]]; then
	setxkbmap en_US
else
	setxkbmap hr
fi
