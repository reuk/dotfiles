
export ZSH=~/.oh-my-zsh

ZSH_THEME="gallois"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

KEYTIMEOUT=1

alias vi=nvim
alias vim=nvim
VISUAL=nvim
EDITOR="${VISUAL}"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH=$HOME/bin:$PATH
export PATH="/usr/local/opt/ruby@2.4/bin:$PATH"

export GPG_TTY=$(tty)
