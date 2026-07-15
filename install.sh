#!/bin/bash
set -e

DOTFILES_DIR="$HOME/vim-notes/notes-dotfiles"

[ -f ~/.vimrc ] && mv ~/.vimrc ~/.vimrc.backup
[ -d ~/.vim/UltiSnips ] && mv ~/.vim/UltiSnips ~/.vim/UltiSnips.backup

mkdir -p ~/.vim
mkdir -p ~/.local/bin

ln -s "$DOTFILES_DIR/vimrc" ~/.vimrc
ln -s "$DOTFILES_DIR/UltiSnips" ~/.vim/UltiSnips
ln -sf "$DOTFILES_DIR/bin/newnote" ~/.local/bin/newnote

echo "Dotfiles instalados correctamente."
echo "Asegúrate de que ~/.local/bin esté en tu PATH (agrega 'export PATH=\"\$HOME/.local/bin:\$PATH\"' a tu .bashrc si no lo está)."
