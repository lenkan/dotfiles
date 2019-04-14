#!/bin/bash
IMAGE=/tmp/i3lock.png

import -window root -silent png:- | convert png:- -blur 0x5 $IMAGE
i3lock -i $IMAGE
rm $IMAGE