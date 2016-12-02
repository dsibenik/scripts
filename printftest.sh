#!/bin/bash


echo "hello"
echo

bananko=0
while true; do
bananko=$((bananko+1))
		printf "$bananko"
	#	echo $bananko
		echo
        if [ $bananko = 10 ]; then
                break

	fi
done

echo
echo "goodbye"
echo

