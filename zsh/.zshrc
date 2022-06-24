# ##################### variables ##########################

# starship config file location
export STARSHIP_CONFIG=~/.config/starship/config.toml

# history file
HISTFILE=~/.zsh_history

# history size
HISTSIZE=10000
SAVEHIST=10000

# call zgenom reset when file changes
ZGEN_RESET_ON_CHANGE=(~/.zshrc)

# auto suggestion strategy
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# ####################### plugins ##########################

# load zgenom
. ~/.zgenom/zgenom.zsh

# update zgenom
zgenom autoupdate

# check if init script exists
if ! zgenom saved
then
    # extra completions
    zgenom load zsh-users/zsh-completions

    # auto suggestions
    zgenom load zsh-users/zsh-autosuggestions

    # syntax highlighting
    zgenom load zsh-users/zsh-syntax-highlighting

    # generate init script
    zgenom save
fi

# ###################### options ###########################

# show start time and duration in history
setopt extended_history

# remove unrequired spaces
setopt hist_reduce_blanks

# append (immediately) history from all sessions
setopt append_history
setopt inc_append_history_time

# avoid duplicates
setopt hist_expire_dups_first
setopt hist_ignore_dups

# don't directly execute history command
setopt hist_verify

# complete path from prefixes
setopt complete_in_word

# let command give error if no match
unsetopt nomatch

# don't notify immediately
unsetopt notify

# default/emacs keybindings
bindkey -e

# ##################### terminal title #####################

# command to update terminal title
function set_title()
{
    case $TERM in
        screen*|tmux*)
            echo -ne "\033k$1\033\\";;
        *)
            echo -ne "\033]0;$1\007";;
    esac
}

# command to run before showing prompt
function set_title_precmd()
{
    local TITLE=$(print -P "%1~")
    set_title $TITLE
}

# command to run before executing any command
function set_title_preexec()
{
    setopt extended_glob
    local TITLE=$(print -P "%1~: ${1[(wr)^(*=*|sudo|-*)]:gs/%/%%}")
    set_title $TITLE 
}

# add hooks
autoload -U add-zsh-hook
add-zsh-hook precmd set_title_precmd
add-zsh-hook preexec set_title_preexec

# ######################### aliases ########################

# common aliases
alias ls="ls --color=auto"
alias grep="grep --color=auto"
alias tmux="tmux -u"
alias history="history -ndD"

# load custom aliases
if [ -f ~/.zsh_aliases ]
then
    . ~/.zsh_aliases
fi

# ####################### prompt ###########################

# starship prompt
eval "$(starship init zsh)"

