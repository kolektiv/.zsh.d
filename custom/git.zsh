#!/bin/zsh

# git.zsh - Git ZSH Function Patches

# Author: Andrew Cherry <andrew@xyncro.com>
# Keywords: zsh, git
# URL: https://github.com/kolektiv/.zsh.d

# Code:

# ==============================================================================

# Remote

# Modified to include the equals indicator in the detailed remote status.

function git_remote_status() {
    local remote ahead behind git_remote_status git_remote_status_detailed
    remote=${$(command git rev-parse --verify ${hook_com[branch]}@{upstream} --symbolic-full-name 2>/dev/null)/refs\/remotes\/}
    if [[ -n ${remote} ]]; then
        ahead=$(command git rev-list ${hook_com[branch]}@{upstream}..HEAD 2>/dev/null | wc -l)
        behind=$(command git rev-list HEAD..${hook_com[branch]}@{upstream} 2>/dev/null | wc -l)

        if [[ $ahead -eq 0 ]] && [[ $behind -eq 0 ]]; then
            git_remote_status="$ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE"
            git_remote_status_detailed="$ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE"
        elif [[ $ahead -gt 0 ]] && [[ $behind -eq 0 ]]; then
            git_remote_status="$ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE"
            git_remote_status_detailed="$ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR$ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE$((ahead))%{$reset_color%}"
        elif [[ $behind -gt 0 ]] && [[ $ahead -eq 0 ]]; then
            git_remote_status="$ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE"
            git_remote_status_detailed="$ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR$ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE$((behind))%{$reset_color%}"
        elif [[ $ahead -gt 0 ]] && [[ $behind -gt 0 ]]; then
            git_remote_status="$ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE"
            git_remote_status_detailed="$ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR$ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE$((ahead))%{$reset_color%}$ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR$ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE$((behind))%{$reset_color%}"
        fi

        if [[ -n $ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED ]]; then
            git_remote_status="$ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX$remote$git_remote_status_detailed$ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX"
        fi

        echo $git_remote_status
    fi
}

# ------------------------------------------------------------------------------

# git.zsh ends here.
