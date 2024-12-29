#!/bin/bash

## wlogout with alt layout and style file
# yonked from https://github.com/notwidow/hyprland/blob/main/hypr/scripts/wlogout

LAYOUT="$HOME/.config/wlogout/layout"
STYLE="$HOME/.config/wlogout/style.css"

if [[ ! $(pidof wlogout) ]]; then
  wlogout --layout ${LAYOUT} --css ${STYLE} \
    --buttons-per-row 3 
else
  pkill wlogout
fi
