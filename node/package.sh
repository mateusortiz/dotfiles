#bin/sh
source $HOME/.dotfiles/log.sh


# -- Bower ----------------------------------------------------------------------
if which bower &> /dev/null; then
	msg_ok "bower"
else
	msg_run "bower" "sudo npm install -g bower"
	sudo npm install -g bower
fi

# -- DocPad ----------------------------------------------------------------------
if which docpad &> /dev/null; then
	msg_ok "docpad"
else
	msg_run "docpad" "sudo npm install -g docpad"
	sudo npm install -g docpad
fi

# -- Grunt ----------------------------------------------------------------------
if which grunt &> /dev/null; then
	msg_ok "grunt"
else
	msg_run "grunt" "sudo npm install -g grunt-cli"
	sudo npm install -g grunt-cli
fi

# -- Gulp ----------------------------------------------------------------------
if which gulp &> /dev/null; then
	msg_ok "gulp"
else
	msg_run "gulp" "sudo npm install -g gulp"
	sudo npm install -g gulp
fi

# -- JSHint ----------------------------------------------------------------------
if which jshint &> /dev/null; then
	msg_ok "jshint"
else
	msg_run "jshint" "sudo npm install -g jshint"
	sudo npm install -g jshint
fi

# -- Yeoman ----------------------------------------------------------------------
if which yeoman &> /dev/null; then
	msg_ok "yeoman"
else
	msg_run "jshint" "sudo npm install -g yeoman"
	sudo npm install -g yeoman
fi

