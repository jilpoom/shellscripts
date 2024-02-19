#!/bin/sh
# grep -i steve |cut -d: -f1
steves=`grep -i steve ./steve.txt| cut -d: -f1`
echo "All users with the word \"steve\" in their passwd"
echo "Entries are: "
# '\012'는 ASCII코드의 8진수의 줄바꾸기 문자를 나타낸다.
echo "$steves" | tr ' ' '\012'