#!/bin/bash

# restore to default settings on Ubuntu
cp ~/.bashrc ~/.bashrc.bak
cp /etc/skel/.bashrc ~/
source ~/.bashrc
