#!/bin/sh
# 다음과 같이 변수를 선언하기 전에 사용한다면 빈 문자열("")을 반환한다.
echo "MYVAR is: $MYVAR"
MYVAR="Hi, There"
echo "MYVAR is: $MYVAR"
