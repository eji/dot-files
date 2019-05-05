if status is-interactive; and test -e $HOME/.rbenv/bin/rbenv
  set PATH $HOME/.rbenv/bin $PATH
  source (rbenv init - | psub)
else
  __warn Please install `rbenv`
end

set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths

bind \cg '__ghq_crtl_g'
if bind -M insert >/dev/null ^/dev/null
    bind -M insert \cg '__ghq_crtl_g'
end

if __valid_cmd_exists nvim
  set -g -x EDITOR 'nvim'
end

if __valid_cmd_exists direnv
  eval (direnv hook fish)
end

if status is-interactive; and __valid_cmd_exists nodenv
  source (nodenv init - | psub)
end

switch (uname)
  case Linux
    if status is-interactive; and test -e /home/linuxbrew/.linuxbrew/bin/brew
      eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
    else
      __warn Please install `brew`
    end
  case '*'
    # do nothing
end

__valid_cmd_exists fzf
