#!/bin/bash 

# If we name to some data then that name is called a variable

# When it comes to data we have different types, 1. Numbers. 2. Floating values, 3. Characters, 4. Strings, 5. Booleans

a=10
b=xyz
c=true 
d=9.999999

# Shell by default does not support data types. Everything is a string.

# Access variable : ${a} or $a

echo $a
echo ${a}

# In some scenario we use {} 
echo ${a}000

DATE=2020-08-05 
echo Good Morning, Today date is ${DATE}

DATE1=$(date +%F)
echo Good Morning, Today date is ${DATE1}

## Executing a command and store that output in a variable is a called command substitution.
# syntax: VAR=$(commands) 

# Same way we can do arithematic expressions also, but with $(( expression ))

ADD=$((100+54))
echo $ADD

