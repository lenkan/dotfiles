#!/bin/bash

# Bluetooth
function check_bluetooth() {
	if [[ $(bluetoothctl list) ]]; then
		echo ""
	else
		echo ""
	fi
}

function check_remaining_battery() {
	energy_now=$(cat /sys/class/power_supply/BAT0/energy_now)
	power_now=$(cat /sys/class/power_supply/BAT0/power_now)

	if [ $power_now = 0 ]; then
		echo "00:00"
	else
		hours_remaining=$(($energy_now/$power_now))
		minutes_remaining=$((($energy_now*100/$power_now - ($hours_remaining * 100))*60/100))

		echo "$(printf "%02d" $hours_remaining):$(printf "%02d" $minutes_remaining)"
	fi
}

function check_battery_capacity() {
	capacity=$(cat /sys/class/power_supply/BAT0/capacity)
	charging=$(cat /sys/class/power_supply/AC/online)
	icon=""

	if (($capacity < 80)); then
		icon=""
	elif (($capacity < 60)); then
		icon=""
	elif (($capacity < 40)); then
		icon=""
	elif (($capacity < 20)); then
		icon=""
	fi

	if [ $charging = 1 ]; then
		echo " $icon  $capacity%"
	else
		echo "$icon  $capacity% ($(check_remaining_battery))"
	fi
}

function check_temperature() {
	temp_raw=$(cat /sys/class/thermal/thermal_zone3/temp)
	temp=$(($temp_raw/1000))
	icon=""

	if (($temp < 30)); then
		icon=""
	elif (($temp < 40)); then
		icon=""
	elif (($temp < 50)); then
		icon=""
	elif (($temp < 60)); then
		icon=""
	fi;

	echo "$icon $temp°"
}


# Print
while true
do
	bt=$(check_bluetooth)
	battery=$(check_battery_capacity)
	time=$(date +"%Y-%m-%d %k:%M")
	temp=$(check_temperature)

	echo "$battery  $temp  $time  $bt"
	sleep 1
done
