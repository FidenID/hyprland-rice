#!/bin/bash
# ~/.config/waybar/switch.sh

NUM=$1
STYLE_DIR="$HOME/.config/waybar/styles"

# Kill waybar lama, terapkan style baru
pkill waybar
cp "$STYLE_DIR/style$NUM.css" "$HOME/.config/waybar/style.css"
waybar &
