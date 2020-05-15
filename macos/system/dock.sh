#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "Dock, Dashboard, and hot corners"                                            #
###############################################################################

running "Enable highlight hover effect for the grid view of a stack (Dock)running"
defaults write com.apple.dock mouse-over-hilite-stack -bool true
ok

running "Set the icon size of Dock items to 36 pixels"
defaults write com.apple.dock tilesize -int 36
ok

running "Change minimize/maximize window effect"
defaults write com.apple.dock mineffect -string "scale"
ok

running "Minimize windows into their application’s icon"
defaults write com.apple.dock minimize-to-application -bool true
ok

running "Enable spring loading for all Dock items"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
ok

running "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true
ok

#running "Show only open applications in the Dock"
#defaults write com.apple.dock static-only -bool true

running "Don’t animate opening applications from the Dock"
defaults write com.apple.dock launchanim -bool false
ok

running "Speed up Mission Control animations"
defaults write com.apple.dock expose-animation-duration -float 0.1
ok

running "Don’t group windows by application in Mission Control"
defaults write com.apple.dock expose-group-by-app -bool false
ok

running "Disable Dashboard"
defaults write com.apple.dashboard mcx-disabled -bool false
ok

running "Don’t show Dashboard as a Space"
ok

running "Don’t automatically rearrange Spaces based on most recent use"
defaults write com.apple.dock mru-spaces -bool false
ok

running "Make Dock icons of hidden applications translucent"
defaults write com.apple.dock showhidden -bool true
ok

running "Show recent applications in Dock"
defaults write com.apple.dock show-recents -bool true
ok

running "Disable Hot corners"
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → Mission Control
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-bl-modifier -int 0
ok

running "Add Applications to Dock"
defaults write com.apple.dock persistent-apps -array
dock "/System/Applications/Launchpad.app"
dock "/Applications/Google Chrome.app"
dock "/Applications/Spark.app"
dock "/System/Applications/Calendar.app"
dock "/System/Applications/Reminders.app"
dock "/System/Applications/Photos.app"
dock "/Applications/Slack.app"
dock "/Applications/Trello.app"
dock "/System/Applications/App Store.app"
dock "/System/Applications/System Preferences.app"
dock "/Applications/iTerm.app"
dock "/Applications/Skype.app"
dock "/Applications/WhatsApp.app"
dock "/Applications/Evernote.app"
dock "/Applications/Flock.app"
dock "/Applications/Visual Studio Code.app"
dock "/Applications/PyCharm.app"
dock "/Applications/Boostnote.app"
dock "/Applications/Keynote.app"
killall Dock
ok