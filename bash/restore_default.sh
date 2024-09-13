#!/bin/bash

# Restore to default settings on Ubuntu-based systems
cp ~/.bashrc ~/.bashrc.bak
cp /etc/skel/.bashrc ~/
source ~/.bashrc
