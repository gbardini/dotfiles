#!/bin/bash

TESTE=`setxkbmap -print -verbose 10 | grep layout | awk -F ':' '{print $2}' | tr -s '[:space:]'`

if [[ `echo $TESTE` == "us" ]] ; then
  setxkbmap -layout br
else
  setxkbmap -layout us
fi
