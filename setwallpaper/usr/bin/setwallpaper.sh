#!/bin/bash
wallpaperstatus="$HOME/.config/wp"

if [ -f $wallpaperstatus ]; then
	echo "dosya var"
else
	echo "dosya yok"
	touch $wallpaperstatus
	gsettings set org.gnome.desktop.background picture-uri file:///usr/share/images/duvar.svg	
fi
