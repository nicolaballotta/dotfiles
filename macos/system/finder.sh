#!/usr/bin/env bash

source libs/echos.sh

###############################################################################
section "Finder"                                                                      #
###############################################################################

running "Finder: allow quitting via ⌘ + Q; doing so will also hide desktop icons"
defaults write com.apple.finder QuitMenuItem -bool true
ok

running "Finder: disable window animations and Get Info animations"
defaults write com.apple.finder DisableAllAnimations -bool true
ok

running "Set home as the default location for new Finder windows"
# For other paths, use `PfLo` and `file:///full/path/here/`
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
ok

running "Show icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true
ok

running "Finder: show hidden files by default"
defaults write com.apple.finder AppleShowAllFiles -bool true
ok

running "Finder: show all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
ok

running "Finder: show status bar"
defaults write com.apple.finder ShowStatusBar -bool true
ok

running "Finder: show path bar"
defaults write com.apple.finder ShowPathbar -bool true
ok

running "Display full POSIX path as Finder window title"
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
ok

running "Keep folders on top when sorting by name"
defaults write com.apple.finder _FXSortFoldersFirst -bool true
ok

running "When performing a search, search the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
ok

running "Disable the warning when changing a file extension"
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
ok

running "Enable spring loading for directories"
defaults write NSGlobalDomain com.apple.springing.enabled -bool true
ok

running "Remove the spring loading delay for directories"
defaults write NSGlobalDomain com.apple.springing.delay -float 0
ok

running "Avoid creating .DS_Store files on network or USB volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true
ok

running "Disable disk image verification"
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
ok

running "Automatically open a new Finder window when a volume is mounted"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
ok

running "Use list view in all Finder windows by default"
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
ok

# Disable the warning before emptying the Trash
#defaults write com.apple.finder WarnOnEmptyTrash -bool false

running "Enable AirDrop over Ethernet"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true
ok

running "Show the ~/Library folder"
chflags nohidden ~/Library
ok

running "Show the /Volumes folder"
sudo chflags nohidden /Volumes
ok

# Expand the following File Info panes:
# “General”, “Open with”, and “Sharing & Permissions”
defaults write com.apple.finder FXInfoPanesExpanded -dict \
	General -bool true \
	OpenWith -bool true \
	Privileges -bool true