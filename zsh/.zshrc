# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$HOME/bin:$HOME/code/go.tip/bin:/usr/local/bin:$HOME/.cargo/bin:$PATH
export PATH=$HOME/.deno/bin:$PATH
export VISUAL=vi
export EDITOR="$VISUAL"
export GOPATH=$HOME/code/go

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

plugins=(git docker kubectl)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

set -o vi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/lenkan/.sdkman"
[[ -s "/home/lenkan/.sdkman/bin/sdkman-init.sh" ]] && source "/home/lenkan/.sdkman/bin/sdkman-init.sh"
