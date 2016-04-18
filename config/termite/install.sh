#! /bin/bash

CONFIG_PATH=$HOME/.config/termite

if [ ! -d "$CONFIG_PATH" ]; then
  mkdir $CONFIG_PATH
fi

ln -sf $(pwd)/config $CONFIG_PATH/config
