# ===================== init settings ======================

# set env variables
export STARSHIP_CONFIG=~/.config/starship/config.toml

# =================== oh-my-zsh settings ===================

# path to oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# plugins to load
plugins=(vi-mode zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ===================== my settings ========================

# remove all oh-my-zsh aliases
unalias -a

# remove extra space at end of right prompt
ZLE_RPROMPT_INDENT=0

# load aliases
if [[ -f ~/.zsh_aliases ]]
then
    source ~/.zsh_aliases
fi

# start starship prompt
eval "$(starship init zsh)"

