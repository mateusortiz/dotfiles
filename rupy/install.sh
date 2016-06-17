source $HOME/.dotfiles/log.sh

# Rbenv
if which rbenv &> /dev/null; then
	msg_ok "rbenv"
else
	msg_run "rbenv" "git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv"
	git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
	echo "Done"
fi

# Ruby Build
if which ruby-build &> /dev/null; then
	msg_ok "ruby-build"
else
	msg_run "ruby-build" "git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build"
	git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
	msg_done "Done"
fi

# Compass
if which compass &> /dev/null; then
	msg_ok "compass"
else
	msg_run "compass" "sudo gem install compass"
	gem install compass
	msg_done "Done"
fi

# Jekyll
if which jekyll &> /dev/null; then
	msg_ok "jekyll"
else
	msg_run "jekyll" "sudo gem install jekyll"
	gem install jekyll
	msg_done "Done"
fi