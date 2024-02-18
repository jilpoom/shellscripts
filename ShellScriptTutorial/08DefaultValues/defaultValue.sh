#!/bin/sh
# Formatting 기능 없이, Default 값을 변수에 부여하는 방법
echo -en "What is your name [ `whoami` ] "
read myname
if [ -z "$myname" ]; then
  myname=`whoami`
fi
echo "Your name is : $myname"

# `:-` 으로 좀 더 간단하게 Default 값 부여
echo -en "What is your name [ `whoami` ] "
read myname
echo "Your name is : ${myname:-`whoami`}"

# `:=`로 변수 기본값 세팅하기
echo "Your name is : ${myname:=JJY}"