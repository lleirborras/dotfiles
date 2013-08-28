# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="lleir"

export PATH=/usr/games:/usr/local/games:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:$HOME/bin:/usr/local/sbin

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
plugins=(brew bundler coffee colored-man colorize compleat debian gem git gitfast gnu-utils lol mercurial postgres osx rails rails3 rails4 rake ruby rbenv rsync per-directory-history cap github git-extras tmux ssh-agent vundle)

source $ZSH/oh-my-zsh.sh

. ~/.zsh/config
. ~/.zsh/aliases
. ~/.zsh/env
. ~/.zshenv

if [ -f ~/.zshrc.local ]; then
  . ~/.zshrc.local
fi


# Customize to your needs...

if [ -z "$(type -p authsock)" ]; then
  eval $(authsock)
fi
cd ..;1
