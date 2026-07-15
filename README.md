# notes-dotfiles

My personal Vim configuration for taking LaTeX notes, inspired by [Gilles Castel's](https://castel.dev/post/lecture-notes-1/) note-taking workflow. Includes:

- `vimrc` — Vim configuration with [vimtex](https://github.com/lervag/vimtex) (LaTeX compilation and live preview) and [UltiSnips](https://github.com/SirVer/ultisnips) (snippets for writing LaTeX fast).
- `UltiSnips/` — my custom LaTeX snippets (math mode, fractions, etc.).
- `install.sh` — script that creates the symlinks needed to activate this configuration on a new machine.

## Prerequisites

Before installing, make sure you have:

```bash
sudo apt update
sudo apt install vim-gtk3 texlive-full zathura zathura-pdf-poppler python3-pip
```

You also need [vim-plug](https://github.com/junegunn/vim-plug) installed:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## Installing on a new machine

1. Clone this repo:
```bash
   git clone git@github.com:th-martinod/notes-dotfiles.git ~/vim-notes/notes-dotfiles
```

2. Make the installer executable and run it:
```bash
   chmod +x ~/vim-notes/notes-dotfiles/install.sh
   ~/vim-notes/notes-dotfiles/install.sh
```

   This creates symlinks from `~/.vimrc` and `~/.vim/UltiSnips` to the files in this repo. If you already had a previous configuration, the script automatically backs it up as `.vimrc.backup` and `UltiSnips.backup`.

3. Open Vim and install the plugins:
```bash
   vim +PlugInstall
```

4. Verify everything works by opening a `.tex` file, typing `mk`, and pressing `Tab` — it should expand to `$ $` (inline math mode).

## Updating the configuration

Since the files are symlinks, any change you make to `~/.vimrc` or your snippets is reflected directly in this repo. Just push it:

```bash
cd ~/vim-notes/notes-dotfiles
git add .
git commit -m "Description of the change"
git push
```
