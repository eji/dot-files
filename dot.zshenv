export LANG="ja_JP.UTF-8"

export NODE_PATH="/usr/local/lib/node_modules"
export ANDROID_HOME=/Users/eji/Library/android-sdk-mac_x86
path=($HOME/local/bin /usr/local/stow.local/bin /usr/local/bin /usr/bin /bin )
. $HOME/.pythonbrew/etc/bashrc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

[[ -s "/Users/eji/.rvm/scripts/rvm" ]] && source "/Users/eji/.rvm/scripts/rvm"  # This loads RVM into a shell session.

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
nvm use default
npm_dir=${NVM_PATH}_modules
export NODE_PATH=$npm_dir
