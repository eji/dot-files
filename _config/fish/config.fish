if status is-interactive
  set PATH $HOME/.rbenv/bin $PATH
  . (rbenv init - | psub)
end
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths

bind \cg '__ghq_crtl_g'
if bind -M insert >/dev/null ^/dev/null
    bind -M insert \cg '__ghq_crtl_g'
end

set -g -x EDITOR 'nvim'
eval (direnv hook fish)

status --is-interactive; and source (nodenv init -|psub)
