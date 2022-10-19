#!/usr/bin/env bash

apt install -yf curl vim tmux

COME_BACK_HERE=${PWD}

cd ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.vim/autoload

cd $COME_BACK_HERE

cp .vimrcPlugged ~/.vimrc
cp .tmux.conf ~/.tmux.conf

echo ' '
echo '..Aanii gaye Boozhoo Waabooz...  =,='
echo ' '
