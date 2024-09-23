#!/bin/zsh

Yellow='\033[0;33m'       # Yellow

# Update package list
sudo apt-get update

# ----------------- install -----------------
#install zsh
echo "$Yellow installing zsh and turn to default shell"
sudo apt install zsh -y
chsh -s "$(which zsh)"
zsh --version
echo "$Yellow You need to logout"
