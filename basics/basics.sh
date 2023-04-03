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
# read -p "Enter your name: " MYNAME
# echo "Hello $MYNAME, nice to meet you."

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
    touch "$FILE"
    if [ -e "$FILE" ]; then
        echo "Created test.txt file"
    fi
fi

# CASE STATEMENTS
# read -p "Are you over 18 years? Y/N" ANSWER
ANSWER="Yes"

case "$ANSWER" in
[yY] | [yY][eE][sS])
    echo "You are old enough to take a beer :)"
    ;;
[nN] | [nN][oO])
    echo "Sorry, you are too young to be here!"
    ;;
*)
    echo "Please enter y/yes or n/No"
    ;;
esac

# LOOPS

# for loops

NAMES="Benard Kelvin Alice Mark"

for NAME in $NAMES; do
    echo "Hello $NAME"
done

# for loop to rename files
FILES="file_01.txt file02.txt file03.txt"

for FILE in $FILES; do
    if [ -e "$FILE" ]; then
        echo "$FIL already exists"
    else
        touch "$FILE"
        echo "$FILE created"
    fi
done

echo $TEXT >>"new_file02.txt"

for FILE in $FILES; do
    echo "Renaming $FILE to new_$FILE"
    mv $FILE "new_$FILE"
done
ls

# write to file
TEXT="What is it?
Pypsum is a program written in the Python programming language that interfaces with lipsum.com (courtesy of James Wilson) to generate Lorem Ipsum text, useful for template designing when lots of mock-up text is needed.

Pypsum actually consists of two programs, pypsum.py and pypsum-gtk.py.
"

echo $TEXT >>"new_file_01.txt"

# WHILE LOOP
# Read through a file, line by line
LINE=1

while read -r CURRENT_LINE; do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done <"./new_file_01.txt"

# FUNCTIONS

sayHello() {
    echo "Helo World"
}

sayHello

# Func with parameters
# Positional parameters are used

greetings() {
    echo "Hello everyone, I am $1 and I am $2 years old."
}

greetings "Daniel" "45"
