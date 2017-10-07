#!/usr/bin/env bash
 
lang=$(setxkbmap -query | grep layout | awk -F: '{print $2}' | xargs)
 
#if [[ $BLOCK_BUTTON == "1" ]]; then
    if [[ $lang == "hr" ]]; then
        if [[ $BLOCK_BUTTON == "1" ]]; then
            setxkbmap en_US
            echo "EN "
        else
            echo "HR "
        fi
    else
        if [[ $BLOCK_BUTTON == "1" ]]; then
            setxkbmap hr
            echo "HR "
        else
            echo "EN "
            fi
    fi
#fi
