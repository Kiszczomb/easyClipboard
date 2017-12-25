#!/bin/bash

if [ ! -d "$DIRECTORY" ]; then
  mkdir /clipboard
  chmod 777 /clipboard
fi

for FILE1 in "$@"
do
 mv $FILE1 /clipboard
done
