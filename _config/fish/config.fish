if status is-interactive
  set PATH $HOME/.rbenv/bin $PATH
  . (rbenv init - | psub)
end
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths

bind \ce '__ghq_crtl_g'
if bind -M insert >/dev/null ^/dev/null
    bind -M insert \ce '__ghq_crtl_g'
end
