=!/bin/sh
source $HOME/.dotfiles/log.sh

# Node.JS ----------------------------------------------------------------------
if which node &>/dev/null ; then
	msg_ok "node"
else
	msg_run "node" "brew install node"
	brew install node
fi