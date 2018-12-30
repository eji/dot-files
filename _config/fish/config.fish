if status is-interactive
  set PATH $HOME/.rbenv/bin $PATH
  . (rbenv init - | psub)
end
set -g fish_user_paths "/usr/local/opt/gettext/bin" $fish_user_paths
