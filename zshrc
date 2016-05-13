# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

export TERM="screen-256color"

alias ll='ls -l'
alias tmux="tmux -2"
alias ct="vim ~/.tmux.conf"
alias jn="jupyter notebook"
