#!/usr/bin/env bash

source libs/echos.sh

section "Oh-my-zsh"

running "Installing Oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" &> /dev/null
ok

running "Installing P10k theme"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/powerlevel10k &> /dev/null  
ok

running "Installing Oh-my-zsh plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions &> /dev/null
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting &> /dev/null
ok

section "Vim"

running "Innstalling Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &> /dev/null
ok

running "Installing Vundle plugins from .vimrc"
vim -E -s -u .vimrc -c 'PluginInstall' -c 'qa!'
ok

section "Linking dots"

running "Linking .vimrc"
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ok

running "Linking .zshrc"
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ok

running "Linking .p10k.zsh"
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ok

running "Linking .aliases"
ln -s ~/.dotfiles/.aliases ~/.aliases
ok

running "Linking .gitconfig"
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
ok