#!/usr/bin/env bash

MY_PATH="`dirname \"$0\"`"

source $MY_PATH/../libs/echos.sh
section "Init MacOS tweaking"
sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
running "Close system preferences"
osascript -e 'tell application "System Preferences" to quit'
ok

source $MY_PATH/system/general.sh
source $MY_PATH/system/finder.sh
source $MY_PATH/system/input.sh
source $MY_PATH/system/screen.sh
source $MY_PATH/system/dock.sh

source $MY_PATH/apps/activitymonitor.sh
source $MY_PATH/apps/appstore.sh
source $MY_PATH/apps/chrome.sh
source $MY_PATH/apps/iterm.sh
source $MY_PATH/apps/photos.sh
source $MY_PATH/apps/timemachine.sh

#add restart and reboot