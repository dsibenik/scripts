#!/bin/bash
## 6x4
function red1(){
    xdotool click 1
    boje[$i]=$(getColor)
    ((i++))
    xdotool click 1
    
    xdotool mousemove_relative 118 0   
    xdotool click 1
    boje[$i]=$(getColor)
    ((i++))
    xdotool click 1
    
    xdotool mousemove_relative 118 0   
    xdotool click 1
    boje[$i]=$(getColor)
    ((i++))
    xdotool click 1
    
    xdotool mousemove_relative 118 0  
    xdotool click 1
    boje[$i]=$(getColor)
    ((i++))
    xdotool click 1
    
    xdotool mousemove_relative 118 0  
    xdotool click 1
    boje[$i]=$(getColor)
    ((i++))
    xdotool click 1
    
    xdotool mousemove_relative 118 0 
    xdotool click 1
    boje[$i]=$(getColor)
    ((i++))
    xdotool click 1
    
    xdotool mousemove_relative -- -590 0
   

}

function novired(){
xdotool mousemove_relative 0 142
}


function getColor(){
grabc &
sleep 0.4
xdotool click 1
}

function klikni(){
 xdotool mousemove 210 250
 broj=$1
 echo $broj
 
 if [ "$broj" -gt 6 ]; then
 novired
 broj=$((broj-6))
 fi
 
 if [ "$broj" -gt 6 ]; then
 novired
 broj=$((broj-6))
 fi
 
 if [ "$broj" -gt 6 ]; then
 broj=$((broj-6))
 novired
 fi
 
 broj=$((broj-1))
 broj=$((broj*118))
 
 xdotool mousemove_relative $broj 0
 xdotool click 1
}

i=1
xdotool mousemove 210 250


red1
novired
red1
novired
red1
novired
red1

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
do
    for ((j = i+1; j<= 24; j++))
      do
	    if [ "${boje[$i]}" == "${boje[$j]}" ]; then
        echo match
        klikni $i
        klikni $j
        fi
      done
done




