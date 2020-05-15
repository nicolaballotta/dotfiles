SHELL := /bin/bash -euo pipefail

macos:
	@macos/init.sh

requirements:
	@requirements/init.sh

software:
	@sudo -v
	@while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
	@brew bundle

dots:
	@dots/dots.sh

all: requirements software macos dots

software_list:
	@brew bundle dump --force

software_cleanup:
	@brew bundle cleanup --force

help:
	@echo 'Makefile for dotfiles                                                     '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make requirements                        install requirements          '
	@echo '   make software                            install software from Brewfile'
	@echo '   make software_list                       update Brewfile               '
	@echo '   make software_cleanup                    cleanup unneeded software     '
	@echo '   make macos                               configure MacOS               '
	@echo '   make all                                 install and configure all     '


%:
	@:

.DEFAULT_GOAL := help
.PHONY: help macos requirements software dots software_list software_cleanup all