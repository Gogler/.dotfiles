#!/bin/bash
#------------------------------------------------------------------------------
# Aliases
#------------------------------------------------------------------------------
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cdwork='cd $WORK_DIR'

#------------------------------------------------------------------------------
# Exports
#------------------------------------------------------------------------------
export LOCAL_ENVS_FILE=~/envs.sh
if [[ -f $LOCAL_ENVS_FILE ]]; then
    source $LOCAL_ENVS_FILE
fi
