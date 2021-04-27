# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/home/lenkan/.local/bin
export PATH="$DENO_INSTALL/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export DENO_INSTALL="/home/lenkan/.deno"
export GPG_TTY=$(tty)
export BROWSER=google-chrome-stable
export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

fpath+=$HOME/.completions
fpath+=$HOME/.zsh/pure

source /usr/share/nvm/init-nvm.sh

alias ll="ls -la --color"
alias ..="cd .."
alias gcm="git checkout master"
alias reboot="sudo systemctl reboot"
alias poweroff="sudo systemctl poweroff"
alias logout="i3-msg exit"
alias timestamp="date +%s%3N"
alias bg="feh --no-fehbg --bg-fill '/home/lenkan/Pictures/wp/wallpaper.jpg'"
alias comp="docker-compose"
alias bt="bluetoothctl"
alias tf="terraform"
alias kk="kubectl -n sermo"
alias sermo="docker-compose -f docker-compose.yaml -f docker-compose.override.yaml -f docker-compose.linux.yaml"
alias sermo2="docker-compose -f docker-compose.yaml -f docker-compose.linux.yaml -f docker-compose.replicas.yaml"

set -o vi
unsetopt correct_all
setopt correct
setopt appendhistory
zstyle ':completion:*' menu select

eval $(thefuck --alias)

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

autoload -U promptinit; promptinit
prompt pure
