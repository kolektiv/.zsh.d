#!/bin/zsh

# .zshrc - Personal ZSH Configuration

# Author: Andrew Cherry <andrew@xyncro.com>
# Keywords: zsh, init
# URL: https://github.com/kolektiv/.zsh.d

# Code:

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
ENABLE_CORRECTION="true"

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

# Settings

# History file location

HISTFILE="${ZDOTDIR}/.zsh_history"

# ==============================================================================

# Plugins

plugins=(brew cargo git npm npx nvm rust stack tmux tmuxinator)

# ==============================================================================

# Load

source $ZSH/oh-my-zsh.sh
source $HOME/.cargo/env

# ==============================================================================

# Aliases

# ------------------------------------------------------------------------------

# Code

CODE_ROOT="${HOME}/.vscode.d"
CODE_EXTS="${CODE_ROOT}/extensions"
CODE_USER="${CODE_ROOT}/user"

alias code='code --extensions-dir=${CODE_EXTS} --user-data-dir=${CODE_USER}'

# ------------------------------------------------------------------------------

# ls

alias ls='gls --color=auto --group-directories-first'

# ------------------------------------------------------------------------------

# .zshrc ends here.
