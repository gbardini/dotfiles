#!/bin/bash

if setxkbmap -query | grep layout | grep us; then
	setxkbmap br
else
	setxkbmap us
fi
