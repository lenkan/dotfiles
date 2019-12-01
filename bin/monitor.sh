#!/bin/bash

external_monitor=$(xrandr | awk '/ connected .*+/{print $1}' | tail -n 1)
if [[ $external_monitor == 'eDP1' ]]
then
  exit 0
fi

if [[ $1 == 'off' ]]
then
  xrandr --output $external_monitor --off
  exit 0
fi

if [[ $1 == 'above' ]]
then
  xrandr --output $external_monitor --preferred --above eDP1
  exit 0
fi

if [[ $1 == 'below' ]]
then
  xrandr --output $external_monitor --preferred --below eDP1
  exit 0
fi

if [[ $1 == 'same' ]]
then
  xrandr --output $external_monitor --preferred --same-as eDP1
  exit 0
fi

if [[ $1 == 'mirror' ]]
then
  xrandr --output $external_monitor --mode 1920x1080 --same-as eDP1
  exit 0
fi
