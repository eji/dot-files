stty erase "^H" # C-h: backspace key

# Completion
## First, load auto completion module.
autoload -U compinit
## Second, initialize completion.
compinit
## Set to ignore upper / lower case
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'


# History
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=100000

# output a string even if is hasn't newline character.
unsetopt promptcr

# deny to write with redirect
setopt no_clobber

# block ^D logout
setopt ignore_eof

# display list of possible completions (^I)
setopt auto_list

# notify immediately if background job was finished
setopt no_tify

# record history line with time
setopt extended_history

# add history line incrementally
setopt inc_append_history

# share history
setopt share_history

setopt hist_ignore_dups

# Emacs like keybind
bindkey -e

# Aliases
alias ls="ls -Fp"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

alias -g L='| lv -c'
alias -g V='| view -'

function ssh_screen(){
    eval server=\${$#}
    screen -t $server ssh "$@"
}
if [ x$TERM = xscreen ]; then
    alias ssh=ssh_screen
fi

