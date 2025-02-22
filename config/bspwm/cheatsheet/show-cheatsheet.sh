#!/bin/bash

# Path to the cheatsheet file
CHEATSHEET_FILE="/home/n3tshad0w/.config/bspwm/cheatsheet/bspwm-cheatsheet.txt"

# Check if the cheatsheet file exists
if [[ ! -f "$CHEATSHEET_FILE" ]]; then
  echo "Cheatsheet file not found at $CHEATSHEET_FILE"
  exit 1
fi

# Read the cheatsheet file and display it with rofi
cat "$CHEATSHEET_FILE" | rofi -dmenu -p "Bspwm Cheatsheet" -theme /home/n3tshad0w/.config/bspwm/cheatsheet/cheatsheet.rasi

