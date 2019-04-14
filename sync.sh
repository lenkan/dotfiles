#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

ln -svf $(pwd)/.zshrc ~/.zshrc
ln -svf $(pwd)/.gitconfig ~/.gitconfig
ln -svf $(pwd)/.xinitrc ~/.xinitrc
ln -svf $(pwd)/.zplug/plugins.zsh ~/.zplug/plugins.zsh

ln -svf $(pwd)/Pictures/wp/wallpaper.jpg ~/Pictures/wp/wallpaper.jpg

for filename in $DIR/bin/*; do
  ln -svf $filename ~/bin/$(basename $filename)
done

ln -svf $(pwd)/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
ln -svf $(pwd)/.config/Code/User/settings.json ~/.config/Code/User/settings.json
ln -svf $(pwd)/.config/Code/User/locale.json ~/.config/Code/User/locale.json

ln -svf $(pwd)/.config/i3/config ~/.config/i3/config

ln -svf $(pwd)/.config/termite/config ~/.config/termite/config

ln -svf $(pwd)/.config/pulse/default.pa ~/.config/pulse/default.pa

ln -svf $(pwd)/.config/polybar/config ~/.config/polybar/config
ln -svf $(pwd)/.config/polybar/bluetooth.sh ~/.config/polybar/bluetooth.sh
ln -svf $(pwd)/.config/polybar/dropbox.sh ~/.config/polybar/dropbox.sh
ln -svf $(pwd)/.config/polybar/launch.sh ~/.config/polybar/launch.sh