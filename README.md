# Nicola's dotfiles
This repository includes all my custom dotfiles and some useful scripts to automate the installation and configuration of the software I use daily. I took a lot of inspirations here and there, so feel free to copy what you need to build your custom dotfiles. 

Atm there are still things that need to be automated. Here you can find a [TODO](https://github.com/nicolaballotta/dotfiles/blob/master/todo.md) of what is missing. 

## Installation

### Quick installation 

```bash
curl -LsS https://raw.github.com/nicolaballotta/dotifiles/master/install | bash
```

### Manual installation

```bash
git clone https://github.com/nicolaballotta/dotfiles.git ${HOME}/.dotfiles
cd ${HOME}/.dotfiles
make
```
You should be prompted with the following help:

```bash
Makefile for dotfiles

Usage:
   make requirements                        install requirements
   make software                            install software from Brewfile
   make software_list                       update Brewfile
   make software_cleanup                    cleanup unneeded software
   make macos                               configure MacOS
   make dots                                install dots
   make all                                 install and configure all
```


