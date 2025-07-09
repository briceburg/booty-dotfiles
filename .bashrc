#!/usr/bin/env bash
# gitbooty managed .bashrc

PATH="$HOME/bin:$PATH"
# skip configuration if non-interactive 
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\[\e[31m\]${?#0}\[\e(B\e[m\]\$ '
alias edit='msedit'
alias grep='grep --color=auto'
alias ls='eza'
alias pbcopy='xsel --clipboard --input'
alias pbpaste='xsel --clipboard --output'
export VISUAL=msedit

# proceed with fancy pants
eval "$(atuin init bash --disable-up-arrow)"
source /usr/share/nvm/init-nvm.sh

