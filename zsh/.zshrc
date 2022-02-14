# ===================== init settings ======================

# set env variables
export STARSHIP_CONFIG=~/.config/starship/config.toml

# =================== oh-my-zsh settings ===================

# path to oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# _ and - will be interchangeable.
HYPHEN_INSENSITIVE=true

# plugins to load
plugins=(vi-mode zsh-syntax-highlighting)

# load oh-my-zsh
if [ -f $ZSH/oh-my-zsh.sh ]
then
    . $ZSH/oh-my-zsh.sh
fi

# ===================== my settings ========================

# remove all oh-my-zsh aliases
unalias -a

# common aliases
alias tmux="tmux -u"
alias ls="ls --color=auto"

# load custom aliases
if [ -f ~/.zsh_aliases ]
then
    . ~/.zsh_aliases
fi

# remove extra space at end of right prompt
ZLE_RPROMPT_INDENT=0

# start starship prompt
eval "$(starship init zsh)"

