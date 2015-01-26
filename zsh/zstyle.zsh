# cache to proxy list of results

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# prevent cvs files/directories
zstyle ':completion:*(all-|)files' ignore-patterns '(|*/)CVS'
zstyle ':completion:*:cd:*' ignore-patterns '(*/)#CVS'

# fuzzy matching of completions you mistype them
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# and if you want the number of errors allowed by _approximate to increase with the length of what you have typed so far
zstyle -e ':completion:*:approximate:*' \
		max-errors 'reply=($((($#PREFIX+$#SUFFIX/3))numeric)'

# ignore completion functions
zstyle ':completion:*:functions' ignore-patterns '_*'

# you can avoid having to complete at all in many case
zstyle ':completion:*:*:xdvi:*' menu yes select
zstyle ':completion:*:*:xdvi:*' file-sort time


# completing  process IDs
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# if you end up using a directory as argument
zstyle ':completion:*' squeeze-slashes true

# cd will never select the parent
zstyle ':completion:*:cd:*' ignore-patterns parent pwd