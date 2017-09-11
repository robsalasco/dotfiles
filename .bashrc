export PATH="/usr/local/bin:$PATH"
export PATH="~/.local/bin:$PATH"

# Don't put duplicate lines or lines starting with space in the history
HISTCONTROL="erasedups:ignoreboth"

# Commands that don't need to get recorded
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"

# Save multi-line commands to the history as one command
shopt -s cmdhist

# Append to the history file, don't overwrite it
shopt -s histappend

# Set history size to a very large number
HISTSIZE=500000
HISTFILESIZE=100000

# Record each line of history right away
# instead of at the end of the session
PROMPT_COMMAND='history -a'

# Set history timestamp format
HISTTIMEFORMAT='%F %T '

# Activate and define cdable variables
shopt -s cdable_vars
export downloads="$HOME/downloads"
export odrive="$HOME/odrive"

# Correct minor errors in the spelling of a directory
shopt -s cdspell

if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
   . $(brew --prefix)/share/bash-completion/bash_completion
fi

export LANG=es_ES.UTF-8
export LANGUAGE=es_ES.UTF-8
export LC_ALL=es_ES.UTF-8
export LC_CTYPE=UTF-8

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export EDITOR=/usr/local/bin/subl

alias ls='ls -GFh'
alias mpvplay='mpv $(youtube-dl -g --no-warnings `pbpaste`)'
alias f='open -a Finder ./'
alias sss='python -m SimpleHTTPServer 8888' # Start Simple Server
alias l='ls -CF -lh'
alias ll='ls -l'
alias la='ls -A'

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval $(dinghy env)

if [ -f $(brew --prefix)/etc/bash_completion ]; then
   . $(brew --prefix)/etc/bash_completion
fi