#!/bin/sh
git clone https://github.com/seebi/dircolors-solarized.git
mkdir -p ~/.config/nvim
mkdir -p ~/.config/Code/User/
yum -y update && yum clean all
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
yum install -y neovim python3-neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sf ~/.dotfiles/.inputrc ~/.inputrc
ln -sf ~/.dotfiles/.bashrc ~/.bashrc
ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
ln -sf ~/.dotfiles/.vscode/keybindings.json ~/.config/Code/User/keybindings.json
ln -sf ~/.dotfiles/.vscode/settings.json ~/.config/Code/User/settings.json
