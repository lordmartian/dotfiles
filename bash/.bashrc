# set env variables
export STARSHIP_CONFIG=~/.config/starship/config.toml

# common aliases
alias tmux="tmux -u"
alias ls="ls --color=auto"

# load custom aliases
if [ -f ~/.bash_aliases ]
then
    . ~/.bash_aliases
fi

# start starship prompt
eval "$(starship init bash)"

