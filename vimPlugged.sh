#!/usr/bin/env bash

apt install -yf curl

COME_BACK_HERE=${PWD}

cd ~/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.vim/autoload

cat << EOF > .vimrc 
call plug#begin()

Plug 'ycm-core/YouCompleteMe'

call plug#end()
set mouse=a
colorcheme industry
set spell
set title
set cursorline
set number
set ruler
syntax enable
set hlsearch
set ignorecase
set smartcase
set history=4300
set smarttab
set tabspace=2
EOF

cp $COME_BACK_HERE/.vimrc ~/.vimrc

git clone https://github.com/ycm-core/YouCompleteMe.git
cd YouCompleteMe
apt install -yf build-essential cmake vim-nox python3-dev
apt install -yf mono-complete golang nodejs openjdk-17-jdk openjdk-17-jre npm

python3 install.py --all

cd $COME_BACK_HERE
