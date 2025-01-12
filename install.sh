#!/bin/bash
WD=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

./WhiteSur-icon-theme/install.sh

dconf load /org/gnome/terminal/legacy/profiles:/ < ./gnome-terminal/dist/rose-pine.dconf

THEMES_DIR="$HOME/.themes"

ICONS_DIR="$HOME/.local/share/icons"

GTK4_CONFIG_DIR="$HOME/.config/gtk-4.0"

GTK3_DIR="gtk/gtk3"
GTK4_DIR="gtk/gtk4"
ROSE_PINE_ICONS="gtk/icons"

mkdir -p "$THEMES_DIR" "$ICONS_DIR" "$GTK4_CONFIG_DIR"

cp -r "$GTK3_DIR"/* "$THEMES_DIR"

cp -r "$GTK4_DIR"/* "$GTK4_CONFIG_DIR"/

cp -r "$ROSE_PINE_ICONS"/* "$ICONS_DIR"

cp -r ./gtk/gnome_shell/moon/gnome-shell "$THEMES_DIR"/rose-pine-moon-gtk/