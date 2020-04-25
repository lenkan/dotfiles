#!/bin/sh
# rootdir = $(realpath $1)

for D in `find $1 -maxdepth 1 -mindepth 1 -type d -printf '%P\n'`
do
  cd $(realpath $1)/$D 
  git pull
  makepkg -s
  cd ../
done
