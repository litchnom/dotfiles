#!/bin/bash

rm $HOME/default.png

# packages
editor=neovim
xserver"xorg xorg-apps xorg-xinit xterm"
wm="i3-gaps"
terminal="rxvt-unicode"
shell="zsh zsh-syntax-highlighting"
utils="git ranger feh redshift scrot rofi alsa-utils anki"
rice="neofetch python-pywal"
python="python python-pip"
fonts="tamsyn-font"
browser="firefox"

sudo pacman -Rnsc $editor $wm $xserver $terminal $shell $utils $rice $python $fonts $browser

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/uninstall.sh)"

sudo rm -r .cache 
sudo rm -r .cfg 
sudo rm -r .gnupg 
sudo rm -r .local 
sudo rm -r .oh-my-zsh 
sudo rm -r .viminfo
sudo rm -r .bash_history
sudo rm -r .bash_logout
sudo rm -r .bash_profile
sudo rm -r .bashrc
sudo rm -r .config
sudo rm -r .zcompdump*
sudo rm -r .zsh_history
sudo rm -r .zshrc
sudo rm -r git
sudo rm -r .Xauthority
sudo rm -r .Xresources
sudo rm -r .fehbg
sudo rm -r .scripts
sudo rm -r .xinitrc
sudo rm -r .gitconfig
sudo rm -r .mozilla
sudo rm -r tools

#!/bin/bash


