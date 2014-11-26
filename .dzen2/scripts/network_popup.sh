#!/bin/bash

WIDTH=400
let "X=$1-WIDTH+190/2"
FG='#aaaaaa'
BG='#1a1a1a'
FONT='-*-terminus-*-r-normal-*-*-90-*-*-*-*-iso8859-*'
conky -c $HOME/.dzen2/scripts/.networkrc | \
  dzen2 -p -x $X -y "15" -w "190" -l "4" -sa 'l' -ta 'c' \
  -title-name 'network_info' -fn $FONT -e 'onstart=uncollapse;button1=exit;button3=exit'
