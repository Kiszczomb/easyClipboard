#!/bin/bash

if [ ! -d "/clipboard" ]; then
  # Control will enter here if /clipboard doesn't exist.

  sudo mkdir /clipboard
  sudo chmod 777 /clipboard
  echo "Created open access clipboard folder in /"
fi

# on -c | --copy argument
for FILE1 in "$@"
do
 copy $FILE1 /clipboard
done

# on -x | --cut argument
for FILE1 in "$@"
do
 mv $FILE1 /clipboard
done

# on -p | --paste argument
for FILE1 in "$@"
do
 mv /clipboard/$FILE1 $PWD
 rm /clipboard/$FILE1
done
