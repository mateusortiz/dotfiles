#!/bin/sh

#
set -e

# copied of log.sh
function msg {
	echo  "\033[0;37m$1\033[0m";
}

function msg_ok {
	echo  "➜\033[1;32m $1 ✔\033[0m";
}

function msg_run {
	echo  "➜\033[1;35m $1 $ $2\033[0m";
}


# -- Homebrew ----------------------------------------------------------------------
if which brew &>/dev/null; then
	msg_ok "homebrew"
else
	msg_run "homebrew" "ruby -e '$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)'"
	ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
fi

# -- Git ----------------------------------------------------------------------
if which git &>/dev/null; then
	msg_ok "git"
else
	msg_run "git" "brew install git"
	brew install git
fi

# -- Dotfiles ----------------------------------------------------------------------
if [[ -d "$HOME/.dotfiles" ]]; then
	msg_ok "dotfiles"
else
	msg_run "dotfiles" "git clone https://github.com/mateusortiz/dotfiles.git $HOME/.dotfiles"
	git clone https://github.com/mateusortiz/dotfiles.git $HOME/.dotfiles
fi

# -- Installers
cd "$HOME/.dotfiles/$(dirname $)"/..
find . -name install.sh | while read installer ; do sh -c "${installer}" ; done