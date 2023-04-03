#! /usr/bin/bash

# print to console
echo 'My bash script'

# Variables
# - UPPERCASE by convention
# - No space btn the = sign
# - Numbers, letters and unserscore allowed

NAME="James"
echo "My name is $NAME."
# or
echo "My name is ${NAME}."

# USER-INPUTS
read -p "Enter your name: " MYNAME
echo "Hello $MYNAME, nice to meet you."

# IF STATEMENTS
if [ "$MYNAME" == "James" ]; then
    echo "Your name is James."
elif [ "$NAME" == "Daniel" ]; then
    echo "Your name is Daniel."
else
    echo "Your name isn't James or Daniel."
fi

#COMPARISONS
# val1 -eq val2 -> equal to
# val1 -ne val2 -> not equal
# val1 -lt val2 -> less than
#val1 -le val2 -> less than or equal to
# val1 -gt val2 -> greater than
# val1 -ge val2 -> greate or equal to

NUM1=3
NUM2=5

if [ "$NUM1" -lt "$NUM2" ]; then
    echo "$NUM1 is greater than $NUM2"
fi

# FILE CONDITIONS
# -d -> True if file is a directory
# -e -> True if file exists
# -f -> True id the provided string is a file
# -s -> True if the file has a non-zero size
# -u -> True if user id is set on a file
# -w -> True if file is writable
# -x -> True if the file is an executable

FILE="test.txt"

if [ -f "$FILE" ]; then
    echo "$FILE is a file"
else
    echo "$FILE isn't a file"
fi
