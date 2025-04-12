#!/bin/bash

PLUGINS=$HOME/.vim/pack/plugins/start

NERDTREEv=7.1.3
CTRLPv=1.81

mkdir -p $PLUGINS

echo "Downloading plugins..."
cd /tmp

echo "Installing NERDTree=${NERDTREEv}"
wget -q -O nerdtree.tar.gz https://github.com/preservim/nerdtree/archive/refs/tags/${NERDTREEv}.tar.gz
tar -xzf nerdtree.tar.gz
mv nerdtree-${NERDTREEv} $PLUGINS/nerdtree
rm -rf nerdtree.tar.gz

echo "Installing CtrlP=${CTRLPv}"
wget -q -O ctrlp.tar.gz https://github.com/ctrlpvim/ctrlp.vim/archive/refs/tags/${CTRLPv}.tar.gz
tar -xzf ctrlp.tar.gz
mv ctrlp.vim-${CTRLPv} $PLUGINS/ctrlp
rm -rf ctrlp.tar.gz

echo "Installation completed."
