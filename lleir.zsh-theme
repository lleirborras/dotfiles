function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
}

function vcprompt_info {
    vcprompt --format-git "on ± %{$fg[magenta]%}%b%{$reset_color%}%{$fg[green]%}%u%m%a%{$reset_color%}" \
             --format-hg  "on ☿ %{$fg[magenta]%}%b%{$reset_color%}%{$fg[green]%}%u%m%{$reset_color%}" \
             --format    "on %s %{$fg[magenta]%}%b%{$reset_color%}%{$fg[green]%}%u%m%{$reset_color%}"
}

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[yellow]%}$(box_name)%{$reset_color%} → %{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%} %{$fg_bold[black]%}$(vcprompt)[$(rbenv version-name)]
$(virtualenv_info)%(?,,%{${fg_bold[white]}%}[%?]%{$reset_color%} )%# '

local return_status="%{$fg[red]%}%(?..✘)%{$reset_color%}"
RPROMPT='${return_status}%{$reset_color%}'
