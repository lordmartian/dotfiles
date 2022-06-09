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

# only current dir in terminal title
ZSH_WINDOW_TITLE_DIRECTORY_DEPTH=1

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
    # setting terminal title
    zgenom load olets/zsh-window-title

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

# ######################### aliases ########################

# common aliases
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

