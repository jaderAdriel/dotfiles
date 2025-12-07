!/bin/bash

# Mata processos para que evitar duplicatas
killall -q waybar
waybar &
killall -q hyprpaper
hyprpaper
.local/bin/wallpaper-changer.sh &
