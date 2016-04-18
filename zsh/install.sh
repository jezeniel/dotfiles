#! /bin/bash

OMZSH_PATH="$HOME/.oh-my-zsh"
if [ ! -d "$OMZSH_PATH" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

ln -sf $(pwd)/zshrc $HOME/.zshrc

