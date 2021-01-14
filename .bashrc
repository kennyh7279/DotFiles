#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

#PS1='[\u@\h \W]\$ '

############################
## Personal bash settings ##
############################

PS1='\w \$ '

## Check for .local/bin and add to path
if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

## Launch pfetch with terminal
pfetch

#############
## Aliases ##
#############

## System ##
alias grep='grep --color=auto'
alias ls='ls -A'

## General Use ##
alias grubrefresh="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias cacheclean="rm -rf ~/.cache/*"

## Arch System Cleanup ##
alias pkgcacheclean="sudo pacman -Sc"
alias orphanclean="sudo pacman -Rns $(pacman -Qtdq)"

####################
## Other Settings ##
####################

## Environment Defaults
export EDITOR=nvim

## Java ## 
alias java8="/usr/lib/jvm/jdk1.8.0_271/bin/java" # Java 8 required for minion addon manager
export PATH_TO_FX=$HOME/Development/Libs/javafx-sdk-11.0.2/lib
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_271

## Doom Emacs ##

# Run doom emacs in terminal mode
alias emacs="emacs -nw"

if [ -d "$HOME/.emacs.d/bin" ] ;
then PATH="$HOME/.emacs.d/bin:$PATH"
fi
