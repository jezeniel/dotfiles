xset +fp /usr/share/fonts/X11/misc
xset fp rehash
conky &
sh ./.fehbg &

if [ -s ~/.Xmodmap ]; then
  xmodmap ~/.Xmodmap
fi

if [ -z $WM]; then
  WM=dwm
fi

exec $WM 
