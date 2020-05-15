#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "Time Machine"                                                                #
###############################################################################

running "Prevent Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true
ok

running "Disable local Time Machine backups"
hash tmutil &> /dev/null && sudo tmutil disable local
ok