#!/bin/bash

mkdir -p $HOME/.config/{i3,i3status} && \
  ln -s $(pwd)/i3/config $HOME/.config/i3/config && \
  ln -s $(pwd)/i3status/config $HOME/.config/i3status/config

mkdir -p $HOME/.vim/colors
ln -s $(pwd)/vim/vimrc $HOME/.vimrc
ln -s $(pwd)/tmux/tmux.conf $HOME/.tmux.conf
ln -s $(pwd)/vim/colors/ $HOME/.vim/colors
