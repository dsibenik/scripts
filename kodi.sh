##!/bin/bash
# toggles your monitor state


# Set these to your outputs
INT=DVI-I-1
EXT=HDMI-0

XRANDR=$(xrandr)
if [[ -z $XRANDR ]]; then
    echo "Error; is \`xrandr' installed?"
    exit 1
fi

get_state() {
    local output=$1
    local state=$(echo "$XRANDR" | grep $output)

    if [[ $state =~ [0-9]+x[0-9]+ ]]; then
        echo on
    else
        echo off
    fi
}

INT_STATE=$(get_state $INT)
EXT_STATE=$(get_state $EXT)
INT2=$INT_STATE
EXT2=$EXT_STATE
if [[ $INT_STATE = "on" ]]; then
	INT2=auto
fi
if [[ $EXT_STATE = "on" ]]; then
	EXT2=auto
fi

xrandr --output $EXT --auto --output $INT --off
kodi
xrandr --output $EXT --$EXT2 --output $INT --$INT2
