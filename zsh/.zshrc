# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
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

plugins=(git docker)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /home/lenkan/code/new10/node_modules/tabtab/.completions/serverless.zsh ]] && . /home/lenkan/code/new10/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /home/lenkan/code/new10/node_modules/tabtab/.completions/sls.zsh ]] && . /home/lenkan/code/new10/node_modules/tabtab/.completions/sls.zsh

set -o vi
