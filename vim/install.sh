#! /bin/bash

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# create .vimrc symlink
ln -sf $(pwd)/vimrc $HOME/.vimrc
