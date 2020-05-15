#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "General UI/UX"                                                             #
###############################################################################

running "Set computer name"
sudo scutil --set ComputerName "zyon"
sudo scutil --set HostName "zyon"
sudo scutil --set LocalHostName "zyon"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "zyon"
ok

running "Setting standby and disk sleep to 24 hours"
sudo pmset -a disksleep 86400
sudo pmset -a standbydelay 86400
ok

running "Set highlight color to green"
defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"
ok

running "Set sidebar icon size to medium"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2
ok

running "Always show scrollbars"
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`
ok

running "Disable over-the-top focus ring animation"
defaults write NSGlobalDomain NSUseAnimatedFocusRing -bool false
ok

running "Increase window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001
ok

running "Expand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
ok

running "Expand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
ok

running "Save to disk (not to iCloud) by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
ok

running "Automatically quit printer app once the print jobs complete"
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true
ok

running "Disable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false
ok

running "Remove duplicates in the “Open With” menu"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user
ok

running "Display ASCII control characters using caret notation in standard text views"
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true
ok

running "Disable Resume system-wide"
defaults write com.apple.systempreferences NSQuitAlwaysKeepsWindows -bool false
ok

running "Disable automatic termination of inactive apps"
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true
ok

running "Disable the crash reporter"
defaults write com.apple.CrashReporter DialogType -string "none"
ok

running "Set Help Viewer windows to non-floating mode"
defaults write com.apple.helpviewer DevMode -bool true
ok

running  "Reveal IP address, hostname, OS version, etc. when clicking the clockv in the login window"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName
ok

running "Restart automatically if the computer freezes"
sudo systemsetup -setrestartfreeze on
ok

running "Never go into computer sleep mode"
sudo systemsetup -setcomputersleep Off > /dev/null
ok

running "Disable automatic capitalization"
defaults write NSGlobalDomain NSAutomaticCapitalizationEnabled -bool false
ok

running "Disable smart dashes"
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
ok

running "Disable automatic period substitution"
defaults write NSGlobalDomain NSAutomaticPeriodSubstitutionEnabled -bool false
ok

running "Disable smart quotes"
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
ok

running "Disable auto-correct"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
ok

###############################################################################
section "SSD-specific tweaks"                                                         #
###############################################################################

running "Disable hibernation (speeds up entering sleep mode)"
sudo pmset -a hibernatemode 0
ok

