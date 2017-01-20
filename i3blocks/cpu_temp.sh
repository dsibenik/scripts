#!/bin/bash
#script that gets CPU temperature string

var=$(sudo cat /sys/devices/pci0000\:00/0000\:00\:18.3/hwmon/hwmon0/temp1_input)
var=$(echo $(( $var * 1 / 10 )) | sed 's/..$/.&/' )
var+=' °C'
echo $var
