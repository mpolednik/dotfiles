shopt -s cdspell

export EDITOR='vim'
export PAGER='less'

set -o vi
PS1="\[\e[1m\][\u@\h \W]\\$ \[\e[0m\]"

alias l="/bin/ls -FG"
alias ls="/bin/ls -laFG"

export PATH="/usr/local/bin:/usr/local/sbin:$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin:/usr/local/mysql/bin"

 if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
