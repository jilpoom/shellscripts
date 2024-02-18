#!/bin/sh

# 함수 내부에서 파라미터 값을 변경하기 위해서는 특수 변수를 직접 변경하지 않고, 함수의 파라미터에 변수를 넣어 함수 내부에서 변경한다.
myfunc()
{
  echo "\$1 is $1"
  echo "\$2 is $2"
  # cannot change $1 - we'd have to say:
  # 1="Goodbye Cruel"
  # which is not a valid syntax. However, we can
  # change $a:
  a="Goodbye Cruel"
}

### Main script starts here 

a=Hello
b=World
myfunc $a $b
echo "a is $a"
echo "b is $b"