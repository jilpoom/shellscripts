#!/bin/sh
# 변수를 문자열 내부에서 활용하기 위해서는 `${}` 를 활용한다.
echo "What is your name?"
read USER_NAME
echo "Hello $USER_NAME"
echo "I will create you a file called ${USER_NAME}_file"
touch "${USER_NAME}_file"
