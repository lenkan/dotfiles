#!/bin/bash
status=$(systemctl is-active bluetooth.service)
if [ "$status" == "active" ]
then
    service bluetooth stop 
    DISPLAY=:0.0 /usr/bin/notify-send -u low -t 100 "Bluetooth stopped"
else
    service bluetooth start 
    DISPLAY=:0.0 /usr/bin/notify-send -u low -t 100 "Bluetooth started"
fi