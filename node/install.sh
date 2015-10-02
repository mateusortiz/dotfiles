#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Node.JS ----------------------------------------------------------------------
if which node &>/dev/null; then
	msg_ok "node"
else
	msg_run "node" "brew install node"
	brew install node
fi

# -- NVM ----------------------------------------------------------------------
if which nvm &>/dev/null; then
	msg_ok "nvm"
else
	msg_run "nvm" "curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.27.1/install.sh | bash"
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.27.1/install.sh | bash
fi