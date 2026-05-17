#!/bin/bash
iface=$(ip route 2>/dev/null | awk '/default/{print $5}' | head -1)
[ -z "$iface" ] && echo "0B" && exit 0

tx=$(awk -v i="$iface:" '$1==i{print $10}' /proc/net/dev 2>/dev/null || echo 0)
old=$(cat /tmp/eww_tx 2>/dev/null || echo "$tx")
echo "$tx" > /tmp/eww_tx

diff=$((tx - old))
[ "$diff" -lt 0 ] && diff=0

if [ "$diff" -ge 1048576 ]; then
    printf "%.1fM\n" "$(echo "scale=2; $diff/1048576" | bc)"
elif [ "$diff" -ge 1024 ]; then
    printf "%dK\n" "$((diff / 1024))"
else
    printf "%dB\n" "$diff"
fi
