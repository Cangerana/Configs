#!/bin/bash

nff() {
    search_result=$(find * | fzf --prompt 'All> ' \
				--header 'CTRL-D: Directories / CTRL-F: Files' \
				--bind 'ctrl-d:change-prompt(Directories> )+reload(find * -type d)' \
				--bind 'ctrl-f:change-prompt(Files> )+reload(find * -type f)' \
				--preview 'bat --color=always {}')

    if [[ -n "$search_result" ]]
    then 
        nvim $search_result
    else
        echo "Empy search"
    fi
}

export nff

fm() {
    search_result=$(find app/models/ -name "*$@*.rb" | fzf --preview 'bat --color=always {}')

    if [[ -n "$search_result" ]]
    then 
        nvim $search_result
    else
        echo "Empy search"
    fi
}

export -f fm


fc() {
    search_result=$(find app/controllers/ -name "*$@*.rb" | fzf --preview 'bat --color=always {}')

    if [[ -n "$search_result" ]]
    then 
        nvim $search_result
    else
        echo "Empy search"
    fi
}

export -f fc

fj() {
    search_result=$(find app/jobs/ -name "*$@*.rb" | fzf --preview 'bat --color=always {}')

    if [[ -n "$search_result" ]]
    then 
        nvim $search_result
    else
        echo "Empy search"
    fi
}

export -f fj


ff() {
    search_result=$(find app/finders/ -name "*$@*.rb" | fzf --preview 'bat --color=always {}')

    if [[ -n "$search_result" ]]
    then 
        nvim $search_result
    else
        echo "Empy search"
    fi
}

export -f ff

fs() {
    search_result=$(find app/services/ -name "*$@*.rb" | fzf --preview 'bat --color=always {}')

    if [[ -n "$search_result" ]]
    then 
        nvim $search_result
    else
        echo "Empy search"
    fi
}

export -f fs


fv() {
    search_result=$(find app/views/ -name "*$@*" | fzf --preview 'bat --color=always {}')

    if [[ -n "$search_result" ]]
    then 
        nvim $search_result
    else
        echo "Empy search"
    fi
}

export -f fv

irg() {
IFS=: read -ra selected < <(
  rg --color=always --line-number --no-heading --smart-case --hidden "${*:-}" |
    fzf --ansi \
        --color "hl:-1:underline,hl+:-1:underline:reverse" \
        --delimiter : \
        --preview 'bat --color=always {1} --highlight-line {2}' \
        --preview-window 'up,60%,border-bottom,+{2}+3/3,~3'
)

[ -n "${selected[2]}" ] && nvim "${selected[0]}" "+${selected[1]}"
}

export -f irg

firg() {
IFS=: read -ra selected < <(
  rg --color=always --line-number --no-heading --smart-case --type puppet --type ruby "${*:-}" |
    fzf --ansi \
        --color "hl:-1:underline,hl+:-1:underline:reverse" \
        --delimiter : \
        --preview 'bat --color=always {1} --highlight-line {2}' \
        --preview-window 'up,60%,border-bottom,+{2}+3/3,~3'
)

[ -n "${selected[2]}" ] && nvim "${selected[0]}" "+${selected[1]}"
}

export -f firg


