export PATH=/usr/games:/usr/local/games:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:$HOME/bin:/usr/local/sbin

autoload -U promptinit && promptinit
prompt pure

for config_file ($HOME/.zsh/*.zsh) source $config_file

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

