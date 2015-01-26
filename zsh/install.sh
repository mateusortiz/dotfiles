=!/bin/sh
source $HOME/.dotfiles/log.sh

# -- ZSH ----------------------------------------------------------------------
if which zsh &> /dev/null; then
	msg_ok "zsh"
else
	msg_run "zsh" "brew install zsh"
	brew install zsh
fi

# setting zsh default
chsh -s /bin/zsh


# -- ZSH configs ----------------------------------------------------------------------
if [[ -d "$HOME/.zshrc" || -L "$HOME/.zshrc" ]]; then
	msg_ok "zshrc"
else
	msg_run "zshrc" "ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc"
	ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
fi

# -- oh my zsh ----------------------------------------------------------------------
if [[ -d "$HOME/.oh-my-zsh" ]]; then
	msg_ok "oh-my-zsh"
else
	msg_run "oh-my-zsh" "git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh"
	git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# -- plugins ----------------------------------------------------------------------
if [[ -L $HOME/.oh-my-zsh/custom-dotfiles/plugins ]]; then
	msg_ok "oh-my-zsh plugins"
else
	msg_run "oh-my-zsh plugins" "ln -s $HOME/.dotfiles/zsh/plugins $HOME/.oh-my-zsh/custom-dotfiles/plugins"
	mkdir -p $HOME/.oh-my-zsh/custom-dotfiles
	ln -s $HOME/.dotfiles/zsh/plugins $HOME/.oh-my-zsh/custom-dotfiles/plugins
fi

msg_done "DONE! now reload your Terminal =D"


