#!/bin/sh
git clone https://github.com/seebi/dircolors-solarized.git
mkdir -p ~/.config/nvim
ln -sf ~/.dotfiles/.inputrc ~/.inputrc
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -sf ~/.dotfiles/.vscode/settings.json ~/.config/Code/User/settings.json
