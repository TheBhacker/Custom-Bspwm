#!/bin/sh
 
IFACE=$(/usr/sbin/ifconfig | grep docker0 | awk '{print $1}' | tr -d ':')
 
if [ "$IFACE" = "docker0" ]; then
    echo "%{F#1bbfff} %{F#ffffff}$(/usr/sbin/ifconfig docker0 | grep "inet " | awk '{print $2}')%{u-}"
else
    echo "%{F#1bbfff} %{u-} Disconnected"
fi
