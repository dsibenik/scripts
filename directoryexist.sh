#!/bin/bash
#by dsibenik  
  dirpostoji=false
  filename="$1"
   if [ -d "$(basename $filename)" ]; then
   #will enter if directory doesnt exist
   dirpostoji=true
   fi
  echo $dirpostoji
