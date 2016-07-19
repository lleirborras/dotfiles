# Or source from bash aliases, which use the same syntax
platform=`uname`
if [[ $platform == 'Linux' ]]; then
  alias ls="ls --color"
elif [[ $platform == 'Darwin' ]]; then
  alias ls="ls -G"
fi

alias start_postgres="postgres -D /usr/local/var/postgres"

alias g="git status"

alias gb='git branch'
alias gd='git diff'
alias gst='git status'
