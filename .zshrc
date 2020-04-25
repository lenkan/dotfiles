# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/home/lenkan/.dotnet/tools
export PATH=$PATH:/opt/dotnet
export DOTNET_ROOT=/opt/dotnet
export MSBuildSDKsPath=$DOTNET_ROOT/sdk/$(dotnet --version)/Sdks
export ZSH=$HOME/.oh-my-zsh
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export DENO_INSTALL="/home/lenkan/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

ZSH_THEME="robbyrussell"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="false"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git docker)
source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh

alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias logout="i3-msg exit"
alias timestamp="date +%s%3N"
alias comp="docker-compose"
alias bt="bluetoothctl"
alias tf="terraform"

set -o vi
unsetopt correct_all
setopt correct

eval $(thefuck --alias)

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#   exec tmux
# fi
