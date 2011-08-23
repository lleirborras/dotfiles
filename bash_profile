source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/config
source ~/.bash/shopt

if [ -f ~/.bash_profile.local ]; then
  . ~/.bash_profile.local
fi

if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi

export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

# Enable RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
