#!/bin/dash
# Copyright (C) 2014 Alexander Keller <github@nycroth.com>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

#------------------------------------------------------------------------

interfaces=$(echo /sys/class/net/w*)

	l=${#interfaces}

	if [ $l -lt 1 ]; then
	    exit
		fi
		interfaces=${interfaces#*net/}
		INTERFACE=${interfaces%% *}
		INTERFACE2=${interfaces##*net/}


#------------------------------------------------------------------------

# As per #36 -- It is transparent: e.g. if the machine has no battery or wireless
# connection (think desktop), the corresponding block should not be displayed.
#------------------------------------------------------------------------
		color_bad="#EC819E"
		color_medicore="#FFA000"
		color_decent="#FFFF00"
		color_good="#00FF00"

			tmp=$(iw dev $INTERFACE link)
		l=${#tmp}
			if [ $l -lt 20 ]; then
				    tmp=$(iw dev $INTERFACE2 link)
		    INTERFACE=$INTERFACE2
				fi
					tmp=${tmp#*SSID: }
						NETWORK="${tmp%%
						*}"
							
							out=$(cat /proc/net/wireless)

		tmp=${out##*${INTERFACE}: }
			tmp=${tmp%%.*}
				tmp=${tmp##* }
				if [ "$(cat /sys/class/net/$INTERFACE/operstate)" = 'down' ]; then
				        echo "(down)"
						        echo "(down)"
									QUALITY=0
									else
									        
										tmp=${out##*${INTERFACE}: }
											tmp=${tmp%%.*}
												tmp=${tmp##* }
													QUALITY=$((tmp*100/70))
		echo "$QUALITY% ($NETWORK)"
		        echo "$QUALITY% ($NETWORK)"	
				fi
					#------------------------------------------------------------------------
					# color
					if [ $QUALITY -ge 80 ]; then
						     echo $color_good
							 	elif [ $QUALITY -ge 60 ]; then
									     echo $color_decent
										 	elif [ $QUALITY -ge 40 ]; then
												    echo $color_medicore
														else
															    echo $color_bad
																	fi


