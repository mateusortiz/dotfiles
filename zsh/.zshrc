USER="`id -un`"

# -- user settings ----------------------------------------------------------------------
if [[ -f "$HOME/.dotfiles/settings.$USER" ]]; then
	source $HOME/.dotfiles/settings.$USER
fi

# -- config ----------------------------------------------------------------------
# PATH to your oh-my-zsh configs
ZSH=$HOME/.oh-my-zsh

# -- THEME ----------------------------------------------------------------------
# search name and set the theme to load
# ~/.oh-my-zsh/themes
ZSH_THEME="robbyrussell"

# -- plugins ----------------------------------------------------------------------
# which plugins would you like to load? (found in ~/.oh-my-zsh/plugins/*)
# example: plugins=(brew git ruby)
plugins=(brew cloudapp extract gem git git-prompt git-tools github history-substring-search macports node npm osx python rake ruby z)

# -- editor ----------------------------------------------------------------------
# set your editor
export EDITOR="subl -w"

# -- rbenv ----------------------------------------------------------------------
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"


# -- user configs ----------------------------------------------------------------------
if [[ -f "$HOME/.dotfiles/config.$USER" ]]; then
	source $HOME/.dotfiles/config.$USER
fi

export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom-dotfiles"

source $ZSH/oh-my-zsh.sh

# disable auto correct
unsetopt correct_all
unsetopt correct


# load all of the configs in ~/dotfiles/zsh/* in .zsh
for config_file ($HOME/.dotfiles/zsh/*.zsh) source $config_file


