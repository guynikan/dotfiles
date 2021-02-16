#!/bin/bash

i3-msg "workspace 5; append_layout $HOME/.config/i3/workspaces/workspace-5.json" &
brave &
brave --new-window  https://keep.google.com/ https://web.whatsapp.com &
obsidian &
