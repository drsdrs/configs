#!/bin/bash

## TODO add gpg encryted sensible config files


# install config software needs
sudo pacman -S j4-dmenu-desktop

# backup old & link i3 config
mv ~/.config/i3 ~/.config/i3.backup
ln -sr ./i3 ~/.config/ 


# SYSTEM CONFIGS
# /etc/locale.gen
sudo mv /etc/locale.gen /etc/locale.gen.backup
sudo cp ./etc/locale.gen /etc/locale.gen
sudo locale-gen

# bashrc
mv ~/.bashrc ~/.bashrc.backup
ln -sr ./.bashrc ~/.bashrc

# bash_profile
mv ~/.bash_profile ~/.bash_profile.backup
ln -sr ./.bash_profile ~/.bash_profile

# zshrc
mv ~/.zshrc ~/.zshrc.backup
ln -sr ./.zshrc ~/.zshrc


# other system requirements
#ln -s /home/working/workingData/projects ~/projects
#ln -sr /home/working/3dObjects/ ~/
