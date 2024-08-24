#!/bin/sh

# ENVIROMENT VARIABLES:
# NOTES_FILES 

# Config Session
tmux new -s work -d
tmux rename-window -t work VPNs
tmux send-keys -t work 'htop' C-m
tmux split-window -v -t work

tmux new-window -t work
tmux rename-window -t work documentation
tmux send-keys -t work 'nvim $NOTES_FILES' C-m

# Config Scratch
tmux new -s scratch -d
tmux rename-window -t scratch Notes
tmux send-keys -t scratch 'cd $HOME/projects/settings; nvim notes' C-m

tmux new-window -t scratch
tmux rename-window -t scratch srh_core
tmux send-keys -t scratch 'srh_core' C-m

# Dev Session
tmux new -s dev -d
tmux rename-window -t dev Banco

tmux new-window -t dev
tmux rename-window -t dev Code
tmux send-keys -t dev 'cd $HOME/projects/' C-m

tmux new-window -t dev
tmux rename-window -t dev Service
tmux send-keys -t dev 'cd $HOME/projects/' C-m
tmux split-window -h -t dev
tmux split-window -h -t dev
tmux select-layout main-vertical
tmux select-pane -t 0

tmux new-window -t dev
tmux rename-window -t dev random
tmux send-keys -t dev 'cd $HOME/projects/' C-m
tmux split-window -h -t dev
tmux split-window -h -t dev
tmux select-layout main-vertical
tmux select-pane -t 0

# Open Config Session
tmux attach -t work
tmux select-window -t work:0

