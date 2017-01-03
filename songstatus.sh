#!/bin/bash
# shell script that outputs current song title
if [[ $(playerctl status) == "Playing" ]]; then
	info=$(playerctl metadata title)
	echo "$info"
elif [[ $(cmus-remote -Q | grep 'status') == "status playing" ]]; then
	 artist=$(cmus-remote -Q | grep ' artist ' | cut -d ' ' -f3-)
     song=$(cmus-remote -Q | grep title | cut -d ' ' -f3-)
     echo "$artist - $song"
else 
	echo ""
fi
