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

# prompt 
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' max-exports 6 # formatに入る変数の最大数
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' formats '%b@%r' '%c' '%u'
zstyle ':vcs_info:git:*' actionformats '%b@%r|%a' '%c' '%u'
setopt prompt_subst
function vcs_echo {
    local st branch color
    STY= LANG=en_US.UTF-8 vcs_info
    st=`git status 2> /dev/null`
    if [[ -z "$st" ]]; then return; fi
    branch="$vcs_info_msg_0_"
    if   [[ -n "$vcs_info_msg_1_" ]]; then color=${fg[green]} #staged
    elif [[ -n "$vcs_info_msg_2_" ]]; then color=${fg[red]} #unstaged
    elif [[ -n `echo "$st" | grep "^Untracked"` ]]; then color=${fg[blue]} # untracked
    else color=${fg[cyan]}
    fi
    echo "%{$color%}(%{$branch%})%{$reset_color%}" | sed -e s/@/"%F{yellow}@%f%{$color%}"/
}
PROMPT='
%(?.%F{green}[st:%?] %f.%F{red}[st:%?] %f) %F{yellow}[%n@%M:%~]%f `vcs_echo`
%(?.%F{green}➥ %f.%F{red}➥ %f) '
