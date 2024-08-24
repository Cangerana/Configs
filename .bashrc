# Config 

export EDITOR='nvim'
export VISUAL='nvim'

xset r rate 295 55

setxkbmap -variant thinkpad -model abnt2 -option 'grp:alt_space_toggle,lv3:switch,compose:ralt' -layout us,br

PS1=' \[\e[0;38;5;63m\]\w \[\e[0;1;38;5;63m\]>\[\e[0;1;38;5;63m\]> \[\e[0m\]'
PROMPT_DIRTRIM=2
TERM=tmux

NOTES_FILES=~/projects/settings/configs

# FZF stuffs
. ~/projetos/scripts/tt.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_COMPLETION_TRIGGER='**'

. ~/projetos/scripts/aliases

