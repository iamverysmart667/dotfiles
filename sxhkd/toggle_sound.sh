#!/bin/bash

CURRENT_STATE=`amixer get Master | egrep 'Playback.*?\[o' | egrep -o '\[o.+\]'`

if [[ `cat $CURRENT_STATE | grep "[on]"` ]]; then
    amixer set Master mute
else
    amixer set Master unmute
    #amixer set Speaker unmute
    #amixer set Headphone unmute
fi
