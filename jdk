#!/usr/bin/bash

################################################################################
# Utility to convert JDK version by chaninging the 'current' symlink to the 
# desired version of Java.  $JAVA_HOME environment variable must be pointing to 
# 'current' path for this script to work correctly.
# 
# usage: $0 [6|7|8|9]
# example: $0 8
#
# Author: Timothy Storm
################################################################################

# Vars
readonly JAVA_PATH="C:/Program Files/Java"
current=`readlink -f "$JAVA_PATH/current"`

declare -A JDK
JDK["6"]="jdk1.6.0_45"
JDK["7"]="jdk1.7.0_79"
JDK["8"]="jdk1.8.0_152"
JDK["9"]="jdk-9"

if [ "$#" -eq "0" ]; then
  echo "Change active JDK version (current -> `basename "$current"`)"
  echo "usage: `basename $0` [6|7|8|9]"
  for i in "${!JDK[@]}"; do
    echo "  $i = ${JDK[$i]}"
  done
else
  # change 'current' symlink to point to the desired jdk
  cd "$JAVA_PATH"
  ln -sfn "${JDK[$@]}" current
fi
