export LANG="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"

if [[ $(uname) == 'Darwin' ]] # MacOSX
then
  export JAVA_HOME=$(/usr/libexec/java_home)
else
  export JAVA_HOME=
fi

export PATH=~/local/bin:/usr/local/bin:$PATH

export GAUCHE_LOAD_PATH=".:./lib:./src"

export ANDROID_HOME=/opt/homebrew-cask/Caskroom/android-studio/0.8.6\ build-135.1339820/Android\ Studio.app/sdk

export GOPATH=$HOME/golang
export PATH=$PATH:$GOPATH/bin
export GO15VENDOREXPERIMENT=1
