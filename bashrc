cd ~

# VI Prompt
set -o vi

# PROMPT
if [ ! -n "$SSH_TTY" ]; then
	PS1='\[\e[0;32m\]\u\e[0;34m@\[\e[0;31m\]\h\[\e[m\]:\W\$\[\e[0m\] '
else
	PS1='\[\e[0;32m\]\u\e[0;34m@\[\e[0;31m\]\h\[\e[1;36m\](SSH)\[\e[m\]:\W\$\[\e[0m\] '
fi

# VARIABLES
export SVN_EDITOR='vim'
export EDITOR='vim'
export LANG='C'

# SHORTCUTS
alias ll="ls -laFG"

export PATH="/usr/local/bin:$PATH:/Applications/Xcode.app/Contents/Developer/usr/bin"
