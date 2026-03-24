#!/bin/bash
# Script untuk launch multiple Waybar

CONFIG_DIR="$HOME/.config/waybar/configs"
STYLE_DIR="$HOME/.config/waybar/styles"

# Hentikan semua Waybar yang sedang berjalan
killall waybar 2>/dev/null

# Pilih konfigurasi berdasarkan argumen
case "$1" in
    1)
        CONFIG="$CONFIG_DIR/config1.json"
        STYLE="$STYLE_DIR/style1.css"
        ;;
    2)
        CONFIG="$CONFIG_DIR/config2.json"
        STYLE="$STYLE_DIR/style2.css"
        ;;
    3)
        CONFIG="$CONFIG_DIR/config3.json"
        STYLE="$STYLE_DIR/style3.css"
        ;;
    4)
        CONFIG="$CONFIG_DIR/config4.json"
        STYLE="$STYLE_DIR/style4.css"
        ;;
    *)
        echo "Usage: $0 {1|2|3|4}"
        exit 1
        ;;
esac

# Jalankan Waybar dengan config dan style yang dipilih
waybar -c "$CONFIG" -s "$STYLE" &
