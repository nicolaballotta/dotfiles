#!/usr/bin/env bash

REAL_PATH="`realpath .`"
source libs/echos.sh

###############################################################################
section "Screen"                                                                      #
###############################################################################

running "Require password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
ok

running "Save screenshots to Screenshot folder under Documents"
defaults write com.apple.screencapture location -string "${HOME}/Documents/Screenshots"
ok

running "Save screenshots in PNG format"
defaults write com.apple.screencapture type -string "png"
ok

running "Disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true
ok

running "Enable subpixel font rendering on non-Apple LCDs"
# Reference: https://github.com/kevinSuttle/macOS-Defaults/issues/17#issuecomment-266633501
defaults write NSGlobalDomain AppleFontSmoothing -int 1
ok

running "Enable HiDPI display modes (requires restart)"
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
ok

running "Set a custom wallpaper image"
osascript -e 'tell application "System Events" to tell every desktop to set picture to "'"$REAL_PATH"'/wallpapers/hax0r.jpg"'
ok