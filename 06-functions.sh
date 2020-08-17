#!/bin/bash

#variable holds data, Function holds commands, when you call function it execute all the commands declared in function.

# Declare function 

sample(){
    echo Hello World from Function
    echo a = $a
    b=20
}

# call the function 

# Main program
a=10
sample
echo b= $b

# Observations
#1.Functions are always before main programs
#2.Variables in Main program can be accessed in function & Vice-Versa
# 3. Variables from Main program can be overwriteen by function & Vice-Versa
