#!/bin/sh

# ENVIROMENT VARIABLES:
# NOTES_FILES 

tmux new -s work -d
tmux rename-window -t work VPNs
tmux send-keys -t work 'vpn' C-m
tmux split-window -v -t work
tmux send-keys -t work 'htop' C-m

tmux new-window -t work
tmux rename-window -t work server-code
tmux send-keys -t work 'cd /home/siedos/projects/' C-m

tmux new-window -t work
tmux rename-window -t work documentation
tmux send-keys -t work 'nvim $NOTES_FILES' C-m

tmux new-window -t work
tmux rename-window -t work random
tmux send-keys -t work 'cmatrix' C-m

tmux select-window -t work:0
tmux attach -t work

