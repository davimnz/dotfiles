#!/bin/bash

echo "Downloading packages..."

sudo apt update -y -qq
sudo apt install -y -qq clangd jq

VIMROOT=$HOME/.vim
PLUGINSPATH=$VIMROOT/pack/plugins/start
mkdir -p $VIMROOT
mkdir -p $PLUGINSPATH
mkdir -p $COLORSPATH

pluginslist=$(jq -c '.[]' config.json)

pushd /tmp
for row in $pluginslist; do
  plugin=$(echo "$row" | jq -r '.plugin')
  tag=$(echo "$row" | jq -r '.tag')
  url=$(echo "$row" | jq -r '.url')

  pluginstr="${plugin}=${tag}"
  pluginzip="${plugin}.zip"

  echo "Downloading plugin ${pluginstr}"
  wget -q -O ${pluginzip} $url/${tag}.zip

  echo "Installing plugin ${pluginstr}"
  unzip -qq ${pluginzip}
  foldername=$(unzip -Z1 ${pluginzip} | head -1 | cut -d/ -f1)
  mv $foldername $PLUGINSPATH/$plugin
  rm -rf ${pluginzip}
done
popd

echo "Installing colors..."
cp -r colors $VIMROOT

echo "Installing .vimrc..."
cp .vimrc ~/.vimrc

echo "Done"

