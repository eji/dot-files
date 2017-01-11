export LANG="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"

if [[ $(uname) == 'Darwin' ]] # MacOSX
then
  export JAVA_HOME=$(/usr/libexec/java_home)
else
  export JAVA_HOME=
fi

export PATH=$HOME/.cargo/bin:~/local/bin:/usr/local/bin:$PATH

export GAUCHE_LOAD_PATH=".:./lib:./src"

export ANDROID_HOME=/opt/homebrew-cask/Caskroom/android-studio/0.8.6\ build-135.1339820/Android\ Studio.app/sdk
export ANDROID_SDK=/Users/eji/Library/Android/sdk

export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin:$ANDROID_SDK/platform-tools
export GO15VENDOREXPERIMENT=1
export EDITOR=vim

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

eval "$(direnv hook zsh)"

source <(kubectl completion zsh)
source $HOME/.cargo/env
