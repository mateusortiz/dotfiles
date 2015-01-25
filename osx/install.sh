=!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Mac os X ----------------------------------------------------------------------
if [[ -L "HOME/.osx" ]]; then
	msg_ok "osx"
else
	msg_run "osx" "ln -s $HOME/.dotfiles/osx/.osx $HOME/.osx"
	ln -s $HOME/.dotfiles/osx/.osx $HOME/.osx
fi