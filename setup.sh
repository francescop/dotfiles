#!/bin/bash

mkdir -p $HOME/.config/{i3,i3status} && \
  ln -sf $(pwd)/i3/config $HOME/.config/i3/config && \
  ln -sf $(pwd)/i3status/config $HOME/.config/i3status/config

mkdir -p $HOME/.vim/colors && \
  ln -sf $(pwd)/vim/vimrc $HOME/.vimrc && \
  ln -sf $(pwd)/tmux/tmux.conf $HOME/.tmux.conf

# suppress error code and error message
cp $(pwd)/vim/colors/* $HOME/.vim/colors/ 2>/dev/null || :
