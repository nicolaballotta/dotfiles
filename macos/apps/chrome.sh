#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "Google Chrome"                                       #
###############################################################################

running "Disable the all too sensitive backswipe on trackpads"
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
ok

running "Disable the all too sensitive backswipe on Magic Mouse"
defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
ok

running "Use the system-native print preview dialog"
defaults write com.google.Chrome DisablePrintPreview -bool true
ok

running "Expand the print dialog by default"
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
ok