#!/bin/sh
# 세미콜론(:)은 기본적으로 true를 반환한다. 이 반복문을 빠져나가기 위해서는 강제 종료(^C)를 입력해야 한다.
while :
do
  echo "Please type something in (^C to quit)"
  read INPUT_STRING
  echo "you typed: $INPUT_STRING"
done

