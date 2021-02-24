#!/bin/bash

############################
## Personal bash settings ##
############################

PS1='\w \$ '

## Check for .local/bin and add to path
if [ -d "$HOME/.local/bin" ]; then
  PATH="$HOME/.local/bin:$PATH"
fi

## Launch pfetch with terminal
pfetch

#############
## Aliases ##
#############

alias python="python3"
alias pip="pip3"

alias mjava="/usr/lib/jvm/jre1.8.0_281/bin/java" # Java 8 required for minion addon manager

#############
## Exports ##
#############

export PATH_TO_FX=$HOME/Development/Libs/javafx-sdk-11.0.2/lib
export JAVA_HOME=/usr/lib/jvm/jdk1.8.0_271
