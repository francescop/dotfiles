#!/bin/bash

set -xe

NVIM_CONFIG_DIR=$HOME/.config/nvim

mkdir -p $HOME/.config/{i3,i3blocks,i3scripts} && \
  ln $(pwd)/i3/config $HOME/.config/i3/config && \
  ln $(pwd)/i3blocks/config $HOME/.config/i3blocks/config && \
  ln $(pwd)/i3scripts/get_keyboard_layout.sh $HOME/.config/i3scripts/get_keyboard_layout.sh

mkdir -p $NVIM_CONFIG_DIR/colors && \
  ln $(pwd)/vim/vimrc $NVIM_CONFIG_DIR/init.vim && \
  ln $(pwd)/tmux/tmux.conf $HOME/.tmux.conf \
  ln $(pwd)/utils/alacritty.yml $HOME/.alacritty.yml

# suppress error code and error message
cp $(pwd)/vim/colors/* $NVIM_CONFIG_DIR/colors/ 2>/dev/null || :

# git configuration
if [ ! -f $HOME/.gitconfig ]; then
  cp $(pwd)/git/gitconfig $HOME/.gitconfig
fi

#cp $(pwd)/utils/toggle_display.sh $HOME/bin/toggle_display.sh
#cp $(pwd)/utils/turn_off_laptop_display.sh $HOME/bin/turn_off_laptop_display.sh
ln $(pwd)/radare/radare2rc $HOME/.radare2rc

# gnome-terminal
terminal_profile_id=$(dconf dump /org/gnome/terminal/legacy/profiles:/ | head -n 1 | sed 's/\[//g;s/\]//g')
dconf load /org/gnome/terminal/legacy/profiles:/$terminal_profile_id/ < gnome/terminal_profile.dconf
