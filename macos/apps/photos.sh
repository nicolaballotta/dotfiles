#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "Photos"                                                                      #
###############################################################################

running "Prevent Photos from opening automatically when devices are plugged in"
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true
ok