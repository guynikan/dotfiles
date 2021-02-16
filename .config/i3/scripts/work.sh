#!/bin/bash 
i3-msg "workspace 1; append_layout $HOME/.config/i3/workspaces/workspace-1.json" &
brave &
spotify &
alacritty -e nvim &
