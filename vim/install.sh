#!/bin/bash

echo "Downloading packages..."

sudo apt update -y -qq
sudo apt install -y -qq clangd

PLUGINS=$HOME/.vim/pack/plugins/start

nerdtree_v=7.1.3
ctrlp_v=1.81
vimlsp_v=0.1.4
asyncomplete_v=2.1.0
asyncompletelsp_v=cc5247bc268fb2c79d8b127bd772514554efb3ee

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

echo "Installing asyncomplete=${asyncomplete_v}"
wget -q -O asyncomplete.tar.gz https://github.com/prabirshrestha/asyncomplete.vim/archive/refs/tags/v${asyncomplete_v}.tar.gz
tar -xzf asyncomplete.tar.gz
mv asyncomplete.vim-${asyncomplete_v} $PLUGINS/asyncomplete
rm -rf asyncomplete.tar.gz

echo "Installing asyncompletelsp=${asyncompletelsp_v}"
wget -q -O asyncompletelsp.zip https://github.com/prabirshrestha/asyncomplete-lsp.vim/archive/${asyncompletelsp_v}.zip
unzip -qq asyncompletelsp.zip
mv asyncomplete-lsp.vim-${asyncompletelsp_v} $PLUGINS/asyncompletelsp
rm -rf asyncompletelsp.zip

echo "Installation completed."
