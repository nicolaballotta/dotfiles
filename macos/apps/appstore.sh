#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "Mac App Store"                                                               #
###############################################################################

running "Enable Debug Menu in the Mac App Store"
defaults write com.apple.appstore ShowDebugMenu -bool true
ok

running "Enable the automatic update check"
defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true
ok

running "Check for software updates daily, not just once per week"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
ok

running "Download newly available updates in background"
defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1
ok

running "Install System data files & security updates"
defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1
ok

running "Turn on app auto-update"
defaults write com.apple.commerce AutoUpdate -bool true
ok

running "Allow the App Store to reboot machine on macOS updates"
defaults write com.apple.commerce AutoUpdateRestartRequired -bool true
ok