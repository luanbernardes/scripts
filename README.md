# SCRIPTS
Create some scripts that help me

# Set up - Ubuntu 
When I install a new Ubuntu, I need to install some packages and configure some things. This script will help me to do this.

## will install:
- **vim**, **curl**, **git**
- **zsh** and **oh-my-zsh**
    - will clear your zshrc file and fill with configs 
- **asdf** with *node* and *go* plugins

## How to Install

- run `make step-1`
- after finish, make a linux logout
- run `make step-2` to finish installation

### Need to fix:
- Not installing 2 asdf plugins, need to run manually:
```
git clone https://github.com/fdellwing/zsh-bat.git $ZSH_CUSTOM/plugins/zsh-bat &&
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-use
```
