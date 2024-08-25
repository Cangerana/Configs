# Config 

export EDITOR='nvim'
export VISUAL='nvim'

xset r rate 295 55

setxkbmap -variant thinkpad -model abnt2 -option 'grp:alt_space_toggle,lv3:switch,compose:ralt' -layout us,br

PS1=' \[\e[0;38;5;63m\]\w \[\e[0;1;38;5;63m\]>\[\e[0;1;38;5;63m\]> \[\e[0m\]'
PROMPT_DIRTRIM=2
TERM=tmux

# FZF stuffs
. ~/projetos/scripts/bin/tt.sh

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_COMPLETION_TRIGGER='**'

. ~/projetos/scripts/aliases

# SSH Agent should be running, once
runcount=$(ps -ef | grep "ssh-agent" | grep -v "grep" | wc -l)

if [ $runcount -eq 0 ]; then
    echo Starting SSH Agent
    eval $(ssh-agent -s)
fi

ssh-add -l &>/dev/null
if ! [ "$?" == 0 ]; then
     echo Adding keys...
     ssh-add $PATH_SSH_KEY
fi

