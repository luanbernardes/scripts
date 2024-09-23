#!/bin/zsh
Yellow='\033[0;33m'       # Yellow

# Update package list
sudo apt-get update

echo "$Yellow $SHELL"

#install oh-my-zsh
echo "$Yellow installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# ----------------- config -----------------
# install zsh plugins
echo "$Yellow ZSH: installing plugins"
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/asdf-vm/asdf.git ~/.asdf

# update .zshrc file
# clear file
bash ./clear_file.sh ./test.txt
echo "$Yellow ZSH: changing .zshrc file"
zshrcContent="export ZSH=\"$HOME/.oh-my-zsh\"

plugins=(git asdf zsh-autosuggestions zsh-syntax-highlighting you-should-use zsh-bat)

source $ZSH/oh-my-zsh.sh

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
"
echo "$zshrcContent" > ~/.zshrc
echo "$Yellow ZSH: ~/.zshrc updated"
