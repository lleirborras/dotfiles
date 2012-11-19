# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lleir"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew bundler debian gem git gnu-utils osx rails rails3 rake ruby rvm vi-mode)

source $ZSH/oh-my-zsh.sh

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/env

if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi

#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/

# Enable RVM
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

# Customize to your needs...
export PATH=$HOME/.rvm/gems/ruby-1.9.3-p286/bin:$HOME/.rvm/gems/ruby-1.9.3-p286@global/bin:$HOME/.rvm/rubies/ruby-1.9.3-p286/bin:$HOME/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:$HOME/bin:/usr/local/sbin:$HOME/.rvm/bin:$HOME/.rvm/bin

cd ..;1
