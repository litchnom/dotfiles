#!/bin/bash

# packages
editor=neovim
xserver="xorg xorg-apps xorg-xinit xterm"
wm="i3-gaps"
terminal="urxvt"
shell="zsh zsh-syntax-highlighting"
utils="git ranger feh redshift scrot rofi"
rice="neofetch python-pywal"
python="python python-pip"
fonts="tamsyn-font"
browser="firefox"

sudo pacman -S $editor $xserver $wm $terminal $shell $utils $rice $python $fonts $browser



# get forked copy of oh my zsh with chsh removed
sh -c "$(curl -fsSL https://raw.githubusercontent.com/monodokimes/oh-my-zsh/master/tools/install.sh)"
# remove .zshrc since it conflicts with our custom one
rm "$HOME/.zshrc"



# get dots
dotdir="$HOME/.cfg"
mkdir $dotdir
git init --bare $dotdir
# first time config on dotfiles repo
cfg="git --git-dir=$dotdir --work-tree=$HOME"
$cfg config --local status.showUntrackedFiles no
# set the remote
remote="https://github.com/litchnom/dotfiles"
$cfg remote add origin $remote
# download latest version
$cfg pull origin master



# set up neovim plugins
curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
sudo pip3 install neovim

# create neovim setup script
vimsetup="$HOME/setup.vim"
touch $vimsetup
echo ":UpdateRemotePlugins" >> "$vimsetup"
echo ":PlugInstall" >> "$vimsetup"
echo ":q" >> "$vimsetup"
echo ":q" >> "$vimsetup"
echo ":q" >> "$vimsetup"

# run setup script
nvim -S "$vimsetup"

# now we're done with the setup script, get rid of it
rm "$vimsetup"



# configure git
git config --global alias.st status



# clear up
clear
neofetch

echo
echo "Done!"
echo 
echo "To reset run teardown.sh"
echo
echo "Next steps:"
echo "exit"
echo "login"
echo "startx"
echo "./postx.sh"
