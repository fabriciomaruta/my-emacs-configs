#!/bin/bash

echo "Installing dependencies..."
sudo dnf install aclocal autoconf automake pkg-config libevent-devel ncurses-devel yacc flex bison &&
echo "Installing tmux..."
git clone https://github.com/tmux/tmux.git &&
echo "Configuring and creating..."
cd tmux &&
sh autogen.sh &&
./configure && make &&
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &&
git clone https://github.com/tmux-plugins/tmux-cpu ~/clone/path &&

echo "Adding customized settings 😈"
cp .tmux.conf ~/.tmux.conf
echo "Done! Enjoy "

