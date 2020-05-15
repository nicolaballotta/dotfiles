#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "Activity Monitor"                                                            #
###############################################################################

running "Show the main window when launching Activity Monitor"
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true
ok

running "Visualize CPU usage in the Activity Monitor Dock icon"
defaults write com.apple.ActivityMonitor IconType -int 5
ok

running "Show all processes in Activity Monitor"
defaults write com.apple.ActivityMonitor ShowCategory -int 0
ok

running "Sort Activity Monitor results by CPU usage"
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0
ok