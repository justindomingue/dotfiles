#!/bin/bash
# install.sh: symlinks dotfiles in the current directory to ~

declare -a files=(
  "git_template"
  "gitconfig"
  "gitignore"
  "local"
  "schemes"
  "tmux.conf"
  "vimrc"
  "zpreztorc"
  "zprofile"
  "zshrc"
)

# Colors
RED='\033[0;31m'
NC='\033[0m' # No Color

# Actions

for file in "${files[@]}"; do
  rm -rf ~/.$file
done


for file in "${files[@]}"; do
  if [ ! -e ~/.$file ]; then
    ln -s $(pwd)/$file ~/.$file
  else
    printf "ln: ${RED}$file:${NC} File exists.\n"
  fi
done
