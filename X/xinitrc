xset +fp /usr/share/fonts/X11/misc
xset fp rehash
conky &
sh ./.fehbg &

if [ -s "$HOME/.xmodmaprc" ]; then
  xmodmap "$HOME/.xmodmaprc"
fi

if [ -z $WM]; then
  WM=dwm
fi

exec dbus-launch $WM 
