#!/bin/bash

mode="$1"
shift

case $mode in
    -c|--copy)
      echo "Copy"
      for arg in "$@" ; do
        echo "$arg"
      done
    ;;
    -x|--cut)
      echo "Cut"
      for arg in "$@" ; do
        echo "$arg"
      done
    ;;
    -v|-p|--paste)
      echo "Paste"
      for arg in "$@" ; do
        echo "$arg"
      done
    ;;
    *)    # unknown option
    echo "unknown"
    ;;
esac



