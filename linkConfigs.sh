#!/bin/bash


# backup old & link i3 config
mv ~/.config/i3 ~/.config/i3_old
ln -sr ./i3 ~/.config/ 
