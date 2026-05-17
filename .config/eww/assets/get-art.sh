#!/bin/bash
# Download album art dari URL (Spotify pakai https://)
URL=$(playerctl metadata mpris:artUrl 2>/dev/null)
CACHE="$HOME/.cache/eww-art.png"

if [ -z "$URL" ]; then
  echo "$HOME/.config/eww/assets/noart.png"
  exit 0
fi

if [[ "$URL" == file://* ]]; then
  echo "${URL#file://}"
  exit 0
fi

# URL https:// — download ke cache
curl -s -o "$CACHE" "$URL" 2>/dev/null && echo "$CACHE" || echo "$HOME/.config/eww/assets/noart.png"
