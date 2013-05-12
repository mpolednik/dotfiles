shopt -s cdspell

export EDITOR='vim'
export PAGER='less'

set -o vi
PS1="\[\e[1m\][\u@\h \W]\\$ \[\e[0m\]"

if [ -n "$SSH_CLIENT" ]; then
    PS1="(SSH)"$PS1
fi

alias l="/bin/ls -FG"
alias ls="/bin/ls -laFG"
alias vim="reattach-to-user-namespace -l vim"

export PATH="/usr/local/share/python:/usr/local/bin:/usr/local/sbin:$PATH"
export PYTHONPATH="/usr/local/lib/python2.7/site-packages:$PYTHONPATH"

if [ -f `brew --prefix`/etc/bash_completion ]; then
. `brew --prefix`/etc/bash_completion
fi

. /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
