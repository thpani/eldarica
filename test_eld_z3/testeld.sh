#!/bin/zsh

for f (*.smt2) ; do
  echo $f
  gtimeout 15m time ./eld -abstract:off "$f"
  if [[ $? == 124 ]] ; then 
    echo "\ttimeout"
  fi
  echo
done
