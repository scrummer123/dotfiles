export ZSH="/home/simon/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export APPS="${HOME}/Apps"

export PATH="${PATH}:${APPS}/node/bin"
export XDG_DATA_DIRS="${XDG_DATA_DIRS}:/var/lib/flatpak/exports/share:/home/simon/.local/share/flatpak/exports/share:/usr/share:/usr/local/share"

[ -f ".aliasrc" ] && source .aliasrc
[ -f ".funcsrc" ] && source .funcsrc

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
