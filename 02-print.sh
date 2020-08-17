#!/bin/bash

# echo command to print the input provided

echo Hello World
echo
echo Hello Universe

# Print Multiple lines

echo -e "Hello World\nHello Universe"

# When you are using \n to print new lines then quote the input, Also enable -e option.
# Color Codes
# Color         Code
################################
# Red         | 31
# Green       | 32
# Yellow      | 33
# Blue        | 34
# Magenta     | 35
# Cyna        | 36

# echo -e "\e[COLOR-CODEmMESSAGE"

echo -e "\e[31mHello"
echo -e "\e[32mHello"
echo -e "\e[33mHello"
echo -e "\e[34mHello"
echo -e "\e[35mHello"
echo -e "\e[36mHello"

# https://misc.flogisoft.com/bash/tip_colors_and_formatting

# Also very important thing we need to keep in mind is , When we enable a color we need to disable that 

echo This line should not print any color 

echo -e "\e[31mHello World\e[0m"
echo This line should not print any color 
