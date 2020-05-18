#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "iTerm"                                                        #
###############################################################################

running "Don’t display the annoying prompt when quitting iTerm"
defaults write com.googlecode.iterm2 PromptOnQuit -bool false
ok

running "Install nightfly theme"
open ${HOME}/.dotfiles/macos/apps/iterm/nightfly.itermcolors
