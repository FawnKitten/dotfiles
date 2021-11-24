#!/bin/bash

dotfiles_dir=$(cd "$(dirname "$0")"; pwd)

rm -rf "${dotfiles_dir}/vim/plugged"

rm -rf "${HOME}/.zshrc"
rm -rf "${HOME}/.tmux.conf"
rm -rf "${HOME}/.vim"
rm -rf "${HOME}/.vimrc"
