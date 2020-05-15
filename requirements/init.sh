#!/usr/bin/env bash

source libs/echos.sh
source libs/requires.sh

while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

section "Installing basic requiremnts"

if ! type xcode-select > /dev/null; then
    running "Installing Xcode tools"
    xcode-select --install
else
    running "Xcode tools already installed"
    ok
fi

if ! type brew &> /dev/null; then
    running "Installing Homebrew"
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ok
else 
	running "Homebrew is already installed"
    ok
fi

if ! type mas &> /dev/null; then
    running "Installing MAS"
    require_brew mas
    ok
else
    running "MAS is already installed"
    ok
fi