#
# Display VCS(Git, Mercurial, etc) branches info to command prompt.
#
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '[%b]-<%r>'
zstyle ':vcs_info:*' actionformats '[%b|%a]-<%r>'
zstyle ':vcs_info:*' branchformats '[%b|%a]-<%r>'
precmd () {
    psvar=()
    LANG=en_US.UTF-8 vcs_info
    [[ -n "$vcs_info_msg_0_" ]] && psvar[1]="$vcs_info_msg_0_"
}
RPROMPT="%1(v|%F{green}%1v%f|)"

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

# Emacs like keybind
bindkey -e

# Aliases
alias ls="ls -F"
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -i"

