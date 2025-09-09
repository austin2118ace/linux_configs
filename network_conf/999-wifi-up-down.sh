#!/bin/bash
# https://blog.christophersmart.com/2021/11/02/automatically-enable-and-disable-wifi-based-on-ethernet-connection-with-networkmanager/
# https://github.com/NetworkManager/NetworkManager/blob/main/man/nmcli-examples.xml#L324
export LC_ALL=C

enable_disable_wifi ()
{
    result=$(nmcli dev | grep "ethernet" | grep -w "connected")
    if [ -n "$result" ]; then
        nmcli radio wifi off
    else
        nmcli radio wifi on
    fi
}

if [ "$2" = "up" ]; then
    enable_disable_wifi
fi

if [ "$2" = "down" ]; then
    enable_disable_wifi
fi