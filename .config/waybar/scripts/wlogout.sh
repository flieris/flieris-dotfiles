#!/bin/bash

## wlogout with alt layout and style file
# yonked from https://github.com/notwidow/hyprland/blob/main/hypr/scripts/wlogout

LAYOUT="$HOME/.config/wlogout/layout"
STYLE="$HOME/.config/wlogout/style.css"

if [[ ! $(pidof wlogout) ]]; then
  wlogout --layout ${LAYOUT} --css ${STYLE} \
    --buttons-per-row 5 \
    --column-spacing 50 \
    --row-spacing 50 \
    --margin-top 390 \
    --margin-bottom 390 \
    --margin-left 150 \
    --margin-right 150
else
  pkill wlogout
fi
