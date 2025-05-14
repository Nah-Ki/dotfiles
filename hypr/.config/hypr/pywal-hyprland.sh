#!/bin/bash

source ~/.cache/wal/colors.sh

# Remove the '#' character
active="0x${color1#"#"}"
inactive="0x${color0#"#"}"

# Update the config
sed -i "s/^col.active_border = .*/col.active_border = ${active}/" ~/.config/hypr/hyprland.conf
sed -i "s/^col.inactive_border = .*/col.inactive_border = ${inactive}/" ~/.config/hypr/hyprland.conf

# Reload Hyprland
hyprctl reload

