#!/bin/bash

# We can not have HISTCONTROL set because commands starting with space would
# not be included in the history.
unset HISTCONTROL

shopt -s histappend
