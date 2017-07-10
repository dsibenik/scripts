#!/bin/bash

date +'    %a %e.%b  '

if [[ $BLOCK_BUTTON == "1" ]]; then
	gsimplecal
fi
