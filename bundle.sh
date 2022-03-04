#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

FROM_DIR="./dist"

if [ -z "$1" ] # check if empty
  then
    TO_DIR="./dist/git"
  else
    TO_DIR=$1
fi

mkdir -p $TO_DIR
cp $FROM_DIR/student/* $TO_DIR
unzip -o $FROM_DIR/autograder/*-autograder_*.zip "tests/*" -d $TO_DIR
