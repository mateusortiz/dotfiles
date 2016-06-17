#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- ZSH ----------------------------------------------------------------------
if which zsh &> /dev/null; then
	msg_ok "zsh"
else
	msg_run "zsh" "brew install zsh"
	brew install zsh
	msg_done "Done"
fi

# setting zsh default
chsh -s /bin/zsh


# ZSH configs
if [[ -d "$HOME/.zshrc" || -L "$HOME/.zshrc" ]]; then
	msg_ok "zshrc"
else
	msg_run "zshrc" "ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc"
	ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
	msg_done "Done"
fi

# oh my zsh
if [[ -d "$HOME/.oh-my-zsh" ]]; then
	msg_ok "oh-my-zsh"
else
	msg_run "oh-my-zsh" "curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	msg_done "Done"
fi

msg_done "DONE! now reload your Terminal =D"


