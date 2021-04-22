#!/usr/bin/sh

## backup current .bashrc file just in case
cp $HOME/.bashrc $HOME/.bashrc.old

## Automatically set up symlinks
ln -rs .shell-personal $HOME

## Have bash source the new personal file
cat >$HOME/.bashrc <<EOL
# source personal shell settings
if [ -f $HOME/.shell-personal ]; then
	. $HOME/.shell-personal
fi
EOL

## Source
. $HOME/.bashrc
