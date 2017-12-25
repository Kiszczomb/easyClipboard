#!/bin/bash

unameOut="$(uname -s)"
case ${unameOut} in
  Linux*)     machine=Linux;;
  Darwin*)    machine=Mac;;
  CYGWIN*)    machine=Cygwin;;
  MINGW*)     machine=MinGw;;
  *)          machine="UNKNOWN:${unameOut}"
esac
case ${machine} in
  Linux)
  ;;
  *)
  echo "Unsupported system. Linux only for now."
  exit
  ;;
esac



