autoload -U colors
colors
setopt prompt_subst
#PROMPT='
#%~ %{$fg_bold[black]%}$(vcprompt)[$(rvm-prompt)]
#→ %{$reset_color%}'

# Set RPROMPT to have info show up on the right, too.

#############################
# Other Options

# setopt PRINT_EXIT_VALUE

setopt CORRECT
setopt CORRECTALL

setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
setopt HIST_IGNORE_SPACE
setopt APPEND_HISTORY # write history only when closing
setopt EXTENDED_HISTORY # add more info

zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' \
  '+l:|?=** r:|?=**'


# Other tabbing options
# setopt NO_AUTO_MENU
# setopt BASH_AUTO_LIST

#############################
# Variables

# Quote pasted URLs
autoload url-quote-magic
zle -N self-insert url-quote-magic

HISTFILE=~/.zsh_history
SAVEHIST=10000
HISTSIZE=10000

REPORTTIME=10 # Show elapsed time if command took more than X seconds
LISTMAX=0 # ask to complete if top of list would scroll off screen

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

# Make CTRL-W delete after other chars, not just spaces
WORDCHARS=${WORDCHARS//[&=\/;\!#%\{]}

bindkey "^[[3~" delete-char
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey -e

# Enable Vim mode in ZSH
#bindkey -v

autoload -U edit-command-line
zle -N edit-command-line
bindkey '^R' history-incremental-search-backward # Perform backward search in command line history
bindkey '^S' history-incremental-search-forward  # Perform forward search in command line history
bindkey '^P' history-search-backward             # Go back/search in history (autocomplete)
bindkey '^N' history-search-forward              # Go forward/search in history (autocomplete)