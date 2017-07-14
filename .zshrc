#!/bin/zsh

# .zshrc - Personal ZSH Configuration

# Author: Andrew Cherry <andrew@xyncro.com>
# Keywords: zsh, init
# URL: https://github.com/kolektiv/.zsh.d

# Code:

# ==============================================================================

# Paths

export ZSH=~/.oh-my-zsh
export ZSH_CUSTOM=~/.zsh.d/custom

# ==============================================================================

# Themes

ZSH_THEME="kolektiv"

# ==============================================================================

# Options

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"

HIST_STAMPS="yyyy-mm-dd"

# ==============================================================================

# Plugins

plugins=()

# ------------------------------------------------------------------------------

# brew

plugins=($plugins brew)

# ------------------------------------------------------------------------------

# git

plugins=($plugins git)

# ------------------------------------------------------------------------------

# npm

plugins=($plugins npm)

# ------------------------------------------------------------------------------

# nvm

plugins=($plugins nvm)

# ------------------------------------------------------------------------------

# tmux

plugins=($plugins tmux)

# ------------------------------------------------------------------------------

# tmuxinator

plugins=($plugins tmuxinator)

# ==============================================================================

# Aliases

# ------------------------------------------------------------------------------

# tmuxinator

alias mux='tmuxinator'
alias muxs='tmuxinator start .'

# ==============================================================================

# Load

source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------------------------

# .zshrc ends here.
