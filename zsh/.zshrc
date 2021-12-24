# ===================== init settings ======================

# set env variables
export STARSHIP_CONFIG=~/.config/starship/config.toml

# =================== oh-my-zsh settings ===================

# Path to oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Plugins to load
plugins=(vi-mode zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ===================== my settings ========================

# Remove all oh-my-zsh aliases
unalias -a

# Remove extra space at end of right prompt
ZLE_RPROMPT_INDENT=0

# Load aliases
if [[ -f ~/.zsh_aliases ]]
then
    source ~/.zsh_aliases
fi

# Start starship prompt
eval "$(starship init zsh)"
