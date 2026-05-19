#!/bin/bash
# ~/.config/waybar/launch-waybar.sh

CONFIG_DIR="$HOME/.config/waybar/configs"
STYLE_DIR="$HOME/.config/waybar/styles"
EWW_DIR="$HOME/.config/eww"
ROFI_DIR="$HOME/.config/rofi"

NUM=$1

if [[ -z "$NUM" ]]; then
  echo "Usage: launch-waybar.sh <1-6>"
  exit 1
fi

CONFIG="$CONFIG_DIR/config${NUM}.json"
STYLE="$STYLE_DIR/style${NUM}.css"

if [[ ! -f "$CONFIG" || ! -f "$STYLE" ]]; then
  echo "Config atau style untuk nomor $NUM tidak ditemukan!"
  exit 1
fi

# ── 1. Kill & restart Waybar ──────────────────────────────
killall waybar 2>/dev/null
sleep 0.3
waybar -c "$CONFIG" -s "$STYLE" &

# ── 2. Update EWW (CSS + Konfigurasi) ─────────────────────
EWW_THEME_DIR="$EWW_DIR/themes/theme${NUM}"

if [[ -d "$EWW_THEME_DIR" ]]; then
  # Kill EWW jika sedang berjalan
  eww kill 2>/dev/null
  sleep 0.2

  # Hapus eww.scss kalau ada (eww memprioritaskan .scss di atas .css)
  rm -f "$EWW_DIR/eww.scss"

  # Copy konfigurasi dan CSS dari tema
  cp "$EWW_THEME_DIR/eww.yuck" "$EWW_DIR/eww.yuck"
  cp "$EWW_THEME_DIR/eww.css"  "$EWW_DIR/eww.css"

  # Restart EWW daemon (sidebar dibuka on-demand via tombol power di waybar)
  eww daemon &
  echo "✓ EWW theme $NUM applied (config + css)"
else
  echo "⚠ EWW theme directory $EWW_THEME_DIR not found, skipping..."
fi

# ── 3. Ganti tema Rofi (dari file eksternal) ──────────────
ROFI_THEME_DIR="$ROFI_DIR/themes"

if [[ -f "$ROFI_THEME_DIR/rofi-style${NUM}.rasi" ]]; then
  cp "$ROFI_THEME_DIR/rofi-style${NUM}.rasi" "$ROFI_DIR/current-theme.rasi"
  echo "✓ Rofi theme $NUM applied"
else
  # Fallback ke hardcoded seperti script asli
  case "$NUM" in
    1)
      cat > "$ROFI_DIR/current-theme.rasi" << 'ROFI'
* {
  bg: rgba(10,10,20,0.72);
  bg-selected: rgba(122,162,247,0.15);
  fg: #cdd6f4;
  border-fixed: rgba(122,162,247,0.25);
}
ROFI
      ;;
    # ... tambahkan untuk NUM 2-6
  esac
  echo "✓ Rofi theme $NUM applied (hardcoded fallback)"
fi

echo "✓ Switched to Style $NUM"