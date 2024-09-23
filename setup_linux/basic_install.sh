#!/bin/bash
# Update package list
sudo apt-get update

# List of packages to install
echo "installing vim, curl and git"
packages=("vim" "curl" "git")

# Loop through the list and install each package
for package in "${packages[@]}"; do
    sudo apt-get install "$package" -y
done

# Install asdf
echo "installing asdf"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf