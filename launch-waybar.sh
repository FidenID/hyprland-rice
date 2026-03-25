#!/bin/bash

CONFIG_DIR="$HOME/.config/waybar/configs"
STYLE_DIR="$HOME/.config/waybar/styles"

killall waybar 2>/dev/null

CONFIG="$CONFIG_DIR/config$1.json"
STYLE="$STYLE_DIR/style$1.css"

if [[ ! -f "$CONFIG" || ! -f "$STYLE" ]]; then
    echo "Config atau style untuk nomor $1 tidak ditemukan!"
    exit 1
fi

waybar -c "$CONFIG" -s "$STYLE" &