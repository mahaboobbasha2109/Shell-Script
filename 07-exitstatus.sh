#!/bin/bash

# Exit status ranges from 0-255
# Success - 0
# 1-255 - failure, partial failure

#exit 10
# User is suggested to use values only from 0-125, Because beyond 125 system uses those numbers.

sample() {
  echo hello 
  echo first argument = $1
  return 20
  echo bye
}

sample abc
echo Exit status of Sample Function = $?
