#!/usr/bin/env bash

export PATH="$HOME/bin:$PATH"

# From: http://stackoverflow.com/questions/9457233/unlimited-bash-history/19533853#19533853

# Eternal bash history.
# ---------------------
# Undocumented feature which sets the size to "unlimited".
# http://stackoverflow.com/questions/9457233/unlimited-bash-history
export HISTFILESIZE=
export HISTSIZE=
export HISTTIMEFORMAT="[%F %T] "
# Change the file location because certain bash sessions truncate .bash_history file upon close.
# http://superuser.com/questions/575479/bash-history-truncated-to-500-lines-on-each-login
export HISTFILE=~/.bash_eternal_history
# Force prompt to write history after every command.
# http://superuser.com/questions/20900/bash-history-loss
PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init bash)"
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/Applications/PyCharm.app/Contents/MacOS:$PATH"

alias gst='git status'

alias ll="ls -al"

eval "$(/opt/homebrew/bin/brew shellenv bash)"
export PATH=${PATH}:/opt/homebrew/opt/python/libexec/bin

eval "$(/opt/homebrew/bin/brew shellenv bash)"
export PATH=${PATH}:/opt/homebrew/opt/python/libexec/bin

# -------------------------------------------------------
# for AFNI: auto-inserted by init_user_dotfiles.py

# add AFNI abin to PATH
export PATH=${PATH}:/Users/halledz/abin

# set up tab completion for AFNI programs
if [ -f $HOME/.afni/help/all_progs.COMP.bash ]
then
   source $HOME/.afni/help/all_progs.COMP.bash
fi
# -------------------------------------------------------


eval "$(/opt/homebrew/bin/brew shellenv bash)"
export PATH=${PATH}:/opt/homebrew/opt/python/libexec/bin
export R_LIBS=/Users/halledz/sw/R-4.3.1
