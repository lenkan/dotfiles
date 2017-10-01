# If you come from bash you might have to change your $PATH.# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/emil/.oh-my-zsh

source "$HOME/.zplug/init.zsh"
source "$HOME/zplug.zsh"

if ! zplug check; then
    zplug install
fi

zplug load

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
