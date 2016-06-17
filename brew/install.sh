#!/bin/sh
source $HOME/.dotfiles/log.sh

# homebrew
if which brew &> /dev/null; then
	msg_ok "homebrew"
else
	msg_run "Homebrew" "ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)
	msg_done "Done"
fi

# homebrew node
if which node &> /dev/null; then
	msg_ok "node"
else
	msg_run "Node" "brew install node"
	brew install node
	msg_done "Done"
fi

# phantomjs
if which phantomjs &> /dev/null; then
	msg_ok "phantomjs"
else
	msg_run "Phantomjs" "brew install phantomjs"
	brew install phantomjs
	msg_done "Done"
fi