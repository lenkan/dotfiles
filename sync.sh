#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

for filename in $DIR/bin/*; do
  ln -svf $filename ~/bin/$(basename $filename)
done

for filename in $DIR/.*; do
  if [ ! -d "$filename" ]; then
    ln -svf $filename ~/$(basename $filename)
  fi
done

ln -svf $(pwd)/Pictures/wp/wallpaper.jpg ~/Pictures/wp/wallpaper.jpg

ln -svf $(pwd)/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
ln -svf $(pwd)/.config/Code/User/settings.json ~/.config/Code/User/settings.json
ln -svf $(pwd)/.config/Code/User/locale.json ~/.config/Code/User/locale.json

ln -svf $(pwd)/.config/i3/config ~/.config/i3/config
ln -svf $(pwd)/.config/termite/config ~/.config/termite/config
ln -svf $(pwd)/.config/pulse/default.pa ~/.config/pulse/default.pa
ln -svf $(pwd)/.config/polybar/config ~/.config/polybar/config
