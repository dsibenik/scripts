##!/bin/bash
# toggles your monitor state


# Set these to your outputs
INT=DP-1
EXT=DVI-D-0

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

if [[ $INT_STATE = "on" && $EXT_STATE = "off" ]]; then
    # Switch to mirror
    xrandr --output $EXT --auto
    xrandr --output $EXT --right-of $INT
elif [[ $INT_STATE = "on" && $EXT_STATE = "on" ]]; then
    # Switch to external only
    xrandr --output $INT --off --output $EXT --auto
else 
    # Switch to internal only
    xrandr --output $INT --auto --output $EXT --off
fi
