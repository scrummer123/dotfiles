export ZSH="/home/simon/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export APPS="${HOME}/Apps"
export GAMES="${HOME}/Games"
export SCRIPTS="${HOME}/.scripts"

export PATH="${PATH}:${APPS}/node/bin"
export PATH="${PATH}:${HOME}/.local/bin"
export PATH="${PATH}:${APPS}/.local/npm-packages/bin"

export PATH="${PATH}:${APPS}/code/bin"
export PATH="${PATH}:${SCRIPTS}/bin"

export XDG_DATA_DIRS="${XDG_DATA_DIRS}:/var/lib/flatpak/exports/share:/home/simon/.local/share/flatpak/exports/share:/usr/share:/usr/local/share"

[ -f "${HOME}/.aliasrc" ] && source ~/.aliasrc
[ -f "${HOME}/.funcsrc" ] && source ~/.funcsrc

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

if [[ -z $DISPLAY ]]; then
  startxfce4
fi
