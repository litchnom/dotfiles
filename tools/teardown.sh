#!/bin/bash

rm $HOME/default.png

# packages
utils="ranger feh redshift scrot rofi"
rice="neofetch cmatrix python-pywal"
browser="firefox"
shell="zsh zsh-syntax-highlighting"
fonts="tamsyn-font"
terminal="termite"
wm="i3-gaps"
xserver="xorg xorg-xinit"
python="python-pip python"
editor="neovim"

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
sudo rm -r ".zcompdump-limiting-factor-5.5.1"
sudo rm -r .zsh_history
sudo rm -r .zshrc
sudo rm -r git
sudo rm -r .Xauthority
sudo rm -r .Xresources
sudo rm -r .fehbg
sudo rm -r .scripts
sudo rm -r .xinitrc
#!/bin/bash


