#!/bin/bash

WIDTH=400
let "X=$1-WIDTH"
FG='#aaaaaa'
BG='#1a1a1a'
FONT='-*-terminus-*-r-normal-*-*-90-*-*-*-*-iso8859-*'
(
echo "Calendar"
cal -3 
)|
  dzen2 -p -x $X -y "15" -w "400" -l "10" -sa 'c' -ta 'c' \
  -title-name 'popup_sysinfo' -fn $FONT -e 'onstart=uncollapse;button1=exit;button3=exit'
