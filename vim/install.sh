#!/bin/bash

echo "Downloading packages..."

sudo apt update -y -qq
sudo apt install -y -qq clangd

PLUGINS=$HOME/.vim/pack/plugins/start

nerdtree_v=7.1.3
ctrlp_v=1.81
vimlsp_v=0.1.4

mkdir -p $PLUGINS

echo "Downloading plugins..."
cd /tmp

echo "Installing nerdtree=${nerdtree_v}"
wget -q -O nerdtree.tar.gz https://github.com/preservim/nerdtree/archive/refs/tags/${nerdtree_v}.tar.gz
tar -xzf nerdtree.tar.gz
mv nerdtree-${nerdtree_v} $PLUGINS/nerdtree
rm -rf nerdtree.tar.gz

echo "Installing ctrlp=${ctrlp_v}"
wget -q -O ctrlp.tar.gz https://github.com/ctrlpvim/ctrlp.vim/archive/refs/tags/${ctrlp_v}.tar.gz
tar -xzf ctrlp.tar.gz
mv ctrlp.vim-${ctrlp_v} $PLUGINS/ctrlp
rm -rf ctrlp.tar.gz

echo "Installing vim-lsp=${vimlsp_v}"
wget -q -O vim-lsp.tar.gz https://github.com/prabirshrestha/vim-lsp/archive/refs/tags/v${vimlsp_v}.tar.gz
tar -xzf vim-lsp.tar.gz
mv vim-lsp-${vimlsp_v} $PLUGINS/lsp
rm -rf vim-lsp.tar.gz

echo "Installation completed."
