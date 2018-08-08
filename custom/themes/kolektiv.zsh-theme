#!/bin/zsh

# kolektiv.zsh-theme - Personal ZSH Theme

# Author: Andrew Cherry <andrew@xyncro.com>
# Keywords: zsh, theme
# URL: https://github.com/kolektiv/.zsh.d

# Code:

# ==============================================================================

# Options

setopt prompt_subst

# ------------------------------------------------------------------------------

# Colours

local g0="$FG[252]"
local g1="$FG[246]"
local g2="$FG[240]"

local e0="$FG[202]"

local x0="$FG[123]"
local x1="$FG[119]"

# ------------------------------------------------------------------------------

# Common

# Re-usable separators, etc. for forming parts of prompts.

local at="${g2}@"
local double="${g2}::"
local pipe="${g2}|"
local dot="${g2}."

# ------------------------------------------------------------------------------

# Prompt 1

# A simple multiline prompt1, showing user/machine identity, history, shell
# level and current location on the first line, and a simple privilege indicator
# (showing return status as a warning colour if needed) and arrow prompt.

local identity="${g1}%n ${at} ${g1}%m"
local hist="${g2}hist ${g1}%h"
local level="${g2}lvl ${g1}%L${g0}"
local location="${g2}path ${g1}%~"

local privilege="%(?:${g0}:${e0})%#"
local arrow=">${g0}"

# Prompt

PROMPT="
${identity} ${pipe} ${hist} ${pipe} ${level} ${pipe} ${location}
${privilege}${arrow} "

# ------------------------------------------------------------------------------

# Right Prompt

# A right prompt for contextual information, showing a base datetime (always
# present) and optional extra information displays, such as git status and info
# in working directories, etc.

# Git

ZSH_THEME_GIT_PROMPT_PREFIX="${g2}git ${g1}"
ZSH_THEME_GIT_PROMPT_DIRTY=" ${g0}*"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_SUFFIX=" "

ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" ${at} ${g1}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER=" ${g2}-> ${g0}"

ZSH_THEME_GIT_PROMPT_UNTRACKED="?"
ZSH_THEME_GIT_PROMPT_ADDED="+"
ZSH_THEME_GIT_PROMPT_MODIFIED="!"
ZSH_THEME_GIT_PROMPT_RENAMED="~"
ZSH_THEME_GIT_PROMPT_DELETED="-"
ZSH_THEME_GIT_PROMPT_UNMERGED="*"

ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE=" ${g1}=="
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" ${g0}+"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" ${g0}-"
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="${g1}"
ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX=" ${pipe} "

function git_info() {
    echo "$(git_prompt_info)$(git_prompt_status)$(git_prompt_short_sha)$(git_remote_status)"
}

# Datetime

local datetime="${g2}%D{%Y-%m-%d %H:%M:%S}"

# Prompt

RPROMPT='$(git_info)${datetime}${g0}'

# ------------------------------------------------------------------------------

# kolektiv.zsh-theme ends here.
