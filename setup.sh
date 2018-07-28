#!/bin/bash

mkdir -p $HOME/.config/{i3,i3status} && \
  cp $(pwd)/i3/config $HOME/.config/i3/config && \
  cp $(pwd)/i3status/config $HOME/.config/i3status/config

mkdir -p $HOME/.vim/colors && \
  cp $(pwd)/vim/vimrc $HOME/.vimrc && \
  cp $(pwd)/tmux/tmux.conf $HOME/.tmux.conf

# suppress error code and error message
cp $(pwd)/vim/colors/* $HOME/.vim/colors/ 2>/dev/null || :

cp $(pwd)/utils/toggle_display.sh $HOME/bin/toggle_display.sh
cp $(pwd)/utils/turn_off_laptop_display.sh $HOME/bin/turn_off_laptop_display.sh
