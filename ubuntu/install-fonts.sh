#!/bin/bash
sudo cp ../fonts/* ${HOME}/.local/share/fonts/ && fc-cache -f -v

echo "Installing Microsoft Core Fonts..."
sudo apt-get -y install ttf-mscorefonts-installer
