#!/usr/bin/env bash

apt install -yf vim tmux

cp .vimrc $HOME

echo ' '
echo 'Your vim config is only for this user currently. cp .vimrc to /etc/vim//vimrc.local for Ubuntu/Debian systems and /etc/vimrc for CentOS/RHEL7'
sleep 3
