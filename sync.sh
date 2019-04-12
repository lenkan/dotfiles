#!/bin/sh
ln -svf $(pwd)/.zshrc ~/.zshrc
ln -svf $(pwd)/.gitconfig ~/.gitconfig
ln -svf $(pwd)/.zplug/plugins.zsh ~/.zplug/plugins.zsh

ln -svf $(pwd)/Pictures/wp/wallpaper.jpg ~/Pictures/wp/wallpaper.jpg

ln -svf $(pwd)/.local/bin/battery-check.sh ~/.local/bin/battery-check.sh
ln -svf $(pwd)/.local/bin/hack.sh ~/.local/bin/hack.sh
ln -svf $(pwd)/.local/bin/lock.sh ~/.local/bin/lock.sh

ln -svf $(pwd)/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
ln -svf $(pwd)/.config/Code/User/settings.json ~/.config/Code/User/settings.json
ln -svf $(pwd)/.config/Code/User/locale.json ~/.config/Code/User/locale.json

ln -svf $(pwd)/.config/compton/config ~/.config/compton/config

ln -svf $(pwd)/.config/i3/config ~/.config/i3/config

ln -svf $(pwd)/.config/polybar/config ~/.config/polybar/config
ln -svf $(pwd)/.config/polybar/bluetooth.sh ~/.config/polybar/bluetooth.sh
ln -svf $(pwd)/.config/polybar/dropbox.sh ~/.config/polybar/dropbox.sh
ln -svf $(pwd)/.config/polybar/launch.sh ~/.config/polybar/launch.sh