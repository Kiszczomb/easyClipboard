#!/bin/bash

CLIPBOARD_DIR="/Clipboard"

# system detection
unameOut="$(uname -s)"
case "${unameOut}" in
  Linux*)     machine=Linux;;
  Darwin*)    machine=Mac;;
  CYGWIN*)    machine=Cygwin;;
  MINGW*)     machine=MinGw;;
  *)          machine="UNKNOWN:${unameOut}"
esac
case "${machine}" in
  Linux)
  ;;
  *)
  echo "Unsupported system. Linux only for now."
  exit
  ;;
esac

# check if /clipboard folder not exists
if [ ! -d "${CLIPBOARD_DIR}" ]; then
  sudo mkdir "${CLIPBOARD_DIR}"
  sudo chmod 777 "${CLIPBOARD_DIR}"
  echo "Created open access clipboard folder in /"
fi

# reading arguments

mode="$1" # first arg, mode 
shift # remove the first argument (mode) from the list

case "$mode" in
    -c|--copy)
      echo "Copy"
      for file in "$@" ; do
        cp "$file" "${CLIPBOARD_DIR}"
      done
    ;;
    -x|--cut)
      echo "Cut"
      for file in "$@" ; do
        mv "$file" "${CLIPBOARD_DIR}"
      done
    ;;
    -v|-p|--paste)
      echo "Paste"
      mv "${CLIPBOARD_DIR}"/* "$PWD"
    ;;
    *)    # unknown option
    echo "Unknown options"
    ;;
esac