#!/bin/bash
wallpaperstatus="$HOME/.config/wp"
gsettings set org.gnome.desktop.background picture-options 'none'
gsettings reset org.gnome.desktop.background picture-options
gsettings reset org.gnome.desktop.background picture-uri
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/images/duvar.svg

exit 0
if [ -f $wallpaperstatus ]; then
	echo "dosya var"
	feh --bg-tile /usr/share/images/duvar.svg
else
	echo "dosya yok"
	touch $wallpaperstatus
	#gsettings set org.gnome.desktop.background picture-uri file:///usr/share/images/duvar.svg
	feh --bg-tile /usr/share/images/duvar.svg
fi
