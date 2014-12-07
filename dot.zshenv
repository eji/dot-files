export LANG="ja_JP.UTF-8"
export LC_ALL="ja_JP.UTF-8"

if [[ $(uname) == 'Darwin' ]] # MacOSX
then
  export JAVA_HOME=$(/usr/libexec/java_home)
else
  export JAVA_HOME=
fi

export PATH=/usr/local/bin:$PATH
