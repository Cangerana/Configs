#/bin/sh

#### Layout ###
# 
# 1. Session
# General configs
#
# - 1. Panel
#   - Monitorinig
# - 2. Panel
#   - VPN Connections
#
# 2. Session
# Documentations and AI Consults
#
# - 1. Panel
#   - Nvim open on the Note Files Directory
# - 2. Panel
#   - Hermes Agent session
#
# 3. Session
# Code Session
#
# - 1. Panel
#   - Codex Session
# - 2. Panel
#   - Project Directory
#   - Panel for actually code
# - 3. Panel
#   - Project Directory
#   - Panel for run/test the projects
# - 4. Panel
#   - Project Directory
#   - Panel for general purpose
# 
# Required Environment Variables:
# - NOTES_DIRECTORY
# - PROJECTS_DIRECTORY
# - MAIN_PROJECT 

###############################################################################
####################### Creating the settings sessinon ######################## 
###############################################################################
tmux new -s settings -d

tmux rename-window -t settings monitor
tmux send-keys -t settings 'htop' C-m

tmux new-window -t settings
tmux rename-window -t settings networking

###############################################################################
##################### Creating the Documentations session #####################
###############################################################################
tmux new -s documentation -d

tmux rename-window -t documentation notes
tmux send-keys -t documentation 'cd $NOTES_DIRECTORY' C-m
tmux send-keys -t documentation 'clear' C-m
tmux send-keys -t documentation 'nvim .' C-m

tmux new-window -t documentation
tmux rename-window -t documentation hermes
tmux send-keys -t documentation 'hermes' C-m

###############################################################################
##################### Creating the Documentations session #####################
###############################################################################
tmux new -s dev -d

tmux rename-window -t dev codex
tmux send-keys -t code 'cd $MAIN_PROJECT' C-m
tmux send-keys -t code 'clear' C-m

tmux new-window -t dev
tmux rename-window -t dev code
tmux send-keys -t dev 'cd $MAIN_PROJECT' C-m
tmux send-keys -t dev 'clear' C-m
tmux send-keys -t dev 'nvim .' C-m

tmux new-window -t dev
tmux rename-window -t dev server
tmux send-keys -t dev 'cd $MAIN_PROJECT' C-m
tmux send-keys -t dev 'clear' C-m

tmux new-window -t dev
tmux rename-window -t dev general
tmux send-keys -t dev 'cd $PROJECTS_DIRECTORY' C-m

tmux select-window -t settings:monitor
tmux select-window -t documentation:notes
tmux select-window -t dev:code
tmux attach -t dev

