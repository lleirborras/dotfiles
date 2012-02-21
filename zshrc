# Symlink to this file from ~/.zshrc
# You should also symlink ~/.zshenv to zsh/env in this directory

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/env

if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

# Enable RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm


