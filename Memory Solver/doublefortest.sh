#!/bin/bash
boja[5]=7
boja[9]=7
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
do
	for ((j = i+1; j<= 24; j++))
			do
			echo $i $j
if [ "${boja[$i]}" == "${boja[$j]}" ]; then
					echo match 
						fi
							done
							done

