#!/bin/sh
# Test는 if, while문에서 자주 사용되며, 다음과 같은 방법으로도 사용 가능하다.
[ 0 -eq 0 ] && echo "[ 0 -eq 0 ] echo"
[ 0 -ne 0 ] && echo "[ 0 -ne 0 ] echo"

# 다음과 같이 삼항 연산자 (명령 ? true : false )와 같이 사용할 수 있다.
echo "파일, 숫자, 문자를 입력해주세요"
read X
[ $X -ne 0 ] && echo "X isn't zero" || echo "X is zero"
[ -f $X ] && echo "X is a file" || echo "X is not a file"
[ -n $X ] && echo "X is of non-zero length" || \
      echo "X is of zero length"