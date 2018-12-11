#!/bin/zsh

# .zshenv - Personal ZSH Configuration

# Author: Andrew Cherry <andrew@xyncro.com>
# Keywords: zsh, init
# URL: https://github.com/kolektiv/.zsh.d

# Code:

# ==============================================================================

# Directory

# Set the zdotdir variable to point to ~/.zsh.d

export ZDOTDIR=${HOME}/.zsh.d

# ZSH/OhMyZSH

export ZSH=${HOME}/.oh-my-zsh
export ZSH_CUSTOM=${ZDOTDIR}/custom

# ------------------------------------------------------------------------------

# Path

# Configuration of the PATH is managed by sourcing a single .zpath file, which
# may be sourced with appropriate guards by multiple .zsh* files.

if [[ $SHLVL == 1 && ! -o LOGIN ]]; then
    source ${ZDOTDIR}/.zpath
fi

# ------------------------------------------------------------------------------

# .zshenv ends here.
