#!/bin/sh
source $HOME/.dotfiles/log.sh

# git
if which git &>/dev/null; then
	msg_ok "git"
else
	msg_run "git" "brew install git"
	brew install git
	msg_done "Done"
fi

# -- Config ----------------------------------------------------------------------
if [[ -L "$HOME/.gitconfig" ]]; then
	msg_ok "gitconfig"
else
	msg_run "gitconfig" "ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig"
	ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
fi

# -- Global ignore ----------------------------------------------------------------------
if [[ -L "$HOME/.gitignore_global" ]]; then
	msg_ok "gitignore_global"
else
	msg_run "gitignore" "ln -s $HOME/.dotfiles.git/.gitignore_global $HOME/.gitignore_global"
	ln -s $HOME/.dotfiles.git/.gitignore_global $HOME/.gitignore_global
fi