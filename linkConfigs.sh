#!/bin/bash

## TODO add gpg encryted sensible config files


# backup old & link i3 config
mv ~/.config/i3 ~/.config/i3_old
ln -sr ./i3 ~/.config/ 


# SYSTEM CONFIGS
# /etc/locale.gen
sudo mv /etc/locale.gen /etc/locale.gen.old
sudo cp ./etc/locale.gen /etc/locale.gen
sudo locale-gen

# bashrc
mv ~/.bashrc ~/.bashrc.old
ln -sr ./.bashrc ~/.bashrc

# bash_profile
mv ~/.bash_profile ~/.bash_profile.old
ln -sr ./.bash_profile ~/.bash_profile

# zshrc
mv ~/.zshrc ~/.zshrc.old
ln -sr ./.zshrc ~/.zshrc
