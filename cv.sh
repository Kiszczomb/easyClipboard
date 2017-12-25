#!/bin/bash

if [ ! -d "$DIRECTORY" ]; then
  mkdir /clipboard
  chmod 777 /clipboard
fi

for FILE1 in "$@"
do
 mv /clipboard/$FILE1 $PWD
 rm /clipboard/$FILE1
done
