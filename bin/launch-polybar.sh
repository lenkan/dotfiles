#!/usr/bin/env sh
# Terminate already running bar instances
killall polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bars
MONITOR=eDP1 polybar -r example &

EXTERNAL_MONITOR=$(xrandr | awk '/\ connected/ && /[[:digit:]]x[[:digit:]].*+/{print $1}' | tail -n 1)
if [ $EXTERNAL_MONITOR != 'eDP1' ]
then
  MONITOR=$EXTERNAL_MONITOR polybar -r example &
fi