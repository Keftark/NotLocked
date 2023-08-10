#!/bin/bash

gsettings set org.gnome.desktop.a11y.magnifier screen-position centered
gsettings set org.gnome.desktop.a11y.magnifier color-saturation 0.0
gsettings set org.gnome.desktop.a11y.magnifier show-cross-hairs true
gsettings set org.gnome.desktop.a11y.magnifier cross-hairs-thickness 100
gsettings set org.gnome.desktop.a11y.magnifier invert-lightness true
gsettings set org.gnome.desktop.a11y.magnifier contrast-blue 1 
gsettings set org.gnome.desktop.a11y.magnifier contrast-red 1 
gsettings set org.gnome.desktop.a11y.magnifier contrast-green 1
gsettings set org.gnome.desktop.a11y.applications screen-magnifier-enabled true
alias_name="demagnification"
alias_command="gsettings set org.gnome.desktop.a11y.applications screen-magnifier-enabled false"
if ! alias "$alias_name" &> /dev/null; then
    # Define the alias
    alias "$alias_name"="$alias_command"
fi
#echo "alias demagnification='gsettings set org.gnome.desktop.a11y.applications screen-magnifier-enabled false'" >> ~/.zshrc
