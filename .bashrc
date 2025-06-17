# greeting
# echo 'may god be with you'

# setting config vars
export EDITOR=nvim
# export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export KOMOREBI_CONFIG_HOME="$XDG_CONFIG_HOME/komorebi"
export WHKD_CONFIG_HOME="$KOMOREBI_CONFIG_HOME"

# fzf default options
_fzf_default_opts() {
    export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

    export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
        --color=fg:-1,bg:-1,hl:#7aa89f \
        --color=fg+:#dcd7ba,bg+:#16161D,hl+:#2d4f67 \
        --color=info:#7e9cd8,prompt:#7e9cd8,pointer:#2d4f67 \
        --color=marker:#7aa89f,spinner:#2d4f67,header:#98bb6c \
    "
}

# fzf
_fzf_default_opts
eval "$(fzf --bash)"

# aliases
alias clr='clear'
alias e='exit'
alias cdb='cd ..'
alias fvim='fzf --bind "enter:become(nvim {})"'

# interface stuff 
export PS1="[\u@\h] \w\n\$ "

# save history on only current session
trap "history -c && history -w" EXIT
