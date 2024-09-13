#!/bin/bash

# Restore to default settings for Ubuntu-based systems
cp ~/.bashrc ~/.bashrc.bak
cp /etc/skel/.bashrc ~/
source ~/.bashrc
