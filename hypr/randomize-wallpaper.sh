
#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/.config/hypr/wallpaper"

# Get currently active wallpaper path
CURRENT_WALL=$(hyprctl hyprpaper listloaded | awk '{print $2}')

# Pick a random wallpaper different from current
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | grep -v "$CURRENT_WALL" | shuf -n 1)

# Safety check
[ -z "$WALLPAPER" ] && exit 1

# Apply wallpaper
hyprctl hyprpaper preload "$WALLPAPER"
hyprctl hyprpaper wallpaper ",$WALLPAPER"

