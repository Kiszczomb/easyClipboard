#!/bin/bash

for FILE1 in "$@"
do
 mv /clipboard/$FILE1 $PWD
 rm /clipboard/$FILE1
done
