#!/bin/bash
WD=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

./WhiteSur-icon-theme/install.sh

dconf load /org/gnome/terminal/legacy/profiles:/ < ./gnome-terminal/dist/rose-pine.dconf

SETTINGS_FILE = ~/.config/gtk-3.0/settings.ini
if [ -f $SETTINGS_FILE ]; then
    mv $SETTINGS_FILE "$SETTINGS_FILE.bak"

fi

echo "
[Settings]
gtk-application-prefer-dark-theme=true
gtk-theme-name=rose-pine-gtk
gtk-icon-theme-name=rose-pine-icons
"
> $SETTINGS_FILE 
