export ZSH=~/.oh-my-zsh

ZSH_THEME="bira"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

KEYTIMEOUT=1

alias vi=nvim
alias vim=nvim
VISUAL=nvim
EDITOR="${VISUAL}"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export GPG_TTY=$(tty)
export PATH=$HOME/bin:$PATH

gs() { git switch $(git branch | fzf | tr -d '*[:space:]') }
