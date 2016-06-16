source $HOME/.dotfiles/log.sh

# node.js
if which node &> /dev/null; then
	msg_ok "node"
else
	msg_run "node" "npm install -g n"
	npm install -g n
	n latest
	msg_done "Done"
fi

# bower
if which bower &> /dev/null; then
	msg_ok "bower"
else
	msg_run "bower" "npm install -g bower"
	npm install -g bower
	msg_done "Done"
fi

# docpad
if which docpad &> /dev/null; then
	msg_ok "docpad"
else
	msg_run "docpad" " npm install -g docpad"
	 npm install -g docpad
	msg_done "Done"
fi

# grunt-cli
if which grunt &> /dev/null; then
	msg_ok "grunt"
else
	msg_run "grunt" "npm install -g grunt-cli"
	npm install -g grunt-cli
	msg_done "Done"
fi

# gulp
if which gulp &> /dev/null; then
	msg_ok "gulp"
else
	msg_run "gulp" "npm install -g gulp"
	npm install -g gulp
	msg_done "Done"
fi

# yeoman
if which yeoman &> /dev/null; then
	msg_ok "yeoman"
else
	msg_run "jshint" "npm install -g yeoman"
	npm install -g yeoman
	msg_done "Done"
fi

# jshint
if which jshint &> /dev/null; then
	msg_ok "jshint"
else
	msg_run "jshint" "npm install -g jshint"
	npm install -g jshint
	msg_ok "Done"
fi

# harmonic
if which harmonic &> /dev/null; then
	msg_ok "harmonic"
else
	msg_run "harmonic" "npm install -g harmonic"
	npm install -g harmonic
	msg_ok "Done"
fi