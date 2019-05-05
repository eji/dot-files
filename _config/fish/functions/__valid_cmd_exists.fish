function __valid_cmd_exists
  set _cmd $argv[1]
  if not type -q $_cmd
    __warn Please install `$_cmd`.
    return 1
  end
end
