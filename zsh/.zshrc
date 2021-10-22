# ===================== init settings ======================

# =================== oh-my-zsh settings ===================

# Path to oh-my-zsh installation.
export ZSH="/home/smeetrs/.oh-my-zsh"

# Set zsh theme 
ZSH_THEME="dracula/dracula"

# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Plugins to load
plugins=(vi-mode zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ===================== my settings ========================

ZLE_RPROMPT_INDENT=0

# Remove all oh-my-zsh aliases
unalias -a

# Aliases
alias ls="ls --color=auto"

