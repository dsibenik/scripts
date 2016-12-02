#!/bin/bash
# default programs script

echo $0
fullfile=$1
echo $1
# for path extraction
filename="${fullfile##*/}"

# read extension
extension="${filename##*.}"

# open with default programs
case $extension in
'pdf')
	exec chromium `echo $fullfile | sed 's/\s\+/\\ /g'`
	;;
*)
	vim $fullfile
	;;
esac
