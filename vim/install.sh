#!/bin/bash

PLUGINS=$HOME/.vim/pack/plugins/start

mkdir -p $PLUGINS

echo "Downloading plugins..."
cd /tmp

# NERDTree
echo "Installing NERDTree..."
wget -q -O nerdtree.tar.gz https://github.com/preservim/nerdtree/archive/refs/tags/7.1.3.tar.gz
tar -xzf nerdtree.tar.gz
mv nerdtree-7.1.3 $PLUGINS/nerdtree
rm -rf nerdtree.targz

# CtrlP
echo "Installing CtrlP..."
wget -q -O ctrlp.tar.gz https://github.com/ctrlpvim/ctrlp.vim/archive/refs/tags/1.81.tar.gz
tar -xzf ctrlp.tar.gz
mv ctrlp.vim-1.81 $PLUGINS/ctrlp
rm -rf ctrlp.tar.gz

echo "Installation completed."
