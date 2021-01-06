export ZSH="/home/simon/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export APPS="${HOME}/Apps"
export GAMES="${HOME}/Games"
export SCRIPTS="${HOME}/.scripts"
export GHTOKEN="47a046d778926d048aa07072e63a6e7cc1e66cda"
export PATH="${PATH}:${APPS}/node/bin"
export PATH="${PATH}:${APPS}/code/bin"

export PATH="${PATH}:${SCRIPTS}"

export XDG_DATA_DIRS="${XDG_DATA_DIRS}:/var/lib/flatpak/exports/share:/home/simon/.local/share/flatpak/exports/share:/usr/share:/usr/local/share"

[ -f ".aliasrc" ] && source .aliasrc
[ -f ".funcsrc" ] && source .funcsrc

fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure
