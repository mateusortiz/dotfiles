#!/bin/sh
source $HOME/.dotfiles/log.sh

OSX=$(test "`uname`" == "Darwin" && echo "Dotfiles")

# Installers
sh brew/install.sh

sh git/install.sh

sh node/install.sh

sh osx/install.sh

sh python/install.sh

sh ruby/install.sh

sh sublime/install.sh

sh zsh/install.sh
