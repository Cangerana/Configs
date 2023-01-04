#!/bin/sh
# ENVIROMENT VARIABLES:
# NOTES_FILES 
# CURRENT_PROJECT 

tmux new -s dev -d
tmux rename-window -t dev Docker
tmux send-keys -t dev 'cd $CURRENT_PROJECT' C-m
tmux send-keys -t dev 'docker compose up -d' C-m
tmux split-window -v -t dev
tmux send-keys -t dev 'htop' C-m

tmux new-window -t dev
tmux rename-window -t dev Code
tmux send-keys -t dev 'cd $CURRENT_PROJECT' C-m
tmux send-keys -t dev 'n .' C-m

tmux new-window -t dev
tmux rename-window -t dev Distrobox
tmux send-keys -t dev 'distrobox-enter dev' C-m
tmux send-keys -t dev 'neofetch' C-m
tmux split-window -v -t dev
tmux send-keys -t dev 'distrobox-enter dev' C-m
tmux send-keys -t dev 'neofetch' C-m

tmux new-window -t dev
tmux rename-window -t dev Notes
tmux send-keys -t dev 'nvim $NOTES_FILES' C-m

tmux new-window -t dev
tmux rename-window -t dev Firefox
tmux send-keys -t dev 'firefox' C-m


mux select-window -t dev:1
tmux attach -t dev

