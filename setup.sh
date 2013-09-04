#!/bin/sh
#
# When you execute this script, create hard link at your homedir.
#
# Usage:
#   ./setup.sh
#

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
done;

