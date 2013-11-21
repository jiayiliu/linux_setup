#!/bin/bash
# Jiayi Liu @ Nov 21, 2013

## shell script for setup purpose
#  for first time usage on a new machine
#  !it will remove the old file!!

## copy over dot files
cp dotfiles/bash_profile ~/.bash_profile
cp dotfiles/bashrc ~/.bashrc


## platform specified setup
platform = `uname`
case "$platform" in
	Darwin ) # setup for Mac OS
	;;
	Linux ) # setup for Linux
	;;
esac
	
