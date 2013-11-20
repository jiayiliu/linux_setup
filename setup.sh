#!/bin/bash

## shell script for setup purpose
#  for first time usage on a new machine
#  !it will remove the old file!!



## platform specified setup
platform = `uname`
case "$platform" in
	Darwin ) # setup for Mac OS
	;;
	Linux ) # setup for Linux
	;;
esac
	
