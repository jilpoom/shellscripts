#!/bin/sh
# 다음과 같은 구문을 통해 반복문을 실행할 수 있다.
echo "1부터 5까지 반복"
for i in 1 2 3 4 5
do
  echo "Looping ... number $i"
done

# 다음과 같이 다양한 자료형이 반복될 수 있다.
echo "다양한 자료형 반복"
for i in hello 1 * 2 goodbye 
do
  echo  "Looping ... i is set to $i"
done

