#!/bin/sh
#
# When you execute this script, create hard link at your homedir.
#
# Usage:
#   ./setup.sh
#

set -ex

SCRIPT_RELATIVE_PATH=$(dirname $0)
pushd $SCRIPT_RELATIVE_PATH 1> /dev/null 2>&1
SCRIPT_ABSOLUTE_PATH=$(pwd)
popd 1> /dev/null 2>&1

for f in $SCRIPT_ABSOLUTE_PATH/dot.*
do
  NEWDOT=$(basename $f | sed 's/dot//')
  echo "s: ${f}-> $HOME/$NEWDOT"
  rm -f $HOME/$NEWDOT
  ln -sf $f $HOME/$NEWDOT
done

# ~/.config
mkdir -p ~/.config
for f in $SCRIPT_ABSOLUTE_PATH/_config/*
do
  CONFIG_DIR=$(basename $f)
  echo "s: ${f}-> $HOME/.config/${CONFIG_DIR}"
  #echo "rm -rf $HOME/.config/$CONFIG_DIR"
  ln -sf $f $HOME/.config/${CONFIG_DIR}
done
