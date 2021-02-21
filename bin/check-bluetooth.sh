#!/bin/bash
icon_enabled=""
icon_disabled=""
status=`bluetoothctl list`
 
if [[ $(bluetoothctl list) ]]; then
	echo "$icon_enabled"
else
	echo "$icon_disabled"
fi
