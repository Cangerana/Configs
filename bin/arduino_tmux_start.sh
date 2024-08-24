#/bin/sh
# ENVIROMENT VARIABLES:
    # NOTES_FILES 
    # CURRENT_PROJECT 

# Creating the settings sessinon 
tmux new -s settings -d

tmux new-window -t settings
tmux rename-window -t settins Arduino-IDE
tmux send-keys -t settings 'arduino' C-m

tmux new-window -t settings
tmux rename-window -t settings Notes
tmux send-keys -t settings 'nvim $NOTES_FILES' C-m

tmux new-window -t settings
tmux rename-window -t settings Firefox
tmux send-keys -t settings 'firefox' C-m

# Creating the development session
tmux new -s code -d

tmux rename-window -t dev Code
tmux send-keys -t code 'cd $CURRENT_PROJECT' C-m
tmux send-keys -t code 'nvim .' C-m

tmux select-window -t code:1
tmux attach -t code

