#!/bin/sh
# myfile.txt를 한 줄씩 읽어와, INPUT_TEXT의 값으로 활용하며, 각 분기마다 해당 언어를 알려주는 반복문
while read INPUT_TEXT
do
  case $INPUT_TEXT in
    hello) echo English ;;
    howdy) echo American ;;
    gday) echo Australian ;;
    bonjour) echo German ;;
    "guten tag") echo German ;;
    *) echo Unknown Language: $INPUT_TEXT
    ;;
  esac
done < myfile.txt
