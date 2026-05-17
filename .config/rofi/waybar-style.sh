#!/bin/bash

OPTIONS="Style 1\nStyle 2\nStyle 3\nStyle 4\nStyle 5\nStyle 6"

CHOSEN=$(echo -e "$OPTIONS" | rofi -dmenu -p "Waybar Style")

case "$CHOSEN" in
  "Style 1") bash ~/.config/waybar/launch-waybar.sh 1 ;;
  "Style 2") bash ~/.config/waybar/launch-waybar.sh 2 ;;
  "Style 3") bash ~/.config/waybar/launch-waybar.sh 3 ;;
  "Style 4") bash ~/.config/waybar/launch-waybar.sh 4 ;;
  "Style 5") bash ~/.config/waybar/launch-waybar.sh 5 ;;
  "Style 6") bash ~/.config/waybar/launch-waybar.sh 6 ;;
esac
