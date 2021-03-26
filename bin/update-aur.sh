#!/bin/sh
set -e

for PKG_DIR in $(find ~/aur -maxdepth 1 -mindepth 1 -type d)
do
  cd $PKG_DIR 
  git pull && makepkg -sic
  cd ../
done
