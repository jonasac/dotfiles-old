alias ls='ls -G'
alias ll='ls -lG'
export TERM='xterm-256color'
export GREP_OPTIONS="--color"
export LC_ALL=en_GB.UTF-8
export LANG=en_GB.UTF-8
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/code
export VIRTUALENV_DISTRIBUTE=true
source /usr/local/share/python/virtualenvwrapper.sh
alias v=vim
export PATH="/usr/local/opt/ruby/bin:~/.bin:/usr/local/share/python:$PATH"
export GOPATH=$HOME/mygo
export PATH=$PATH:$HOME/mygo/bin
alias mutt-gmail='LOCAL_CONFIG=gmail mutt'
alias mutt-work='LOCAL_CONFIG=work mutt'
export EDITOR=vim
. ~/.bin/prompt.sh
