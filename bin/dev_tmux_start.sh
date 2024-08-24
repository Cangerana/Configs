#/bin/sh
# ENVIROMENT VARIABLES:
    # NOTES_FILES 
    # CURRENT_PROJECT 
    # DSB

# Creating the settings sessinon 
tmux new -s settings -d

tmux new-window -t settings
tmux rename-window -t settins Distrobox
tmux send-keys -t settings 'distrobox-enter dev' C-m
tmux send-keys -t settings 'neofetch' C-m

tmux new-window -t settings
tmux rename-window -t settings Notes
tmux send-keys -t settings 'nvim $NOTES_FILES' C-m

tmux new-window -t settings
tmux rename-window -t settings Firefox
tmux send-keys -t settings 'firefox' C-m

# Creating the development session
tmux new -s dev -d

tmux rename-window -t dev Docker
tmux send-keys -t dev 'cd $CURRENT_PROJECT' C-m
tmux send-keys -t dev 'docker compose up -d' C-m
tmux split-window -v -t dev
tmux send-keys -t dev 'psql $DSB' C-m

tmux new-window -t dev
tmux rename-window -t dev Code
tmux send-keys -t dev cd '$CURRENT_PROJECT' C-m
tmux send-keys -t dev 'nvim .' C-m

tmux select-window -t dev:1
tmux attach -t dev


