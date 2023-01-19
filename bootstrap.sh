#!/bin/bash

dotfiles_dir=$(cd "$(dirname "$0")"; pwd)

rm -rf "${HOME}/.zshrc"
ln -s "${dotfiles_dir}/zshrc" "${HOME}/.zshrc"
rm -rf "${HOME}/.tmux.conf"
ln -s "${dotfiles_dir}/tmux.conf" "${HOME}/.tmux.conf"
rm -rf "${HOME}/.vim"
ln -s "${dotfiles_dir}/vim" "${HOME}/.vim"
rm -rf "${HOME}/.vimrc"
ln -s "${dotfiles_dir}/vimrc" "${HOME}/.vimrc"
rm -rf "${HOME}/.ideavimrc"
ln -s "${dotfiles_dir}/ideavimrc" "${HOME}/.ideavimrc"
vim +PlugInstall +PlugClean! +qall
