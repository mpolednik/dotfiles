shopt -s cdspell

export EDITOR='vim'
export PAGER='less'

set -o vi
if [ ! -n "$SSH_TTY" ]; then
	PS1='\[\e[0;32m\]\u\e[0;34m@\[\e[0;31m\]\h\[\e[m\]:\W\$\[\e[0m\] '
else
	PS1='\[\e[0;32m\]\u\e[0;34m@\[\e[0;31m\]\h\[\e[1;36m\](SSH)\[\e[m\]:\W\$\[\e[0m\] '
fi

alias l="/bin/ls -FG"
alias ls="/bin/ls -laFG"

export PATH="/usr/local/bin:/usr/local/sbin:$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin:/usr/local/mysql/bin"

 if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
