#!/bin/bash
set -e

DOTFILES_DIR="$HOME/vim-notes/notes-dotfiles"

[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup
[ -d ~/.vim/UltiSnips ] && mv ~/.vim/UltiSnips ~/.vim/UltiSnips.backup

mkdir -p ~/.vim

ln -s "$DOTFILES_DIR/vimrc" ~/.vimrc
ln -s "$DOTFILES_DIR/UltiSnips" ~/.vim/UltiSnips

echo "Dotfiles instalados correctamente."
