# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/lenkan/.oh-my-zsh

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh
source $HOME/.zplug/init.zsh
source $HOME/.zplug/plugins.zsh

if ! zplug check; then
    zplug install
fi

plugins=(git docker)